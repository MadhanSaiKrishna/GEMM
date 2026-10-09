/* kernel.cpp -- tiled GEMM (M3: first composed version, no load/compute overlap yet).
 *
 *   C[M x N] = A[M x K] * B[K x N], row-major float32.
 *   CONTRACT (unchanged): extern "C" void gemm(A, B, C, M, K, N); ports gmem0/1/2.
 *   Assumes K % 16 == 0 (the graded K are 288 and 768) and K <= 768. M and N are arbitrary.
 *
 * THE IDEA, in one tile
 *   B tile  : K x NT floats kept on-chip (URAM), loaded once per NT-wide column tile.
 *   A tile  : RS rows x K floats in 16 BRAM banks, loaded with one 512-bit burst per tile.
 *   engine  : every cycle reads one wide B word (16 floats) and one k from each of RS rows
 *             and does RS x 16 multiply-adds into RS x 16 independent accumulators.
 *   C tile  : RS rows x NT floats written back row by row in bursts.
 * Why it is fast
 *   - 16 columns x RS rows of MACs per cycle (RS=8: 128 lanes, about 640 DSPs).
 *   - Each accumulator is revisited only every NT/16 cycles (16 for NT=256), longer than the
 *     8-cycle float add, so the add recurrence is hidden and the loop runs at II=1.
 *   - A tile is banked (k + row) mod 16: a 16-wide write beat and a one-k-from-every-row read
 *     both touch 16 different banks, so neither stalls the other.
 *   - Addresses are built as group*16 + lane so HLS can prove alignment and widen to 512 bits;
 *     B and C row loops are flattened with their beat loops so row requests overlap.
 * Tails: M not a multiple of RS (A rows zero-filled, only valid rows stored), N not a multiple
 * of NT (only valid columns move) and N not a multiple of 16 (element-exact paths).
 * Tune RS and NT with the two #define lines below (keep each #define on ONE line).
 */
#include <cstdint>
#ifndef __SYNTHESIS__
#include <cassert>
#endif

#ifndef GEMM_RS
#define GEMM_RS 24
#endif
#ifndef GEMM_NT
#define GEMM_NT 256    /* B-tile width in columns; NT/16 must be >= 8 (accumulator revisit distance) */
#endif

#define GEMM_STR_(x) #x
#define GEMM_STR(x) GEMM_STR_(x)
#pragma message("GEMM config: RS=" GEMM_STR(GEMM_RS) " NT=" GEMM_STR(GEMM_NT))

namespace cfg {
constexpr int RS = GEMM_RS;                 /* rows per tile                                    */
constexpr int W = 16;                       /* floats per 512-bit beat = columns per lane group  */
constexpr int NT = GEMM_NT;                 /* B-tile width                                     */
constexpr int NG = NT / W;                  /* column groups = accumulator revisit distance     */
constexpr int KMAX = 768;
constexpr int KW = KMAX / W;                /* 48 words per A row: a fixed stride, no multiplier */
constexpr int ceil_pow2(int x, int p = 1) { return p >= x ? p : ceil_pow2(x, p * 2); }
constexpr int P = ceil_pow2(RS > W ? RS : W);   /* A banks (also the skew modulus)             */
}  // namespace cfg

static_assert(cfg::NT % cfg::W == 0, "NT must be a multiple of 16");
static_assert(cfg::NG >= 8, "NT/16 below the 8-cycle float-add latency would force II > 1");
static_assert(cfg::RS <= cfg::P && cfg::P <= 32, "RS must be at most 32");

/* ---------------------------------------------------------------- A tile: skewed banks */
/* Element (row r, column k) lives in bank (k + r) mod P at address row_base(r) + k/16.
 *   write beat = row r, 16 consecutive k   -> 16 consecutive residues -> 16 different banks
 *   read       = one k, rows 0..RS-1       -> RS consecutive residues -> RS different banks */
static_assert(cfg::KW == 48, "row_base is hard-wired to a 48-word row stride (32 + 16)");
constexpr int row_base(int r) { return (r << 5) + (r << 4); }
constexpr int a_bank(int r, int k) { return (k + r) & (cfg::P - 1); }

#if __cplusplus >= 201402L
constexpr int popcount(uint32_t m) { int c = 0; for (; m; m &= m - 1) c++; return c; }
constexpr bool mapping_conflict_free() {
    for (int r = 0; r < cfg::RS; r++)
        for (int w = 0; w < cfg::KW; w++) {            /* every write beat hits 16 banks */
            uint32_t m = 0;
            for (int l = 0; l < cfg::W; l++) m |= 1u << a_bank(r, w * cfg::W + l);
            if (popcount(m) != cfg::W) return false;
        }
    for (int k = 0; k < cfg::KMAX; k++) {              /* every one-k read hits RS banks */
        uint32_t m = 0;
        for (int r = 0; r < cfg::RS; r++) m |= 1u << a_bank(r, k);
        if (popcount(m) != cfg::RS) return false;
    }
    return true;
}
static_assert(mapping_conflict_free(), "A-tile bank mapping has a bank conflict");
#endif

/* Every bank index below is a constant (the loop variable of a fully unrolled loop), so HLS sees
 * exactly one access per bank per cycle; the skew lives in the data permutation and the address. */
typedef float ABanks[cfg::P][cfg::RS * cfg::KW];

/* Scatter one 512-bit beat (row r, word w) into the banks: a rotation by r. */
inline void a_write_beat(ABanks buf, int r, int w, const float beat[cfg::W]) {
#pragma HLS INLINE
    const int addr = row_base(r) + w;
    for (int b = 0; b < cfg::P; b++) {
#pragma HLS UNROLL
        const int l = (b - r - w * cfg::W) & (cfg::P - 1);   /* beat lane that belongs in bank b */
        if (l < cfg::W) buf[b][addr] = beat[l];
    }
}

/* Gather A[i][k] for i = 0..RS-1: read every bank once, then permute the results. */
inline void a_read_k(const ABanks buf, int k, float a[cfg::RS]) {
#pragma HLS INLINE
    float v[cfg::P];
#pragma HLS ARRAY_PARTITION variable = v complete
    const int w = k >> 4;
    for (int b = 0; b < cfg::P; b++) {
#pragma HLS UNROLL
        const int i = (b - k) & (cfg::P - 1);                /* the row this bank serves at k */
        v[b] = (i < cfg::RS) ? buf[b][row_base(i) + w] : 0.0f;
    }
    for (int i = 0; i < cfg::RS; i++) {
#pragma HLS UNROLL
        a[i] = v[(k + i) & (cfg::P - 1)];
    }
}

/* -------------------------------------------------------------------------- the engine */
typedef float BTile[cfg::KMAX][cfg::NT];       /* B tile: K rows of NT floats                   */
typedef float Acc[cfg::RS][cfg::NG][cfg::W];   /* [row][column group][lane]: one RAM per lane   */

/* One A tile against one B tile: acc[r][jg][u] = sum over k of A[r][k] * B[k][jg*16 + u].
 * The k and jg loops flatten into ONE pipelined loop at II=1: each cycle is one (k, jg) pair. */
inline void core_engine(const ABanks Abuf, const BTile Bt, Acc acc, int K) {
#pragma HLS INLINE
initacc:
    for (int jg = 0; jg < cfg::NG; jg++) {
#pragma HLS PIPELINE II=1
        for (int r = 0; r < cfg::RS; r++) {
#pragma HLS UNROLL
            for (int u = 0; u < cfg::W; u++) {
#pragma HLS UNROLL
                acc[r][jg][u] = 0.0f;
            }
        }
    }
kdim:
    for (int k = 0; k < K; k++) {
#pragma HLS LOOP_TRIPCOUNT min=288 max=768
    cols:
        for (int jg = 0; jg < cfg::NG; jg++) {
#pragma HLS PIPELINE II=1
            float a[cfg::RS];
#pragma HLS ARRAY_PARTITION variable=a complete
            float b[cfg::W];
#pragma HLS ARRAY_PARTITION variable=b complete

            a_read_k(Abuf, k, a);                          /* one access per bank */
            for (int u = 0; u < cfg::W; u++) {
#pragma HLS UNROLL
                b[u] = Bt[k][jg * cfg::W + u];             /* one wide word       */
            }
            for (int r = 0; r < cfg::RS; r++) {
#pragma HLS UNROLL
                for (int u = 0; u < cfg::W; u++) {
#pragma HLS UNROLL
                    acc[r][jg][u] += a[r] * b[u];          /* RS x 16 MACs        */
                }
            }
        }
    }
}

/* ------------------------------------------------------------------------ the transfers */
/* A tile: rows row0 .. row0+rows_valid-1 are contiguous in HBM, so the whole tile is one run of
 * rows_valid*K/16 beats (one long burst). Rows past rows_valid are zero-filled. */
inline void load_A_tile(const float *A, ABanks buf, int row0, int rows_valid, int K) {
#pragma HLS INLINE
    const int K16 = K >> 4;
    const int G0 = row0 * K16;          /* group index of the first beat */
    const int nb = rows_valid * K16;    /* beats to load                 */
    int r = 0, w = 0;
loadA:
    for (int q = 0; q < nb; q++) {
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=18 max=1536
        float beat[cfg::W];
#pragma HLS ARRAY_PARTITION variable=beat complete
        for (int l = 0; l < cfg::W; l++) {
#pragma HLS UNROLL
            beat[l] = A[(G0 + q) * cfg::W + l];            /* group*16 + lane: provably aligned */
        }
        a_write_beat(buf, r, w, beat);
        if (w == K16 - 1) { w = 0; r++; } else { w++; }
    }
zeroA:
    for (int rr = rows_valid; rr < cfg::RS; rr++) {
        for (int ww = 0; ww < K16; ww++) {
#pragma HLS PIPELINE II=1
            float z[cfg::W];
#pragma HLS ARRAY_PARTITION variable=z complete
            for (int l = 0; l < cfg::W; l++) {
#pragma HLS UNROLL
                z[l] = 0.0f;
            }
            a_write_beat(buf, rr, ww, z);
        }
    }
}

/* B tile: columns jt .. jt+nvalid-1 of every row k < K. Each row segment is contiguous, rows are N
 * apart. Only the nvalid columns are read (cosim memory is exactly K*N floats). */
inline void load_B_tile(const float *B, BTile Bt, int jt, int nvalid, int K, int N) {
#pragma HLS INLINE
    if ((N & (cfg::W - 1)) == 0) {
        /* fast path: N is a multiple of 16, so every row segment is a run of whole beats */
        const int NU = N >> 4;                  /* beats per row of B                      */
        const int nvg = nvalid >> 4;            /* beats to load per row                   */
        int rowg = jt >> 4;                     /* group index of (row k, column jt); += NU per row */
    loadB_row:
        for (int k = 0; k < K; k++) {
#pragma HLS LOOP_TRIPCOUNT min=288 max=768
        loadB_grp:
            for (int jg = 0; jg < nvg; jg++) {
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=96
                float wd[cfg::W];
#pragma HLS ARRAY_PARTITION variable=wd complete
                for (int u = 0; u < cfg::W; u++) {
#pragma HLS UNROLL
                    wd[u] = B[(rowg + jg) * cfg::W + u];
                }
                for (int u = 0; u < cfg::W; u++) {
#pragma HLS UNROLL
                    Bt[k][jg * cfg::W + u] = wd[u];
                }
            }
            rowg += NU;
        }
    } else {
        /* tail path (N = 1, 40, ...): element-exact, one 16-float word per iteration, padded with zeros */
        const int ngc = (nvalid + cfg::W - 1) >> 4;
        int base = jt;                          /* element index of (row k, column jt) */
    loadB_row_tail:
        for (int k = 0; k < K; k++) {
#pragma HLS LOOP_FLATTEN off
        loadB_grp_tail:
            for (int jg = 0; jg < ngc; jg++) {
#pragma HLS PIPELINE
                float wd[cfg::W];
#pragma HLS ARRAY_PARTITION variable=wd complete
                for (int u = 0; u < cfg::W; u++) {
#pragma HLS UNROLL
                    const int c = jg * cfg::W + u;
                    wd[u] = (c < nvalid) ? B[base + c] : 0.0f;
                }
                for (int u = 0; u < cfg::W; u++) {
#pragma HLS UNROLL
                    Bt[k][jg * cfg::W + u] = wd[u];
                }
            }
            base += N;
        }
    }
}

/* C tile: tile row r lives in src[r][jg][u]. Each row segment is contiguous, rows are N apart.
 * Writes exactly rows_valid x nvalid floats and nothing else. */
inline void store_C_tile(float *C, const Acc src, int row0, int rows_valid, int jt, int nvalid, int N) {
#pragma HLS INLINE
    if ((N & (cfg::W - 1)) == 0) {
        const int NU = N >> 4;
        const int nvg = nvalid >> 4;
        int rowg = row0 * NU + (jt >> 4);       /* group index of (row row0, column jt) */
    storeC_row:
        for (int r = 0; r < rows_valid; r++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=32
        storeC_grp:
            for (int jg = 0; jg < nvg; jg++) {
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=96
                float v[cfg::W];
#pragma HLS ARRAY_PARTITION variable=v complete
                for (int u = 0; u < cfg::W; u++) {
#pragma HLS UNROLL
                    v[u] = src[r][jg][u];
                }
                for (int u = 0; u < cfg::W; u++) {
#pragma HLS UNROLL
                    C[(rowg + jg) * cfg::W + u] = v[u];
                }
            }
            rowg += NU;
        }
    } else {
        int base = row0 * N + jt;               /* element index of (row row0, column jt) */
    storeC_row_tail:
        for (int r = 0; r < rows_valid; r++) {
#pragma HLS LOOP_FLATTEN off
        storeC_c_tail:
            for (int c = 0; c < nvalid; c++) {
#pragma HLS PIPELINE II=1
                C[base + c] = src[r][c >> 4][c & (cfg::W - 1)];
            }
            base += N;
        }
    }
}

/* ----------------------------------------------------------------------- the top function */
extern "C" void gemm(const float *A, const float *B, float *C, int M, int K, int N) {
    // depth= only sizes cosim's memory models and must EQUAL COSIM_{A,B,C}_ELEMS in
    // kernel_tb.cpp (cosim copies exactly `depth` elements per call). No effect on hw.
#pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem0 depth=6144
#pragma HLS INTERFACE m_axi port=B offset=slave bundle=gmem1 depth=11520
#pragma HLS INTERFACE m_axi port=C offset=slave bundle=gmem2 depth=256
#pragma HLS INTERFACE s_axilite port=M
#pragma HLS INTERFACE s_axilite port=K
#pragma HLS INTERFACE s_axilite port=N
#pragma HLS INTERFACE s_axilite port=return

#ifndef __SYNTHESIS__
    assert(K % 16 == 0 && K <= cfg::KMAX);   /* the contract this kernel relies on */
#endif

    ABanks Abuf;                             /* A tile: P banks, one 32-bit word each */
#pragma HLS ARRAY_PARTITION variable=Abuf complete dim=1
#pragma HLS BIND_STORAGE variable=Abuf type=ram_2p impl=bram

    BTile Bt;                                /* B tile: one address returns 16 floats  */
#pragma HLS ARRAY_RESHAPE variable=Bt cyclic factor=16 dim=2
#pragma HLS BIND_STORAGE variable=Bt type=ram_2p impl=uram

    Acc acc;                                 /* accumulators: lane (r,u) owns its own RAM */
#pragma HLS ARRAY_PARTITION variable=acc complete dim=1
#pragma HLS ARRAY_PARTITION variable=acc complete dim=3
#pragma HLS BIND_STORAGE variable=acc type=ram_2p impl=lutram

colt:
    for (int jt = 0; jt < N; jt += cfg::NT) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=3
        const int nvalid = (N - jt < cfg::NT) ? (N - jt) : cfg::NT;
        load_B_tile(B, Bt, jt, nvalid, K, N);
    rowt:
        for (int row0 = 0; row0 < M; row0 += cfg::RS) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=4000
            const int rows_valid = (M - row0 < cfg::RS) ? (M - row0) : cfg::RS;
            load_A_tile(A, Abuf, row0, rows_valid, K);
            core_engine(Abuf, Bt, acc, K);
            store_C_tile(C, acc, row0, rows_valid, jt, nvalid, N);
        }
    }
}
