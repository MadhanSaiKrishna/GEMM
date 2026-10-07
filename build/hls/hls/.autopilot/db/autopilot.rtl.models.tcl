set SynModuleInfo {
  {SRCNAME gemm_Pipeline_VITIS_LOOP_33_3 MODELNAME gemm_Pipeline_VITIS_LOOP_33_3 RTLNAME gemm_gemm_Pipeline_VITIS_LOOP_33_3
    SUBMODULES {
      {MODELNAME gemm_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME gemm_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME gemm_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME gemm_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gemm_flow_control_loop_pipe_sequential_init RTLNAME gemm_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gemm_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME gemm MODELNAME gemm RTLNAME gemm IS_TOP 1
    SUBMODULES {
      {MODELNAME gemm_mul_32ns_32ns_63_2_1 RTLNAME gemm_mul_32ns_32ns_63_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME gemm_gmem0_m_axi RTLNAME gemm_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME gemm_gmem1_m_axi RTLNAME gemm_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME gemm_gmem2_m_axi RTLNAME gemm_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME gemm_control_s_axi RTLNAME gemm_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
