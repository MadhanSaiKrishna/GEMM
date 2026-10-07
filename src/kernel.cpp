/* kernel.cpp — YOUR U50 GEMM kernel. This file is what you build into the .xclbin you submit.
 *
 * THE HARDWARE CONTRACT (the grader's host calls exactly this — do not change it):
 *
 *   extern "C" void gemm(const float *A, const float *B, float *C, int M, int K, int N);
 *
 *   C[M*N] = A[M*K] · B[K*N]     row-major, float32, contiguous
 *   - top function name   : gemm
 *   - argument order      : A, B, C, M, K, N   (A,B,C are m_axi pointers; M,K,N scalars)
 *   - dims arrive at runtime; one bitstream must handle every shape the grader runs:
 *       (M,K) in { (288,288), (768,288), (288,768), (32000,288) } at N = 1 and N = 32,
 *       plus the square case M = K = N = 768
 *     so K can be up to 768, M up to 32000, and N up to 768 (any N >= 1 must work).
 *
 * The body below is a deliberately NAIVE placeholder — correct, builds, and slow.
 * Replace it with your optimized kernel (tiling, on-chip buffers, wide memory ports...).
 * Keep the signature and the interface pragmas' port names.
 */
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

    for (int i = 0; i < M; i++)
        for (int j = 0; j < N; j++) {
            float acc = 0.0f;
            for (int k = 0; k < K; k++)
                acc += A[(long)i * K + k] * B[(long)k * N + j];
            C[(long)i * N + j] = acc;
        }
}
