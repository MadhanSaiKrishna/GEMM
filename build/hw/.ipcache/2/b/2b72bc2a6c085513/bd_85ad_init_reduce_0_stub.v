// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Oct  1 03:11:53 2026
// Host        : node06.local running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_85ad_init_reduce_0_stub.v
// Design      : bd_85ad_init_reduce_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "bd_85ad_init_reduce_0,util_reduced_logic_v2_0_7_util_reduced_logic,{}" *) (* CORE_GENERATION_INFO = "bd_85ad_init_reduce_0,util_reduced_logic_v2_0_7_util_reduced_logic,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=util_reduced_logic,x_ipVersion=2.0,x_ipCoreRevision=7,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_OPERATION=and,C_SIZE=1}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "util_reduced_logic_v2_0_7_util_reduced_logic,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(Op1, Res)
/* synthesis syn_black_box black_box_pad_pin="Op1[0:0],Res" */;
  input [0:0]Op1;
  output Res;
endmodule
