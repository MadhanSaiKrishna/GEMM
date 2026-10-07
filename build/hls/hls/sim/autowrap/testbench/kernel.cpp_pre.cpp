# 1 "/home/cs2401.03/mini1-gemm/src/kernel.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 401 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/cs2401.03/mini1-gemm/src/kernel.cpp" 2
# 19 "/home/cs2401.03/mini1-gemm/src/kernel.cpp"
extern "C" void gemm(const float *A, const float *B, float *C, int M, int K, int N) {


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
