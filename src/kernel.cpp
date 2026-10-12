/* kernel.cpp -- tiled float32 GEMM, C[MxN] = A[MxK] * B[KxN], row-major. Contract: gemm(A, B, C, M, K, N), K % 16 == 0, K <= 768, M <= 32000.
 *   N = 1      : own streaming path (gemv), load / multiply-add overlapped with DATAFLOW.
 *   tiled paths: per row tile, two DATAFLOW stages: tile_load (A -> two-slot buffer) and tile_cs (compute, then store C).
 *   N = 17..32 : row-group interleave inside the same engine (G2 = 8 row groups x 2 column groups), no padded column groups.
 *   other N    : padded tiled engine (RS rows x 16 lanes per cycle, accumulators revisited every 16 cycles).
 * Knob: GEMM_RS = rows per tile. */
#ifndef __SYNTHESIS__
#include <cassert>
#endif
#include "hls_stream.h"
#include "hls_streamofblocks.h"

#ifndef GEMM_RS
#define GEMM_RS 16
#endif

namespace cfg {
constexpr int RS = GEMM_RS;
constexpr int W = 16;
constexpr int NT = 256;
constexpr int NG = NT / W;
constexpr int KMAX = 768;
constexpr int KW = KMAX / W;
constexpr int MMAX = 32000;
constexpr int R1 = 16;
constexpr int G2 = NG / 2;
constexpr int NR = RS * G2;
constexpr int ceil_pow2(int x, int p = 1) { return p >= x ? p : ceil_pow2(x, p * 2); }
constexpr int P = ceil_pow2(RS > W ? RS : W);
}

static_assert(cfg::RS <= cfg::P && cfg::P <= 32, "RS must be at most 32");

static_assert(cfg::KW == 48, "row_base is hard-wired to a 48-word row stride (32 + 16)");
// A tile: element (row r, k) sits in bank (k + r) mod P at word row_base(r) + k/16 (+ g*RS*KW for row group g).
// A beat write and a one-k-from-every-row read then each touch distinct banks.
constexpr int row_base(int r) { return (r << 5) + (r << 4); }

typedef float ABanks[cfg::P][cfg::G2 * cfg::RS * cfg::KW];

inline void a_write_beat(ABanks buf, int goff, int r, int w, const float beat[cfg::W]) {
#pragma HLS INLINE
    const int addr = goff + row_base(r) + w;
    for (int b = 0; b < cfg::P; b++) {
#pragma HLS UNROLL
        const int l = (b - r - w * cfg::W) & (cfg::P - 1);
        if (l < cfg::W) buf[b][addr] = beat[l];
    }
}

inline void a_read_k(const ABanks buf, int goff, int k, float a[cfg::RS]) {
#pragma HLS INLINE
    float v[cfg::P];
#pragma HLS ARRAY_PARTITION variable = v complete
    const int w = k >> 4;
    for (int b = 0; b < cfg::P; b++) {
#pragma HLS UNROLL
        const int i = (b - k) & (cfg::P - 1);
        v[b] = (i < cfg::RS) ? buf[b][goff + row_base(i) + w] : 0.0f;
    }
    for (int i = 0; i < cfg::RS; i++) {
#pragma HLS UNROLL
        a[i] = v[(k + i) & (cfg::P - 1)];
    }
}

typedef float BTile[cfg::KMAX][cfg::NT];
typedef float Acc[cfg::RS][cfg::NG][cfg::W];

// One engine for both modes, so the multipliers and adders exist once. Every k has NG = 16 slots t, each a different
// output per lane, so an accumulator is revisited every 16 cycles (> the 8-cycle float add).
//   padded mode  : slot t = column group t of row group 0.
//   N = 17..32   : slot t = (row group g = t / 2, column group jg = t % 2); only 2 column groups carry data, so G2 = 8
//                  row groups fill the other slots. Each output still sums k in order (bit-identical to the padded path).
inline void core_engine(const ABanks Abuf, const BTile Bt, Acc acc, int K, bool narrow) {
#pragma HLS INLINE
initacc:
    for (int t = 0; t < cfg::NG; t++) {
#pragma HLS PIPELINE II=1
        for (int r = 0; r < cfg::RS; r++) {
#pragma HLS UNROLL
            for (int u = 0; u < cfg::W; u++) {
#pragma HLS UNROLL
                acc[r][t][u] = 0.0f;
            }
        }
    }
kdim:
    for (int k = 0; k < K; k++) {
    cols:
        for (int t = 0; t < cfg::NG; t++) {
#pragma HLS PIPELINE II=1
            const int g = narrow ? (t >> 1) : 0;
            const int jg = narrow ? (t & 1) : t;
            float a[cfg::RS];
#pragma HLS ARRAY_PARTITION variable=a complete
            float b[cfg::W];
#pragma HLS ARRAY_PARTITION variable=b complete

            a_read_k(Abuf, g * (cfg::RS * cfg::KW), k, a);
            for (int u = 0; u < cfg::W; u++) {
#pragma HLS UNROLL
                b[u] = Bt[k][jg * cfg::W + u];
            }
            for (int r = 0; r < cfg::RS; r++) {
#pragma HLS UNROLL
                for (int u = 0; u < cfg::W; u++) {
#pragma HLS UNROLL
                    acc[r][t][u] += a[r] * b[u];
                }
            }
        }
    }
}

// A tile: rows are contiguous in HBM -> one burst; rows past rows_valid are zero-filled.
inline void load_A_tile(const float *A, ABanks buf, int row0, int rows_valid, int K) {
#pragma HLS INLINE
    const int K16 = K >> 4;
    const int G0 = row0 * K16;
    const int nb = rows_valid * K16;
    int r = 0, w = 0;
loadA:
    for (int q = 0; q < nb; q++) {
#pragma HLS PIPELINE II=1
        float beat[cfg::W];
#pragma HLS ARRAY_PARTITION variable=beat complete
        for (int l = 0; l < cfg::W; l++) {
#pragma HLS UNROLL
            beat[l] = A[(G0 + q) * cfg::W + l];
        }
        a_write_beat(buf, 0, r, w, beat);
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
            a_write_beat(buf, 0, rr, ww, z);
        }
    }
}

// B tile: columns jt..jt+nvalid-1 of every row (fast path when N % 16 == 0, element-exact tail otherwise).
inline void load_B_tile(const float *B, BTile Bt, int jt, int nvalid, int K, int N) {
#pragma HLS INLINE
    if ((N & (cfg::W - 1)) == 0) {

        const int NU = N >> 4;
        const int nvg = nvalid >> 4;
        int rowg = jt >> 4;
    loadB_row:
        for (int k = 0; k < K; k++) {
        loadB_grp:
            for (int jg = 0; jg < nvg; jg++) {
#pragma HLS PIPELINE II=1
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

        const int ngc = (nvalid + cfg::W - 1) >> 4;
        int base = jt;
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

// C tile: row r is in src[r][tbase + jg][u]; writes exactly rows_valid x nvalid floats.
inline void store_C_tile(float *C, const Acc src, int row0, int rows_valid, int jt, int nvalid, int N, int tbase) {
#pragma HLS INLINE
    if ((N & (cfg::W - 1)) == 0) {
        const int NU = N >> 4;
        const int nvg = nvalid >> 4;
        int rowg = row0 * NU + (jt >> 4);
    storeC_row:
        for (int r = 0; r < rows_valid; r++) {
        storeC_grp:
            for (int jg = 0; jg < nvg; jg++) {
#pragma HLS PIPELINE II=1
                float v[cfg::W];
#pragma HLS ARRAY_PARTITION variable=v complete
                for (int u = 0; u < cfg::W; u++) {
#pragma HLS UNROLL
                    v[u] = src[r][tbase + jg][u];
                }
                for (int u = 0; u < cfg::W; u++) {
#pragma HLS UNROLL
                    C[(rowg + jg) * cfg::W + u] = v[u];
                }
            }
            rowg += NU;
        }
    } else {
        int base = row0 * N + jt;
    storeC_row_tail:
        for (int r = 0; r < rows_valid; r++) {
#pragma HLS LOOP_FLATTEN off
        storeC_c_tail:
            for (int c = 0; c < nvalid; c++) {
#pragma HLS PIPELINE II=1
                C[base + c] = src[r][tbase + (c >> 4)][c & (cfg::W - 1)];
            }
            base += N;
        }
    }
}

// A tile of NR = G2*RS rows (G2 groups): one burst, beat q -> (group, row, word) in reading order; empty rows zero-filled.
inline void load_A_tile_n(const float *A, ABanks buf, int row0, int rows_valid, int K) {
#pragma HLS INLINE
    const int K16 = K >> 4;
    const int G0 = row0 * K16;
    const int nb = rows_valid * K16;
    int g = 0, r = 0, w = 0, goff = 0;
loadAn:
    for (int q = 0; q < nb; q++) {
#pragma HLS PIPELINE II=1
        float beat[cfg::W];
#pragma HLS ARRAY_PARTITION variable=beat complete
        for (int l = 0; l < cfg::W; l++) {
#pragma HLS UNROLL
            beat[l] = A[(G0 + q) * cfg::W + l];
        }
        a_write_beat(buf, goff, r, w, beat);
        if (w == K16 - 1) {
            w = 0;
            if (r == cfg::RS - 1) { r = 0; g++; goff += cfg::RS * cfg::KW; } else { r++; }
        } else {
            w++;
        }
    }
zeroAn:
    for (int idx = rows_valid; idx < cfg::NR; idx++) {
        const int gz = idx / cfg::RS;
        const int rz = idx - gz * cfg::RS;
        for (int ww = 0; ww < K16; ww++) {
#pragma HLS PIPELINE II=1
            float z[cfg::W];
#pragma HLS ARRAY_PARTITION variable=z complete
            for (int l = 0; l < cfg::W; l++) {
#pragma HLS UNROLL
                z[l] = 0.0f;
            }
            a_write_beat(buf, gz * (cfg::RS * cfg::KW), rz, ww, z);
        }
    }
}

// N = 1: three DATAFLOW stages overlap load and multiply-add.
//   readA1 (one flat burst over all of A) -> FIFO -> fillA1 (two-slot tile buffer) -> dot1 (16 lanes along k, rows interleaved).
struct Beat { float v[cfg::W]; };
typedef Beat ATile[cfg::KW * cfg::R1];
typedef hls::stream_of_blocks<ATile, 2> TileChan;

inline float sum16(const float p[cfg::W]) {
#pragma HLS INLINE
    float t[8];
#pragma HLS ARRAY_PARTITION variable = t complete
    for (int i = 0; i < 8; i++) {
#pragma HLS UNROLL
        t[i] = p[i] + p[i + 8];
    }
    for (int i = 0; i < 4; i++) {
#pragma HLS UNROLL
        t[i] = t[i] + t[i + 4];
    }
    t[0] = t[0] + t[2];
    t[1] = t[1] + t[3];
    return t[0] + t[1];
}

static void readA1(const float *A, hls::stream<Beat> &beats, int nbeats) {
loadA1:
    for (int g = 0; g < nbeats; g++) {
#pragma HLS PIPELINE II=1
        Beat bt;
        for (int l = 0; l < cfg::W; l++) {
#pragma HLS UNROLL
            bt.v[l] = A[g * cfg::W + l];
        }
        beats.write(bt);
    }
}

static void fillA1(hls::stream<Beat> &beats, TileChan &tiles, int M, int K16) {
    const int ntiles = (M + cfg::R1 - 1) / cfg::R1;
tiles1:
    for (int t = 0; t < ntiles; t++) {
        const int rows_valid = (M - t * cfg::R1 < cfg::R1) ? (M - t * cfg::R1) : cfg::R1;
        const int nvalid = rows_valid * K16;
        hls::write_lock<ATile> blk(tiles);
        int r = 0, b = 0;
    fill1:
        for (int j = 0; j < cfg::R1 * K16; j++) {
#pragma HLS PIPELINE II=1
            Beat bt;
            if (j < nvalid) {
                bt = beats.read();
            } else {
                for (int l = 0; l < cfg::W; l++) {
#pragma HLS UNROLL
                    bt.v[l] = 0.0f;
                }
            }
            blk[(b << 4) + r] = bt;
            if (b == K16 - 1) { b = 0; r++; } else { b++; }
        }
    }
}

static void dot1(TileChan &tiles, const float x[cfg::KW][cfg::W], float yb[cfg::MMAX / cfg::W][cfg::W],
                 int M, int K16) {
#pragma HLS ARRAY_RESHAPE variable = x complete dim = 2
#pragma HLS ARRAY_RESHAPE variable = yb complete dim = 2
    const int ntiles = (M + cfg::R1 - 1) / cfg::R1;
    float acc[cfg::R1];
#pragma HLS ARRAY_PARTITION variable = acc complete
rows1:
    for (int t = 0; t < ntiles; t++) {
        hls::read_lock<ATile> blk(tiles);
    dotb:
        for (int bb = 0; bb < K16; bb++) {
        rows16:
            for (int rr = 0; rr < cfg::R1; rr++) {
#pragma HLS PIPELINE II=1
                const Beat a = blk[(bb << 4) + rr];
                float p[cfg::W];
#pragma HLS ARRAY_PARTITION variable = p complete
                for (int l = 0; l < cfg::W; l++) {
#pragma HLS UNROLL
                    p[l] = a.v[l] * x[bb][l];
                }
                const float s = sum16(p);
                acc[rr] = (bb == 0) ? s : acc[rr] + s;
            }
        }
        for (int l = 0; l < cfg::W; l++) {
#pragma HLS UNROLL
            yb[t][l] = acc[l];
        }
    }
}

static void gv_run(const float *A, const float x[cfg::KW][cfg::W], float yb[cfg::MMAX / cfg::W][cfg::W],
                   int M, int K16) {
#pragma HLS DATAFLOW
    hls::stream<Beat> beats("beats");
#pragma HLS STREAM variable = beats depth = 128
    TileChan tiles;
    readA1(A, beats, M * K16);                     // stage
    fillA1(beats, tiles, M, K16);                  // stage
    dot1(tiles, x, yb, M, K16);                    // stage
}

inline void gemv(const float *A, const float *B, float *C, int M, int K) {
#pragma HLS INLINE
    const int K16 = K >> 4;

    float x[cfg::KW][cfg::W];
#pragma HLS ARRAY_RESHAPE variable = x complete dim = 2
    float yb[cfg::MMAX / cfg::W][cfg::W];
#pragma HLS ARRAY_RESHAPE variable = yb complete dim = 2
#pragma HLS BIND_STORAGE variable = yb type = ram_2p impl = uram

loadX:
    for (int w = 0; w < K16; w++) {
#pragma HLS PIPELINE II=1
        for (int l = 0; l < cfg::W; l++) {
#pragma HLS UNROLL
            x[w][l] = B[w * cfg::W + l];
        }
    }

    gv_run(A, x, yb, M, K16);

    const int ng = M >> 4;
storeY:
    for (int g = 0; g < ng; g++) {
#pragma HLS PIPELINE II=1
        for (int l = 0; l < cfg::W; l++) {
#pragma HLS UNROLL
            C[g * cfg::W + l] = yb[g][l];
        }
    }
storeY_tail:
    for (int i = 0; i < (M & (cfg::W - 1)); i++) {
#pragma HLS PIPELINE II=1
        C[ng * cfg::W + i] = yb[ng][i];
    }
}

// One row tile as two stages. gemm() runs them inside a DATAFLOW loop, so the next tile's A loads (into the other half
// of a two-slot buffer) while this tile computes and stores. The accumulators live inside tile_cs only (one copy, not a
// channel). narrow = the N = 17..32 row-group mode.
static void tile_load(const float *A, ABanks abuf, int row0, int M, int K, bool narrow) {
#pragma HLS INLINE off
    if (narrow) {
        load_A_tile_n(A, abuf, row0, (M - row0 < cfg::NR) ? (M - row0) : cfg::NR, K);
    } else {
        load_A_tile(A, abuf, row0, (M - row0 < cfg::RS) ? (M - row0) : cfg::RS, K);
    }
}

inline void tile_compute(const ABanks abuf, const BTile Bt, Acc acc, int K, bool narrow) {
#pragma HLS INLINE
    core_engine(abuf, Bt, acc, K, narrow);
}

inline void tile_store(float *C, const Acc acc, int row0, int M, int jt, int nvalid, int N, bool narrow) {
#pragma HLS INLINE
    // One call site of store_C_tile for both modes: G2 row groups for N = 17..32 (jt = 0, nvalid = N there), one group otherwise.
    const int rows_tile = (M - row0 < (narrow ? cfg::NR : cfg::RS)) ? (M - row0) : (narrow ? cfg::NR : cfg::RS);
    const int ngroups = narrow ? cfg::G2 : 1;
storeg:
    for (int g = 0; g < ngroups; g++) {
        const int rows_g = rows_tile - g * cfg::RS;
        if (rows_g > 0) {
            store_C_tile(C, acc, row0 + g * cfg::RS, (rows_g < cfg::RS) ? rows_g : cfg::RS, jt, nvalid, N, 2 * g);
        }
    }
}

static void tile_cs(const ABanks abuf, const BTile Bt, float *C, int row0, int M, int K, int jt, int nvalid, int N,
                    bool narrow) {
#pragma HLS INLINE off
    Acc acc;
#pragma HLS ARRAY_PARTITION variable=acc complete dim=1
#pragma HLS ARRAY_PARTITION variable=acc complete dim=3
#pragma HLS BIND_STORAGE variable=acc type=ram_2p impl=lutram
    tile_compute(abuf, Bt, acc, K, narrow);
    tile_store(C, acc, row0, M, jt, nvalid, N, narrow);
}

// depth= only sizes cosim memory and must equal COSIM_{A,B,C}_ELEMS in kernel_tb.cpp.
extern "C" void gemm(const float *A, const float *B, float *C, int M, int K, int N) {

#pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem0 depth=6144
#pragma HLS INTERFACE m_axi port=B offset=slave bundle=gmem1 depth=11520
#pragma HLS INTERFACE m_axi port=C offset=slave bundle=gmem2 depth=256
#pragma HLS INTERFACE s_axilite port=M
#pragma HLS INTERFACE s_axilite port=K
#pragma HLS INTERFACE s_axilite port=N
#pragma HLS INTERFACE s_axilite port=return

#ifndef __SYNTHESIS__
    assert(K % 16 == 0 && K <= cfg::KMAX);
#endif

    // N = 1: streaming path
    if (N == 1) {
        gemv(A, B, C, M, K);
        return;
    }

    BTile Bt;
#pragma HLS ARRAY_RESHAPE variable=Bt cyclic factor=16 dim=2
#pragma HLS BIND_STORAGE variable=Bt type=ram_2p impl=uram

    // N = 17..32 uses the row-group mode (one column tile, NR rows per tile); everything else the padded engine.
    const bool narrow = (N > cfg::W && N <= 2 * cfg::W);
    const int rstep = narrow ? cfg::NR : cfg::RS;
colt:
    for (int jt = 0; jt < N; jt += cfg::NT) {
        const int nvalid = (N - jt < cfg::NT) ? (N - jt) : cfg::NT;
        load_B_tile(B, Bt, jt, nvalid, K, N);
    rowt:
        for (int row0 = 0; row0 < M; row0 += rstep) {
#pragma HLS DATAFLOW
            ABanks abuf;
#pragma HLS ARRAY_PARTITION variable=abuf complete dim=1
#pragma HLS BIND_STORAGE variable=abuf type=ram_2p impl=bram
            tile_load(A, abuf, row0, M, K, narrow);
            tile_cs(abuf, Bt, C, row0, M, K, jt, nvalid, N, narrow);
        }
    }
}