/* kernel.cpp — M0 scaffold + M1 compute-core experiment. SINGLE FILE: nothing else in the project changes.
 *
 * HARDWARE CONTRACT (untouched): extern "C" void gemm(A, B, C, M, K, N), ports gmem0/1/2, s_axilite.
 *
 * BUILD MODES (the knobs are the #define lines below):
 *   default      M3: the composed tiled kernel (A-tile load, B-tile load, RSxU engine, C-tile store), no overlap.
 *                GEMM_M3_TILED=0 gives back the shipped placeholder datapath.
 *   GEMM_M1_CORE=1   M1 EXPERIMENT: the synthesized gemm() is the RSxU tile engine on on-chip arrays.
 *   GEMM_M2_XFER=n   M2 EXPERIMENT: the synthesized gemm() runs ONLY the HBM transfers
 *                    (1 = A-tile load, 2 = B-tile load, 3 = C-tile store, 4 = all three).
 * In an experiment mode only the *synthesized* gemm() changes; host csim still runs the default kernel, so
 * `make csim` keeps passing. csynth is the point. cosim is used for TIMING ONLY (the testbench compares
 * against a real GEMM, so it reports FAIL by design). Never run `./slurm.sh hw` or `make submit` in an
 * experiment mode.
 *
 * M1 gate (read gemm_csynth.rpt): achieved II = 1 on the flattened kdim..cols loop, DSP = 5*RS*U,
 * no timing violation at 3.33 ns. The csynth log says WHY if II > 1: 200-880 data hazard (carried
 * dependence on acc), 200-885 structural (limited memory ports, names the memory).
 *
 * Host check without Vitis and without touching the project:
 *   g++ -std=c++14 -O2 -w -DGEMM_HOST_SELFTEST src/kernel.cpp -o /tmp/st && /tmp/st
 */
#include <cstdint>
#ifndef __SYNTHESIS__
#include <cstdio>
#endif

/* ============================================================ USER KNOBS (edit these lines) ==== */
#ifndef GEMM_M3_TILED
#define GEMM_M3_TILED 1        /* 1 = composed tiled kernel (M3, default) | 0 = the shipped placeholder datapath */
#endif
#ifndef GEMM_M1_CORE
#define GEMM_M1_CORE 0         /* 0 = placeholder datapath (safe) | 1 = M1 compute-core experiment   */
#endif
#ifndef GEMM_RS
#define GEMM_RS 8              /* rows computed in space (A scalars read per cycle)                  */
#endif
#ifndef GEMM_U
#define GEMM_U 16              /* columns per lane group = floats per B word (8, 16 or 32)           */
#endif
#ifndef GEMM_NT
#define GEMM_NT 256            /* B tile width                                                       */
#endif
#ifndef GEMM_RT
#define GEMM_RT 1              /* extra rows interleaved in time (raises the revisit distance)       */
#endif
#ifndef GEMM_ACC_MODE
#define GEMM_ACC_MODE 0        /* M1: 0 = one small LUTRAM per lane | 1 = all accumulators in regs   */
#endif
#ifndef GEMM_B_URAM
#define GEMM_B_URAM 1          /* M1: 1 = B tile in URAM | 0 = BRAM                                  */
#endif
#ifndef GEMM_M2_XFER
#define GEMM_M2_XFER 0         /* 0 = off | 1 = A-tile load | 2 = B-tile load | 3 = C-tile store | 4 = all */
#endif
#ifndef GEMM_M2_SHAPE
#define GEMM_M2_SHAPE 1        /* how a load fetches its 16 floats: 0 plain index | 1 group-aligned index | 2 ap_uint<512> view */
#endif
/* GEMM_M2_FORCE_FAST (B/C experiments only, so the tiny cosim shapes reach the FAST path):
 *   0 = off, real N | 1 = constant N=32 (HLS sees a constant, so flattening looks easier than it will be)
 *   2 = N is 32 at run time but HLS cannot know it (derived from M, always < 32 in cosim)
 *   3 = N is 256 = one full NT row (16 beats per row), same opacity, Kb = 36/45/36 rows
 * Keep every #define on ONE line: the sweep helper rewrites a whole line with sed. */
#ifndef GEMM_M2_FORCE_FAST
#define GEMM_M2_FORCE_FAST 0   /* 0 off | 1 constant N=32 | 2 opaque N=32 | 3 opaque N=256 (see above) */
#endif
#ifndef GEMM_M2_SLOW
#define GEMM_M2_SLOW 1         /* 1 = keep the tail/slow paths (needed for correctness) | 0 = fast path only */
#endif
/* GEMM_B_FLATTEN / GEMM_C_FLATTEN (row loop of the B load / C store, measured in cosim with run-time N):
 *   0 = row loop kept separate: every row pays the full memory latency (B: +79 cycles/row, C: +78 cycles/row)
 *   1 = row loop flattened with the beat loop: row requests overlap (B: +0.3 cycles/row)
 * (A padded constant-trip variant was tried and rejected: HLS dropped the port to 32 bits at II=16.) */
#ifndef GEMM_B_FLATTEN
#define GEMM_B_FLATTEN 1       /* 0 separate rows | 1 flattened (default, measured) */
#endif
#ifndef GEMM_C_FLATTEN
#define GEMM_C_FLATTEN 1       /* 0 separate rows | 1 flattened (default) */
#endif
#ifndef GEMM_ALLOW_SHORT_D
#define GEMM_ALLOW_SHORT_D 0   /* 1 = allow D < 8 on purpose, to measure the recurrence in csynth    */
#endif
#ifndef GEMM_STATIC_PROOF
#define GEMM_STATIC_PROOF 1    /* set 0 if your compiler rejects the C++14 constexpr proofs          */
#endif
/* ============================================================================================== */

#if GEMM_M2_SHAPE == 2
#include <ap_int.h>
#endif

#define GEMM_STR_(x) #x
#define GEMM_STR(x) GEMM_STR_(x)
#pragma message("GEMM config: M3_TILED=" GEMM_STR(GEMM_M3_TILED) " M1_CORE=" GEMM_STR(GEMM_M1_CORE) " RS=" GEMM_STR(GEMM_RS) " U=" GEMM_STR(GEMM_U) " NT=" GEMM_STR(GEMM_NT) " RT=" GEMM_STR(GEMM_RT) " ACC_MODE=" GEMM_STR(GEMM_ACC_MODE) " B_URAM=" GEMM_STR(GEMM_B_URAM))
#if GEMM_M2_XFER
#pragma message("GEMM_M2_XFER=" GEMM_STR(GEMM_M2_XFER) " SHAPE=" GEMM_STR(GEMM_M2_SHAPE) " FORCE_FAST=" GEMM_STR(GEMM_M2_FORCE_FAST) " SLOW=" GEMM_STR(GEMM_M2_SLOW) " B_FLATTEN=" GEMM_STR(GEMM_B_FLATTEN) " C_FLATTEN=" GEMM_STR(GEMM_C_FLATTEN) ": synthesized top is a TRANSFER experiment, NOT a GEMM. csynth + cosim timing only; do not hw or submit.")
#endif
#if GEMM_M1_CORE
#pragma message("GEMM_M1_CORE=1: synthesized top is the compute-core experiment, NOT a GEMM. csynth only; do not cosim, hw or submit.")
#endif
#if (GEMM_RS * GEMM_U * 5) > 1500
#pragma message("warning: DSP estimate above ~1500 (half an SLR); check routing and AUTO-FREQ-SCALING")
#endif
#if (768 % GEMM_NT) != 0
#pragma message("warning: NT does not divide 768, so the square case has idle lanes in its last column tile")
#endif

/* ---------------------------------------------------------------- sizing worksheet as constants */
namespace cfg {
constexpr int RS = GEMM_RS, U = GEMM_U, NT = GEMM_NT, RT = GEMM_RT;
constexpr int BEAT = 16;                       /* floats per 512-bit beat                  */
constexpr int KMAX = 768;
constexpr int KW_MAX = KMAX / BEAT;            /* 48 words per A row; fixed row stride     */
constexpr int TILE_ROWS = RS * RT;             /* rows held in one A tile                  */
constexpr int ADD_LAT = 8;                     /* README: float add recurrence, II=8       */

constexpr int ceil_pow2(int x, int p = 1) { return p >= x ? p : ceil_pow2(x, p * 2); }
constexpr int P = ceil_pow2(RS > BEAT ? RS : BEAT);   /* number of A banks (skew modulus)  */

constexpr int LANES = RS * U;
constexpr int DSP_EST = 5 * LANES;             /* float MAC ~ 5 DSP                        */
constexpr int NG = NT / U;                     /* column groups per tile                   */
constexpr int LOGU = (U == 8) ? 3 : (U == 16) ? 4 : 5;   /* log2(U): group index <-> element index  */
constexpr int D = RT * NG;                     /* accumulator revisit distance (= RT*NT/U) */
constexpr int B_TILE_BYTES = 4 * KMAX * NT;
constexpr int A_PASSES_SQUARE = (768 + NT - 1) / NT;
constexpr int COMPUTE_CYC_PER_TILE = KMAX * D; /* K * R_t * N_t / U at K = 768             */
}  // namespace cfg

static_assert(cfg::NT % cfg::U == 0, "NT must be a multiple of U");
static_assert(cfg::U == 8 || cfg::U == 16 || cfg::U == 32, "U must be 8, 16 or 32 (pragma factors are literals)");
static_assert(cfg::NG <= 256, "fill index packing assumes NG <= 256");
static_assert(GEMM_M2_XFER >= 0 && GEMM_M2_XFER <= 4, "GEMM_M2_XFER must be 0..4");
static_assert(GEMM_M2_FORCE_FAST >= 0 && GEMM_M2_FORCE_FAST <= 3, "GEMM_M2_FORCE_FAST must be 0..3");
static_assert(GEMM_B_FLATTEN >= 0 && GEMM_B_FLATTEN <= 1, "GEMM_B_FLATTEN must be 0 or 1");
static_assert(GEMM_C_FLATTEN >= 0 && GEMM_C_FLATTEN <= 1, "GEMM_C_FLATTEN must be 0 or 1");
static_assert(GEMM_M2_SHAPE >= 0 && GEMM_M2_SHAPE <= 2, "GEMM_M2_SHAPE must be 0, 1 or 2");
static_assert(GEMM_M2_SHAPE != 2 || GEMM_U == 16, "shape 2 views the port as 512 bits, so U must be 16");
static_assert(!(GEMM_M1_CORE && GEMM_M2_XFER), "pick one experiment mode: GEMM_M1_CORE or GEMM_M2_XFER");
static_assert(!GEMM_M3_TILED || GEMM_M2_SLOW || GEMM_M1_CORE || GEMM_M2_XFER, "the composed kernel needs the tail paths (GEMM_M2_SLOW=1)");
#if !GEMM_ALLOW_SHORT_D
static_assert(cfg::D >= cfg::ADD_LAT, "revisit distance RT*NT/U below the float-add latency: II > 1");
#endif
static_assert(cfg::KMAX % cfg::BEAT == 0, "K max must be a whole number of beats");
static_assert(cfg::RS <= cfg::P, "need at least RS banks so one-k reads hit distinct banks");
static_assert(cfg::P <= 32, "bank masks below use 32 bits; extend them if you go past 32 rows");

/* ------------------------------------------------------- A-tile skewed mapping (M0 solution) */
/* Element (row r, column k) of the A tile lives in bank a_bank at address a_addr.
 *   write: one beat = row r, 16 consecutive k  -> 16 consecutive residues mod P -> 16 distinct banks
 *   read : one k, rows t*RS .. t*RS+RS-1       -> RS consecutive residues mod P -> RS distinct banks */
static_assert(cfg::KW_MAX == 48, "row_base below is hard-wired to a 48-word row stride (32 + 16)");
constexpr int row_base(int r) { return (r << 5) + (r << 4); }   /* r * 48 without a multiplier */
constexpr int a_bank(int r, int k) { return (k + r) & (cfg::P - 1); }
constexpr int a_addr(int r, int k) { return row_base(r) + (k >> 4); }

#if GEMM_STATIC_PROOF && (__cplusplus >= 201402L)
namespace proof {
constexpr int popcount(uint32_t m) { int c = 0; for (; m; m &= m - 1) c++; return c; }

constexpr bool writes_conflict_free() {
    for (int r = 0; r < cfg::TILE_ROWS; r++)
        for (int w = 0; w < cfg::KW_MAX; w++) {
            uint32_t m = 0;
            for (int l = 0; l < cfg::BEAT; l++) m |= 1u << a_bank(r, w * cfg::BEAT + l);
            if (popcount(m) != cfg::BEAT) return false;
        }
    return true;
}
constexpr bool reads_conflict_free() {
    for (int k = 0; k < cfg::KMAX; k++)
        for (int t = 0; t < cfg::RT; t++) {
            uint32_t m = 0;
            for (int i = 0; i < cfg::RS; i++) m |= 1u << a_bank(t * cfg::RS + i, k);
            if (popcount(m) != cfg::RS) return false;
        }
    return true;
}
/* Within a row, (bank, word) must be injective; rows are separated by the row_base offset. */
constexpr bool addresses_unique() {
    for (int r = 0; r < cfg::TILE_ROWS; r++) {
        bool seen[cfg::P * cfg::KW_MAX] = {};
        for (int k = 0; k < cfg::KMAX; k++) {
            const int idx = a_bank(r, k) * cfg::KW_MAX + (k >> 4);
            if (seen[idx]) return false;
            seen[idx] = true;
            if (a_addr(r, k) >= cfg::TILE_ROWS * cfg::KW_MAX) return false;
        }
    }
    return true;
}
}  // namespace proof
static_assert(proof::writes_conflict_free(), "A-tile write beat hits a bank twice");
static_assert(proof::reads_conflict_free(),  "A-tile one-k read hits a bank twice");
static_assert(proof::addresses_unique(),     "A-tile mapping is not injective");
#endif

/* ---------------------------------------- helpers with CONSTANT bank indices (used by M1, M2) */
/* HLS reasons about ports statically. A variable bank index looks like "any bank" and is scheduled
 * as the worst case (limited memory ports). Here every bank index is the variable of a fully
 * unrolled loop, so each bank sees exactly one access; the skew lives in the data permutation and
 * the address. The buffer's owner must partition the bank dimension (see gemm below). */
typedef float ABanks[cfg::P][cfg::TILE_ROWS * cfg::KW_MAX];

/* Scatter one 512-bit beat (row r, word w) into the banks: a rotation by r (plus 16*w when P = 32). */
inline void a_write_beat(ABanks buf, int r, int w, const float beat[cfg::BEAT]) {
#pragma HLS INLINE
    const int addr = row_base(r) + w;
    for (int b = 0; b < cfg::P; b++) {
#pragma HLS UNROLL
        const int l = (b - r - w * cfg::BEAT) & (cfg::P - 1);   /* beat lane that belongs in bank b */
        if (l < cfg::BEAT) buf[b][addr] = beat[l];
    }
}

/* Gather A[t*RS + i][k] for i = 0..RS-1 (time slot t of the RT interleaved row groups). */
inline void a_read_k(const ABanks buf, int k, int t, float a[cfg::RS]) {
#pragma HLS INLINE
    float v[cfg::P];
#pragma HLS ARRAY_PARTITION variable = v complete
    const int w = k >> 4;
    for (int b = 0; b < cfg::P; b++) {
#pragma HLS UNROLL
        const int i = (b - k - t * cfg::RS) & (cfg::P - 1);       /* row (within slot) this bank serves */
        v[b] = (i < cfg::RS) ? buf[b][row_base(t * cfg::RS + i) + w] : 0.0f;
    }
    for (int i = 0; i < cfg::RS; i++) {
#pragma HLS UNROLL
        a[i] = v[(k + t * cfg::RS + i) & (cfg::P - 1)];
    }
}

/* ================================================================== M1: the compute core ==== */
typedef float BTile[cfg::KMAX][cfg::NT];            /* B tile: K rows of NT floats          */
typedef float Acc[cfg::RS][cfg::D][cfg::U];         /* [row][revisit slot tj][column lane]  */

static inline uint32_t f2u(float f) { union { float f; uint32_t u; } x; x.f = f; return x.u; }
static inline float u2f(uint32_t u) { union { float f; uint32_t u; } x; x.u = u; return x.f; }
/* Well-behaved test float in [1,2): fixed exponent, mantissa from the hash. Pure logic, no float op. */
static inline float mkf(uint32_t x) { return u2f(0x3F800000u | (x & 0x007FFFFFu)); }

/* One A tile (TILE_ROWS x K) against one B tile (K x NT):
 *   for k: for t < RT: for jg < NG:                        (ONE flattened pipeline, II=1)
 *       a[r]  = A[t*RS + r][k]          16-bank skewed read, one access per bank
 *       b[u]  = Bt[k][jg*U + u]         ONE wide word (reshape)
 *       acc[r][t*NG+jg][u] += a[r]*b[u] RS*U MACs; each accumulator is revisited every D cycles
 * INLINE: the arrays belong to the caller, which owns their partition/bind pragmas. */
inline void core_engine(const ABanks Abuf, const BTile Bt, Acc acc, int K) {
#pragma HLS INLINE

initacc:
    for (int tj = 0; tj < cfg::D; tj++) {
#pragma HLS PIPELINE II=1
        for (int r = 0; r < cfg::RS; r++) {
#pragma HLS UNROLL
            for (int u = 0; u < cfg::U; u++) {
#pragma HLS UNROLL
                acc[r][tj][u] = 0.0f;
            }
        }
    }

    /* Semi-perfect nest: only the innermost loop has a body, inner bounds are constants, only K is a
     * runtime value. HLS should flatten kdim/rt/cols into ONE pipelined loop (look for 203-541
     * "Flattening a loop nest" in the log) so fill/drain is paid once per tile, not once per k. */
kdim:
    for (int k = 0; k < K; k++) {
#pragma HLS LOOP_TRIPCOUNT min=288 max=768
    rt:
        for (int t = 0; t < cfg::RT; t++) {
        cols:
            for (int jg = 0; jg < cfg::NG; jg++) {
#pragma HLS PIPELINE II=1
                float a[cfg::RS];
#pragma HLS ARRAY_PARTITION variable=a complete
                float b[cfg::U];
#pragma HLS ARRAY_PARTITION variable=b complete

                a_read_k(Abuf, k, t, a);                         /* one access per bank        */
                for (int u = 0; u < cfg::U; u++) {
#pragma HLS UNROLL
                    b[u] = Bt[k][jg * cfg::U + u];               /* one wide word              */
                }
                const int tj = t * cfg::NG + jg;                 /* revisit slot               */
                for (int r = 0; r < cfg::RS; r++) {
#pragma HLS UNROLL
                    for (int u = 0; u < cfg::U; u++) {
#pragma HLS UNROLL
                        acc[r][tj][u] += a[r] * b[u];            /* the RS*U MACs              */
                    }
                }
            }
        }
    }
}

/* The M1 experiment body. Fills the on-chip arrays from `seed` (so nothing is constant-folded), runs
 * the engine, folds every accumulator bit into one word with integer XOR (so nothing is dead-code
 * eliminated) and writes it to C[0]. Fill and fold use no multiplier and no float operator, so every
 * DSP in the report belongs to the engine. */
inline void m1_core_run(int K, uint32_t seed, float *C) {
#pragma HLS INLINE
    /* A tile: P banks, one 32-bit word each; the bank index is constant everywhere it is used. */
    ABanks Abuf;
#pragma HLS ARRAY_PARTITION variable=Abuf complete dim=1
#pragma HLS BIND_STORAGE variable=Abuf type=ram_2p impl=bram

    /* B tile: reshaped so one address returns U consecutive floats (L5 s.10-12). */
    BTile Bt;
#if GEMM_U == 8
#pragma HLS ARRAY_RESHAPE variable=Bt cyclic factor=8 dim=2
#elif GEMM_U == 16
#pragma HLS ARRAY_RESHAPE variable=Bt cyclic factor=16 dim=2
#else
#pragma HLS ARRAY_RESHAPE variable=Bt cyclic factor=32 dim=2
#endif
#if GEMM_B_URAM
#pragma HLS BIND_STORAGE variable=Bt type=ram_2p impl=uram
#else
#pragma HLS BIND_STORAGE variable=Bt type=ram_2p impl=bram
#endif

    /* Accumulators: lane (r,u) owns a memory of D entries -> 1R+1W per lane per cycle. */
    Acc acc;
#if GEMM_ACC_MODE == 0
#pragma HLS ARRAY_PARTITION variable=acc complete dim=1
#pragma HLS ARRAY_PARTITION variable=acc complete dim=3
#pragma HLS BIND_STORAGE variable=acc type=ram_2p impl=lutram
#else
#pragma HLS ARRAY_PARTITION variable=acc complete dim=0
#endif

    /* fill A through the real write helper (also exercises a_write_beat in csynth) */
fillA:
    for (int r = 0; r < cfg::TILE_ROWS; r++) {
        for (int w = 0; w < cfg::KW_MAX; w++) {
#pragma HLS PIPELINE II=1
            float beat[cfg::BEAT];
#pragma HLS ARRAY_PARTITION variable=beat complete
            const uint32_t base = seed ^ (uint32_t)((r << 6) | w);
            for (int l = 0; l < cfg::BEAT; l++) {
#pragma HLS UNROLL
                beat[l] = mkf(base ^ ((uint32_t)l << 17));
            }
            a_write_beat(Abuf, r, w, beat);
        }
    }

    /* fill B: one wide word per iteration */
fillB:
    for (int k = 0; k < cfg::KMAX; k++) {
        for (int jg = 0; jg < cfg::NG; jg++) {
#pragma HLS PIPELINE II=1
            const uint32_t base = seed ^ (uint32_t)((k << 8) | jg);
            for (int u = 0; u < cfg::U; u++) {
#pragma HLS UNROLL
                Bt[k][jg * cfg::U + u] = mkf(base ^ ((uint32_t)u << 17));
            }
        }
    }

    core_engine(Abuf, Bt, acc, K);

    uint32_t sum = 0;
chksum:
    for (int tj = 0; tj < cfg::D; tj++) {
#pragma HLS PIPELINE II=1
        uint32_t x = 0;
        for (int r = 0; r < cfg::RS; r++) {
#pragma HLS UNROLL
            for (int u = 0; u < cfg::U; u++) {
#pragma HLS UNROLL
                x ^= f2u(acc[r][tj][u]);
            }
        }
        sum ^= x;
    }
    C[0] = u2f(sum);
}

/* ================================================================== M2: the transfers ==== */
/* The three routines the real kernel will call. Each has
 *   a FAST path  : every access is built as ((group << log2 W) + l) with l an unrolled constant, so HLS can
 *                  PROVE it is an aligned run of W floats and may widen the port to 512 bits and burst it.
 *                  Taken when the shape guarantees alignment (K%16==0 for A, N%U==0 for B and C).
 *   a TAIL path  : element-exact scalar accesses, correct for any K and N, never reads or writes outside
 *                  the valid region (cosim memory is exactly `depth` elements, so an overrun is a SIGSEGV).
 * GEMM_M2_SHAPE only changes how a load fetches its group, so one build per value compares them. */

/* fetch W consecutive floats. G = group index (element = G*W), E = running element index. */
template <int W>
static inline void fetch_group(const float *p, int G, int E, float out[W]) {
#pragma HLS INLINE
#if GEMM_M2_SHAPE == 0
    /* control: element index is an opaque runtime value, alignment cannot be proven */
    for (int l = 0; l < W; l++) {
#pragma HLS UNROLL
        out[l] = p[E + l];
    }
#elif GEMM_M2_SHAPE == 1
    /* group-aligned: index = G*W + l with constant l */
    for (int l = 0; l < W; l++) {
#pragma HLS UNROLL
        out[l] = p[G * W + l];
    }
#else
    /* view the float port as 512-bit words (W == 16 enforced above) */
    const ap_uint<512> *p512 = reinterpret_cast<const ap_uint<512> *>(p);
    const ap_uint<512> v = p512[G];
    for (int l = 0; l < W; l++) {
#pragma HLS UNROLL
        ap_uint<32> t = v.range(32 * l + 31, 32 * l);
        out[l] = u2f(t.to_uint());
    }
#endif
}

/* ---- A tile: rows row0 .. row0+rows_valid-1 of A (contiguous in HBM) into the skewed banks. ----
 * Rows are contiguous, so the whole tile is ONE run of rows_valid*K/16 beats = one long burst.
 * Rows rows_valid .. TILE_ROWS-1 (only when M is not a multiple of TILE_ROWS) are zero-filled. */
inline void load_A_tile(const float *A, ABanks buf, int row0, int rows_valid, int K) {
#pragma HLS INLINE
    if ((K & 15) == 0) {
        const int K16 = K >> 4;
        const int G0 = row0 * K16;        /* group index of the first beat                   */
        const int E0 = row0 * K;          /* same position as an element index (shape 0)     */
        const int nb = rows_valid * K16;  /* beats to load                                    */
        int r = 0, w = 0;
    loadA:
        for (int q = 0; q < nb; q++) {
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=18 max=1152
            float beat[cfg::BEAT];
#pragma HLS ARRAY_PARTITION variable=beat complete
            fetch_group<cfg::BEAT>(A, G0 + q, E0 + (q << 4), beat);
            a_write_beat(buf, r, w, beat);
            if (w == K16 - 1) { w = 0; r++; } else { w++; }
        }
    zeroA:
        for (int rr = rows_valid; rr < cfg::TILE_ROWS; rr++) {
            for (int ww = 0; ww < K16; ww++) {
#pragma HLS PIPELINE II=1
                float z[cfg::BEAT];
#pragma HLS ARRAY_PARTITION variable=z complete
                for (int l = 0; l < cfg::BEAT; l++) {
#pragma HLS UNROLL
                    z[l] = 0.0f;
                }
                a_write_beat(buf, rr, ww, z);
            }
        }
    } else {
#if GEMM_M2_SLOW
        int idx = row0 * K;
    loadA_tail:
        for (int r = 0; r < rows_valid; r++) {
            for (int k = 0; k < K; k++) {
#pragma HLS PIPELINE II=1
                buf[a_bank(r, k)][a_addr(r, k)] = A[idx++];
            }
        }
#endif
    }
}

/* ---- B tile: columns jt .. jt+nvalid-1 of every row k < K. Row segments are contiguous, rows are N apart:
 * one burst per row. Only the nvalid columns are read (cosim B memory is exactly K*N). ---- */
inline void load_B_tile(const float *B, BTile Bt, int jt, int nvalid, int K, int N) {
#pragma HLS INLINE
    if ((N & (cfg::U - 1)) == 0) {
        const int NU = N >> cfg::LOGU;          /* U-float groups per row of B                      */
        const int nvg = nvalid >> cfg::LOGU;    /* groups to load per row (nvalid is a multiple of U) */
        int rowg = jt >> cfg::LOGU;             /* group index of (row k, column jt); += NU per row  */
        int rowe = jt;                          /* same, as an element index (shape 0)              */
    loadB_row:
        for (int k = 0; k < K; k++) {
#if GEMM_B_FLATTEN == 0
#pragma HLS LOOP_FLATTEN off
#endif
#pragma HLS LOOP_TRIPCOUNT min=288 max=768
        loadB_grp:
            for (int jg = 0; jg < nvg; jg++) {
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=96
                float wd[cfg::U];
#pragma HLS ARRAY_PARTITION variable=wd complete
                fetch_group<cfg::U>(B, rowg + jg, rowe + (jg << cfg::LOGU), wd);
                for (int u = 0; u < cfg::U; u++) {
#pragma HLS UNROLL
                    Bt[k][jg * cfg::U + u] = wd[u];
                }
            }
            rowg += NU;
            rowe += N;
        }
    } else {
#if GEMM_M2_SLOW
        const int ngc = (nvalid + cfg::U - 1) >> cfg::LOGU;
        int base = jt;
    loadB_row_tail:
        for (int k = 0; k < K; k++) {
#pragma HLS LOOP_FLATTEN off
        loadB_grp_tail:
            for (int jg = 0; jg < ngc; jg++) {
#pragma HLS PIPELINE
                float wd[cfg::U];
#pragma HLS ARRAY_PARTITION variable=wd complete
                for (int u = 0; u < cfg::U; u++) {
#pragma HLS UNROLL
                    const int c = jg * cfg::U + u;
                    wd[u] = (c < nvalid) ? B[base + c] : 0.0f;   /* pad the last group with zeros */
                }
                for (int u = 0; u < cfg::U; u++) {
#pragma HLS UNROLL
                    Bt[k][jg * cfg::U + u] = wd[u];
                }
            }
            base += N;
        }
#endif
    }
}

/* ---- C tile: tile row t*RS+r lives in src[r][t*NG + jg][u]. Row segments are contiguous, rows are N apart:
 * one burst per row. Writes exactly rows_valid x nvalid floats and nothing else. ---- */
inline void store_C_tile(float *C, const float src[cfg::RS][cfg::D][cfg::U],
                         int row0, int rows_valid, int jt, int nvalid, int N) {
#pragma HLS INLINE
    if ((N & (cfg::U - 1)) == 0) {
        const int NU = N >> cfg::LOGU;
        const int nvg = nvalid >> cfg::LOGU;
        int rowg = row0 * NU + (jt >> cfg::LOGU);   /* group index of (row row0, column jt) */
#if GEMM_C_FLATTEN
        /* One loop over the valid rows; the tile row t*RS + r is tracked with counters so the row loop and the
         * beat loop can flatten and consecutive rows' write requests overlap (like the B load). */
        int r = 0, t = 0;
    storeC_row:
        for (int rw = 0; rw < rows_valid; rw++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=32
        storeC_grp:
            for (int jg = 0; jg < nvg; jg++) {
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=96
                float v[cfg::U];
#pragma HLS ARRAY_PARTITION variable=v complete
                for (int u = 0; u < cfg::U; u++) {
#pragma HLS UNROLL
                    v[u] = src[r][t * cfg::NG + jg][u];
                }
                for (int u = 0; u < cfg::U; u++) {
#pragma HLS UNROLL
                    C[((rowg + jg) << cfg::LOGU) + u] = v[u];
                }
            }
            rowg += NU;
            if (r == cfg::RS - 1) { r = 0; t++; } else { r++; }
        }
#else
    storeC_t:
        for (int t = 0; t < cfg::RT; t++) {
        storeC_r:
            for (int r = 0; r < cfg::RS; r++) {
#pragma HLS LOOP_FLATTEN off
                if (t * cfg::RS + r < rows_valid) {
                storeC_grp0:
                    for (int jg = 0; jg < nvg; jg++) {
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=96
                        float v[cfg::U];
#pragma HLS ARRAY_PARTITION variable=v complete
                        for (int u = 0; u < cfg::U; u++) {
#pragma HLS UNROLL
                            v[u] = src[r][t * cfg::NG + jg][u];
                        }
                        for (int u = 0; u < cfg::U; u++) {
#pragma HLS UNROLL
                            C[((rowg + jg) << cfg::LOGU) + u] = v[u];
                        }
                    }
                }
                rowg += NU;
            }
        }
#endif
    } else {
#if GEMM_M2_SLOW
        int base = row0 * N + jt;
    storeC_t_tail:
        for (int t = 0; t < cfg::RT; t++) {
        storeC_r_tail:
            for (int r = 0; r < cfg::RS; r++) {
#pragma HLS LOOP_FLATTEN off
                if (t * cfg::RS + r < rows_valid) {
                storeC_c_tail:
                    for (int c = 0; c < nvalid; c++) {
#pragma HLS PIPELINE II=1
                        C[base + c] = src[r][t * cfg::NG + (c >> cfg::LOGU)][c & (cfg::U - 1)];
                    }
                }
                base += N;
            }
        }
#endif
    }
}

#if GEMM_M2_XFER
/* The M2 experiment body: one tile at (row0 = 0, jt = 0), only the transfers selected by GEMM_M2_XFER.
 * Loaded data is folded with integer XOR so the loads cannot be dead-code eliminated; parts 1 and 2 leave
 * the fold in C[0], part 3 stores a seeded tile, part 4 folds the loads INTO the stored tile.
 * Cycle accounting for cosim: total = load + fold + a few tens of cycles; the fold is on-chip and fixed. */
inline void m2_run(const float *A, const float *B, float *C, int M, int K, int N) {
#pragma HLS INLINE
    const uint32_t seed = (uint32_t)M ^ ((uint32_t)N << 12) ^ 0x5bd1e995u;
#if GEMM_M2_FORCE_FAST == 1
    const int Nx = 32;                           /* constant N=32: cosim shapes take the fast path   */
    const int Kb = (K < 360) ? K : 360;          /* 360*32 = 11520 = cosim B memory                  */
#elif GEMM_M2_FORCE_FAST == 2
    /* (M >> 5) is 0 for every cosim shape (M = 16, 8, 4) but HLS cannot know that, so Nx and Kb are
     * run-time values exactly as in the real kernel. */
    const int Nx = 32 + ((M >> 5) << 4);         /* 32 in cosim                                      */
    const int Klim = (M >> 5) ? 240 : 360;       /* Kb*Nx <= 11520 = cosim B memory                  */
    const int Kb = (K < Klim) ? K : Klim;        /* 288, 360, 288 rows                               */
#elif GEMM_M2_FORCE_FAST == 3
    const int Nx = 256 + ((M >> 5) << 4);        /* 256 in cosim = one full NT row, 16 beats          */
    const int Klim = (M >> 5) ? 40 : 45;         /* 45*256 = 11520 = cosim B memory                  */
    const int Kt = K >> 3;                       /* 36, 96, 36                                       */
    const int Kb = (Kt < Klim) ? Kt : Klim;      /* 36, 45, 36 rows                                  */
#else
    const int Nx = N;
    const int Kb = K;
#endif
    const int rows_valid = (M < cfg::TILE_ROWS) ? M : cfg::TILE_ROWS;
    const int nvalid = (Nx < cfg::NT) ? Nx : cfg::NT;
    uint32_t chk = 0;

#if GEMM_M2_XFER == 1 || GEMM_M2_XFER == 4
    {
        ABanks Abuf;
#pragma HLS ARRAY_PARTITION variable=Abuf complete dim=1
#pragma HLS BIND_STORAGE variable=Abuf type=ram_2p impl=bram
        load_A_tile(A, Abuf, 0, rows_valid, K);
    foldA:
        for (int a = 0; a < cfg::TILE_ROWS * cfg::KW_MAX; a++) {
#pragma HLS PIPELINE II=1
            uint32_t x = 0;
            for (int b = 0; b < cfg::P; b++) {
#pragma HLS UNROLL
                x ^= f2u(Abuf[b][a]);
            }
            chk ^= x;
        }
    }
#endif

#if GEMM_M2_XFER == 2 || GEMM_M2_XFER == 4
    {
        BTile Bt;
#if GEMM_U == 8
#pragma HLS ARRAY_RESHAPE variable=Bt cyclic factor=8 dim=2
#elif GEMM_U == 16
#pragma HLS ARRAY_RESHAPE variable=Bt cyclic factor=16 dim=2
#else
#pragma HLS ARRAY_RESHAPE variable=Bt cyclic factor=32 dim=2
#endif
#if GEMM_B_URAM
#pragma HLS BIND_STORAGE variable=Bt type=ram_2p impl=uram
#else
#pragma HLS BIND_STORAGE variable=Bt type=ram_2p impl=bram
#endif
        load_B_tile(B, Bt, 0, nvalid, Kb, Nx);
        const int ngc = (nvalid + cfg::U - 1) >> cfg::LOGU;
    foldB:
        for (int k = 0; k < Kb; k++) {
            for (int jg = 0; jg < ngc; jg++) {
#pragma HLS PIPELINE II=1
                uint32_t x = 0;
                for (int u = 0; u < cfg::U; u++) {
#pragma HLS UNROLL
                    x ^= f2u(Bt[k][jg * cfg::U + u]);
                }
                chk ^= x;
            }
        }
    }
#endif

#if GEMM_M2_XFER == 3 || GEMM_M2_XFER == 4
    {
        Acc cs;
#if GEMM_ACC_MODE == 0
#pragma HLS ARRAY_PARTITION variable=cs complete dim=1
#pragma HLS ARRAY_PARTITION variable=cs complete dim=3
#pragma HLS BIND_STORAGE variable=cs type=ram_2p impl=lutram
#else
#pragma HLS ARRAY_PARTITION variable=cs complete dim=0
#endif
    fillC:
        for (int tj = 0; tj < cfg::D; tj++) {
#pragma HLS PIPELINE II=1
            for (int r = 0; r < cfg::RS; r++) {
#pragma HLS UNROLL
                for (int u = 0; u < cfg::U; u++) {
#pragma HLS UNROLL
                    cs[r][tj][u] = mkf(seed ^ (uint32_t)((r << 8) | tj) ^ ((uint32_t)u << 17));
                }
            }
        }
        cs[0][0][0] = u2f(f2u(cs[0][0][0]) ^ chk);     /* tie the loads to the stored data */
#if GEMM_M2_FORCE_FAST == 1
        const int rows_c = (rows_valid < 8) ? rows_valid : 8;     /* 8*32 = 256 = cosim C memory */
#elif GEMM_M2_FORCE_FAST == 2
        const int rcap = (M >> 5) ? 5 : 8;                        /* rows*Nx <= 256 = cosim C memory */
        const int rows_c = (rows_valid < rcap) ? rows_valid : rcap;
#elif GEMM_M2_FORCE_FAST == 3
        const int rows_c = (rows_valid < 1) ? rows_valid : 1;     /* 1*256 = cosim C memory */
#else
        const int rows_c = rows_valid;
#endif
        store_C_tile(C, cs, 0, rows_c, 0, nvalid, Nx);
    }
#else
    C[0] = u2f(chk);
#endif
}
#endif

/* ================================================================== M3: the composed kernel ==== */
/* C[M x N] = A[M x K] * B[K x N]. For each NT-wide column tile: load the B tile once; for each TILE_ROWS-row
 * tile of A: load it, run the engine, store the C tile. No overlap yet (that is M4/M5): the loop is serial,
 * so a tile costs load + compute + store. Tails are handled inside the transfers:
 *   rows_valid < TILE_ROWS  (M not a multiple of the tile)  -> A rows zero-filled, only valid rows stored
 *   nvalid < NT             (N not a multiple of NT)        -> only nvalid columns loaded and stored
 *   N % U != 0, K % 16 != 0                                  -> element-exact tail paths
 * Columns past nvalid hold stale data in Bt and produce values that are never stored. */
inline void gemm_tiled(const float *A, const float *B, float *C, int M, int K, int N) {
#pragma HLS INLINE
    ABanks Abuf;
#pragma HLS ARRAY_PARTITION variable=Abuf complete dim=1
#pragma HLS BIND_STORAGE variable=Abuf type=ram_2p impl=bram

    BTile Bt;
#if GEMM_U == 8
#pragma HLS ARRAY_RESHAPE variable=Bt cyclic factor=8 dim=2
#elif GEMM_U == 16
#pragma HLS ARRAY_RESHAPE variable=Bt cyclic factor=16 dim=2
#else
#pragma HLS ARRAY_RESHAPE variable=Bt cyclic factor=32 dim=2
#endif
#if GEMM_B_URAM
#pragma HLS BIND_STORAGE variable=Bt type=ram_2p impl=uram
#else
#pragma HLS BIND_STORAGE variable=Bt type=ram_2p impl=bram
#endif

    Acc acc;
#if GEMM_ACC_MODE == 0
#pragma HLS ARRAY_PARTITION variable=acc complete dim=1
#pragma HLS ARRAY_PARTITION variable=acc complete dim=3
#pragma HLS BIND_STORAGE variable=acc type=ram_2p impl=lutram
#else
#pragma HLS ARRAY_PARTITION variable=acc complete dim=0
#endif

colt:
    for (int jt = 0; jt < N; jt += cfg::NT) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=3
        const int nvalid = (N - jt < cfg::NT) ? (N - jt) : cfg::NT;
        load_B_tile(B, Bt, jt, nvalid, K, N);
    rowt:
        for (int row0 = 0; row0 < M; row0 += cfg::TILE_ROWS) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=4000
            const int rows_valid = (M - row0 < cfg::TILE_ROWS) ? (M - row0) : cfg::TILE_ROWS;
            load_A_tile(A, Abuf, row0, rows_valid, K);
            core_engine(Abuf, Bt, acc, K);
            store_C_tile(C, acc, row0, rows_valid, jt, nvalid, N);
        }
    }
}

/* ------------------------------------------------ host-only config report (csim, mode 0) */
#ifndef __SYNTHESIS__
static void gemm_m0_report() {
    const double f = 300e6, hbm_bpc = 14.4e9 / f;      /* 48 B/cycle: one HBM channel at 300 MHz */
    const int lat = 100, fill = 30;
    const double a_bytes = 4.0 * cfg::TILE_ROWS * cfg::KMAX;
    const double load = a_bytes / hbm_bpc + lat;
    const double flush = 4.0 * cfg::TILE_ROWS * cfg::NT / hbm_bpc + lat;
    const double tile = cfg::COMPUTE_CYC_PER_TILE + fill + load + flush;
    const double tiles = (768.0 / cfg::TILE_ROWS) * cfg::A_PASSES_SQUARE;
    const double bload = cfg::A_PASSES_SQUARE * (cfg::B_TILE_BYTES / hbm_bpc + lat);
    const double ser = (tiles * tile + bload) / f * 1e3;
    const double ovl = (tiles * (cfg::COMPUTE_CYC_PER_TILE + fill) + bload) / f * 1e3;
    std::printf("=== M0 config: RS=%d U=%d NT=%d RT=%d ===\n", cfg::RS, cfg::U, cfg::NT, cfg::RT);
    std::printf("  lanes=%d  DSP~%d  D=%d  A banks P=%d (depth %d words each)\n",
                cfg::LANES, cfg::DSP_EST, cfg::D, cfg::P, cfg::TILE_ROWS * cfg::KW_MAX);
    std::printf("  B tile=%d KiB  A passes (square)=%d\n", cfg::B_TILE_BYTES / 1024, cfg::A_PASSES_SQUARE);
    std::printf("  per tile (K=768): compute=%d  A load~%.0f  flush~%.0f  total~%.0f cycles\n",
                cfg::COMPUTE_CYC_PER_TILE, load, flush, tile);
    std::printf("  predicted square: %.1f ms serial, %.1f ms overlapped\n", ser, ovl);
}
#endif

/* ============================================================== the top function (unchanged) ==== */
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

#if GEMM_M1_CORE && defined(__SYNTHESIS__)
    /* M1 experiment: only K, M and N are used (K = loop bound, M and N = seed); A and B are untouched. */
    m1_core_run(K, (uint32_t)M ^ ((uint32_t)N << 12) ^ 0x5bd1e995u, C);
#elif GEMM_M2_XFER && defined(__SYNTHESIS__)
    /* M2 experiment: the HBM transfers only, on the real pointers and the real M, K, N. */
    m2_run(A, B, C, M, K, N);
#else
#ifndef __SYNTHESIS__
    static bool reported = false;
    if (!reported) { gemm_m0_report(); reported = true; }
#endif

#if GEMM_M3_TILED
    gemm_tiled(A, B, C, M, K, N);
#else
    for (int i = 0; i < M; i++)
        for (int j = 0; j < N; j++) {
            float acc = 0.0f;
            for (int k = 0; k < K; k++)
                acc += A[(long)i * K + k] * B[(long)k * N + j];
            C[(long)i * N + j] = acc;
        }
#endif
#endif
}

/* ================================================== host self-test (never compiled by Vitis) ==== */
#ifdef GEMM_HOST_SELFTEST
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <algorithm>
#include <vector>

static ABanks st_Abuf;
static BTile  st_Bt;
static Acc    st_acc;


static const float SENT = -12345.0f;

/* Every transfer against EXACT-size buffers (build with -fsanitize=address to catch any stray access). */
static int test_transfers(int M, int K, int N, int row0, int jt) {
    const bool fastA = (K % 16 == 0), fastBC = (N % cfg::U == 0);
    if (!GEMM_M2_SLOW && !(fastA && fastBC)) return 0;
    const int rows_valid = std::min(cfg::TILE_ROWS, M - row0);
    const int nvalid = std::min(cfg::NT, N - jt);
    float *Ah = new float[(size_t)M * K], *Bh = new float[(size_t)K * N], *Ch = new float[(size_t)M * N];
    for (size_t i = 0; i < (size_t)M * K; i++) Ah[i] = 2.0f * (float)std::rand() / RAND_MAX - 1.0f;
    for (size_t i = 0; i < (size_t)K * N; i++) Bh[i] = 2.0f * (float)std::rand() / RAND_MAX - 1.0f;
    for (size_t i = 0; i < (size_t)M * N; i++) Ch[i] = SENT;
    int bad = 0;

    load_A_tile(Ah, st_Abuf, row0, rows_valid, K);
    for (int k = 0; k < K; k++)
        for (int t = 0; t < cfg::RT; t++) {
            float a[cfg::RS];
            a_read_k(st_Abuf, k, t, a);
            for (int i = 0; i < cfg::RS; i++) {
                const int row = t * cfg::RS + i;
                if (row < rows_valid) { if (a[i] != Ah[(size_t)(row0 + row) * K + k]) bad++; }
                else if (fastA && a[i] != 0.0f) bad++;               /* fast path zero-fills the tail rows */
            }
        }

    load_B_tile(Bh, st_Bt, jt, nvalid, K, N);
    for (int k = 0; k < K; k++)
        for (int c = 0; c < nvalid; c++)
            if (st_Bt[k][c] != Bh[(size_t)k * N + jt + c]) bad++;

    auto val = [](int r, int tj, int u) { return 1.0f + (float)((r * cfg::D + tj) * cfg::U + u); };
    for (int r = 0; r < cfg::RS; r++)
        for (int tj = 0; tj < cfg::D; tj++)
            for (int u = 0; u < cfg::U; u++) st_acc[r][tj][u] = val(r, tj, u);
    store_C_tile(Ch, st_acc, row0, rows_valid, jt, nvalid, N);
    for (int row = 0; row < M; row++)
        for (int col = 0; col < N; col++) {
            const int lr = row - row0, lc = col - jt;
            const bool inside = lr >= 0 && lr < rows_valid && lc >= 0 && lc < nvalid;
            const float want = inside ? val(lr % cfg::RS, (lr / cfg::RS) * cfg::NG + lc / cfg::U, lc % cfg::U) : SENT;
            if (Ch[(size_t)row * N + col] != want) bad++;
        }
    delete[] Ah; delete[] Bh; delete[] Ch;
    return bad;
}

/* M2 pieces + M1 engine composed into a tiled GEMM on the host (a preview of M3, never synthesized). */
static int test_tiled_gemm(int M, int K, int N) {
    const bool fastA = (K % 16 == 0), fastBC = (N % cfg::U == 0);
    if (!GEMM_M2_SLOW && !(fastA && fastBC)) return 0;
    float *Ah = new float[(size_t)M * K], *Bh = new float[(size_t)K * N], *Ch = new float[(size_t)M * N];
    for (size_t i = 0; i < (size_t)M * K; i++) Ah[i] = 2.0f * (float)std::rand() / RAND_MAX - 1.0f;
    for (size_t i = 0; i < (size_t)K * N; i++) Bh[i] = 2.0f * (float)std::rand() / RAND_MAX - 1.0f;
    for (size_t i = 0; i < (size_t)M * N; i++) Ch[i] = SENT;
    for (int jt = 0; jt < N; jt += cfg::NT) {
        const int nvalid = std::min(cfg::NT, N - jt);
        load_B_tile(Bh, st_Bt, jt, nvalid, K, N);
        for (int row0 = 0; row0 < M; row0 += cfg::TILE_ROWS) {
            const int rows_valid = std::min(cfg::TILE_ROWS, M - row0);
            load_A_tile(Ah, st_Abuf, row0, rows_valid, K);
            core_engine(st_Abuf, st_Bt, st_acc, K);
            store_C_tile(Ch, st_acc, row0, rows_valid, jt, nvalid, N);
        }
    }
    int bad = 0;
    for (int i = 0; i < M; i++)
        for (int j = 0; j < N; j++) {
            float ref = 0.0f;
            for (int k = 0; k < K; k++) ref += Ah[(size_t)i * K + k] * Bh[(size_t)k * N + j];
            const double err = std::fabs((double)Ch[(size_t)i * N + j] - ref) / std::fmax(1.0, std::fabs((double)ref));
            if (!(err <= 1e-5)) bad++;
        }
    delete[] Ah; delete[] Bh; delete[] Ch;
    return bad;
}

#if GEMM_M2_XFER
/* The synthesized experiment body on cosim-sized memories: any access past `depth` (6144/11520/256) trips ASAN,
 * exactly as it would SIGSEGV in cosim. Output must depend on the loaded data. */
static unsigned run_m2_once(int M, int K, int N, unsigned dseed, bool &ok) {
    float *A = new float[6144], *B = new float[11520], *C = new float[256];
    unsigned st = dseed;
    for (int i = 0; i < 6144; i++)  { st = st * 1664525u + 1013904223u; A[i] = (float)(st >> 8) / 16777216.0f; }
    for (int i = 0; i < 11520; i++) { st = st * 1664525u + 1013904223u; B[i] = (float)(st >> 8) / 16777216.0f; }
    for (int i = 0; i < 256; i++) C[i] = SENT;
    m2_run(A, B, C, M, K, N);
    unsigned h = 0; bool touched = false;
    for (int i = 0; i < 256; i++) { h = h * 31u + f2u(C[i]); if (C[i] != SENT) touched = true; }
    ok = ok && touched;
    delete[] A; delete[] B; delete[] C;
    return h;
}
static int test_m2_cosim_bounds() {
    int bad = 0;
    const int shapes[3][3] = {{16, 288, 1}, {8, 768, 1}, {4, 288, 40}};
    for (auto &s : shapes) {
        bool ok = true;
        const unsigned h1 = run_m2_once(s[0], s[1], s[2], 1u, ok);
        const unsigned h2 = run_m2_once(s[0], s[1], s[2], 2u, ok);
        if (!ok) bad++;
        if (GEMM_M2_XFER != 3 && h1 == h2) bad++;            /* part 3 stores a seeded tile; the others must see the data */
    }
    return bad;
}
#endif

int main() {
    int bad_map = 0, bad_eng = 0;
    double worst = 0.0;
    for (int K : {288, 768}) {
        std::vector<float> A((size_t)cfg::TILE_ROWS * K), B((size_t)K * cfg::NT);
        for (auto &x : A) x = 2.0f * (float)std::rand() / RAND_MAX - 1.0f;
        for (auto &x : B) x = 2.0f * (float)std::rand() / RAND_MAX - 1.0f;

        for (int r = 0; r < cfg::TILE_ROWS; r++)
            for (int w = 0; w < K / cfg::BEAT; w++)
                a_write_beat(st_Abuf, r, w, &A[(size_t)r * K + w * cfg::BEAT]);

        /* (1) the skewed mapping round-trips: every A[t*RS+i][k] comes back from a_read_k */
        for (int k = 0; k < K; k++)
            for (int t = 0; t < cfg::RT; t++) {
                float a[cfg::RS];
                a_read_k(st_Abuf, k, t, a);
                for (int i = 0; i < cfg::RS; i++)
                    if (a[i] != A[(size_t)(t * cfg::RS + i) * K + k]) bad_map++;
            }

        /* (2) the engine computes the tile product, same ops in the same k order as the reference */
        for (int k = 0; k < K; k++)
            for (int c = 0; c < cfg::NT; c++) st_Bt[k][c] = B[(size_t)k * cfg::NT + c];
        core_engine(st_Abuf, st_Bt, st_acc, K);
        for (int t = 0; t < cfg::RT; t++)
            for (int r = 0; r < cfg::RS; r++)
                for (int jg = 0; jg < cfg::NG; jg++)
                    for (int u = 0; u < cfg::U; u++) {
                        const int gr = t * cfg::RS + r, c = jg * cfg::U + u;
                        float ref = 0.0f;
                        for (int k = 0; k < K; k++) ref += A[(size_t)gr * K + k] * B[(size_t)k * cfg::NT + c];
                        const float got = st_acc[r][t * cfg::NG + jg][u];
                        const double err = std::fabs((double)got - ref) / std::fmax(1.0, std::fabs((double)ref));
                        if (err > worst) worst = err;
                        if (err > 1e-5) bad_eng++;
                    }
    }

    /* (3) the experiment body runs and depends on its seed (what C[0] will carry in csynth) */
    float c1 = 0, c2 = 0;
    m1_core_run(768, 1234u, &c1);
    m1_core_run(768, 4321u, &c2);
    bool seeded = f2u(c1) != f2u(c2);
#if GEMM_M1_CORE && defined(__SYNTHESIS__)
    /* compiled with -D__SYNTHESIS__: also drive the real top function down its synthesized branch */
    float t1 = 0, t2 = 0;
    gemm(nullptr, nullptr, &t1, 8, 768, 40);
    gemm(nullptr, nullptr, &t2, 9, 768, 40);
    seeded = seeded && (f2u(t1) != f2u(t2));
#endif

    /* (4) M2 transfers: tile positions chosen to hit tails (M < TILE_ROWS, N not a multiple of U or NT, K not a multiple of 16) */
    int bad_xfer = 0;
    const int xs[][5] = {  /* M, K, N, row0, jt */
        {16, 288, 1, 0, 0},   {8, 768, 1, 0, 0},    {4, 288, 40, 0, 0},    {20, 288, 32, 8, 0},
        {300, 288, 768, 296, 512}, {9, 768, 48, 8, 32}, {5, 40, 100, 0, 0}, {3, 1, 1, 0, 0},
        {40, 288, 300, 16, 256}, {16, 768, 32, 8, 0}};
    for (auto &x : xs) bad_xfer += test_transfers(x[0], x[1], x[2], x[3], x[4]);

    /* (5) composed: loaders + engine + store == reference GEMM, tails included */
    int bad_tile = 0;
    const int ts[][3] = {{16, 288, 1}, {8, 768, 1}, {4, 288, 40}, {20, 288, 32}, {9, 288, 48},
                         {5, 40, 100}, {37, 288, 300}, {16, 768, 768}};
    for (auto &x : ts) bad_tile += test_tiled_gemm(x[0], x[1], x[2]);

    int bad_m2 = 0;
#if GEMM_M2_XFER
    bad_m2 = test_m2_cosim_bounds();
#endif

    std::printf("RS=%d U=%d NT=%d RT=%d lanes=%d D=%d P=%d : mapping %s, engine %s (worst rel err %.1e), seed-dependent %s, "
                "transfers %s, tiled-gemm %s%s\n",
                cfg::RS, cfg::U, cfg::NT, cfg::RT, cfg::LANES, cfg::D, cfg::P,
                bad_map ? "FAIL" : "PASS", bad_eng ? "FAIL" : "PASS", worst, seeded ? "yes" : "NO",
                bad_xfer ? "FAIL" : "PASS", bad_tile ? "FAIL" : "PASS",
                GEMM_M2_XFER ? (bad_m2 ? ", m2-bounds FAIL" : ", m2-bounds PASS") : "");
    return (bad_map || bad_eng || !seeded || bad_xfer || bad_tile || bad_m2) ? 1 : 0;
}
#endif
