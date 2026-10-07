create_project prj -part xcu50-fsvh2104-2-e -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/cs2401.03/mini1-gemm/build/hls/hls/syn/verilog/gemm_fmul_32ns_32ns_32_4_max_dsp_1_ip.tcl"
source "/home/cs2401.03/mini1-gemm/build/hls/hls/syn/verilog/gemm_fadd_32ns_32ns_32_7_full_dsp_1_ip.tcl"
