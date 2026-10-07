// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
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
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_gemm_ir(const float *, const float *, float *, int, int, int);
#ifdef __cplusplus
extern "C"
#endif
void gemm_hw_stub(const float *A, const float *B, float *C, int M, int K, int N){
gemm(A, B, C, M, K, N);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void refine_signal_handler();
#ifdef __cplusplus
extern "C"
#endif
void apatb_gemm_sw(const float *A, const float *B, float *C, int M, int K, int N){
refine_signal_handler();
apatb_gemm_ir(A, B, C, M, K, N);
return ;
}
#endif
# 37 "/home/cs2401.03/mini1-gemm/src/kernel.cpp"

