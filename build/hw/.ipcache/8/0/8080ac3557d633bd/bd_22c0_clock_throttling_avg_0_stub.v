// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Oct  1 03:05:25 2026
// Host        : node06.local running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_clock_throttling_avg_0_stub.v
// Design      : bd_22c0_clock_throttling_avg_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "bd_22c0_clock_throttling_avg_0,shell_utils_clock_throttling_avg,{}" *) (* core_generation_info = "bd_22c0_clock_throttling_avg_0,shell_utils_clock_throttling_avg,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=shell_utils_clock_throttling_avg,x_ipVersion=1.0,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,SAMPLE_WIDTH=8,SAMPLE_SAT_VAL=128,AVE_NUM_SAMPLES=50,AVE_WIDTH=14,RST_CNT_BITS=6}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "shell_utils_clock_throttling_avg,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(Clk, Rst, Rate_Upd_Tog, Rate, Rate_Avg)
/* synthesis syn_black_box black_box_pad_pin="Rst,Rate_Upd_Tog,Rate[7:0],Rate_Avg[13:0]" */
/* synthesis syn_force_seq_prim="Clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* x_interface_mode = "slave Clk" *) (* x_interface_parameter = "XIL_INTERFACENAME Clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) input Clk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 Rst RST" *) (* x_interface_mode = "slave Rst" *) (* x_interface_parameter = "XIL_INTERFACENAME Rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Rst;
  input Rate_Upd_Tog;
  input [7:0]Rate;
  output [13:0]Rate_Avg;
endmodule
