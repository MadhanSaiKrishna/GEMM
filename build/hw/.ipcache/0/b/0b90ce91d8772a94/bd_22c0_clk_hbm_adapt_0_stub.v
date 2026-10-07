// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Oct  1 03:05:10 2026
// Host        : node06.local running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_clk_hbm_adapt_0_stub.v
// Design      : bd_22c0_clk_hbm_adapt_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "bd_22c0_clk_hbm_adapt_0,clk_metadata_adapter_v1_0_0,{}" *) (* CORE_GENERATION_INFO = "bd_22c0_clk_hbm_adapt_0,clk_metadata_adapter_v1_0_0,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=clk_metadata_adapter,x_ipVersion=1.0,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk_in, clk_out)
/* synthesis syn_black_box black_box_pad_pin="clk_in,clk_out" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK_IN CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK_IN, FREQ_HZ 450000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_hbm_0_clk_out1, INSERT_VIP 0" *) input clk_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK_OUT CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK_OUT, FREQ_HZ 450000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_hbm_00, INSERT_VIP 0" *) output clk_out;
endmodule
