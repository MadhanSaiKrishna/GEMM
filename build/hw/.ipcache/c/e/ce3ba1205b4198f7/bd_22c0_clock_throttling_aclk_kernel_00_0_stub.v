// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Oct  1 03:01:01 2026
// Host        : node06.local running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_clock_throttling_aclk_kernel_00_0_stub.v
// Design      : bd_22c0_clock_throttling_aclk_kernel_00_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "bd_22c0_clock_throttling_aclk_kernel_00_0,shell_utils_clock_throttling,{}" *) (* core_generation_info = "bd_22c0_clock_throttling_aclk_kernel_00_0,shell_utils_clock_throttling,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=shell_utils_clock_throttling,x_ipVersion=2.0,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,CLK_SLOW_DIV=1,SYNTH_SIZE=8,IS_VERSAL=false,SIM_DEVICE=ULTRASCALE_PLUS}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "shell_utils_clock_throttling,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(Clk_In, Rst_In, Locked, Startup_Done, 
  Shutdown_Latch, Rate_Upd_Tog, Rate_In, Rst_Async, Clk_Out, Clk_Out_Cont)
/* synthesis syn_black_box black_box_pad_pin="Rst_In,Locked,Startup_Done,Shutdown_Latch,Rate_Upd_Tog,Rate_In[7:0],Rst_Async" */
/* synthesis syn_force_seq_prim="Clk_In" */
/* synthesis syn_force_seq_prim="Clk_Out" */
/* synthesis syn_force_seq_prim="Clk_Out_Cont" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clk_In CLK" *) (* x_interface_mode = "slave Clk_In" *) (* x_interface_parameter = "XIL_INTERFACENAME Clk_In, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_aclk_kernel_00_0_clk_out1, INSERT_VIP 0" *) input Clk_In /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 Rst_In RST" *) (* x_interface_mode = "slave Rst_In" *) (* x_interface_parameter = "XIL_INTERFACENAME Rst_In, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Rst_In;
  input Locked;
  input Startup_Done;
  input Shutdown_Latch;
  input Rate_Upd_Tog;
  input [7:0]Rate_In;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 Rst_Async RST" *) (* x_interface_mode = "slave Rst_Async" *) (* x_interface_parameter = "XIL_INTERFACENAME Rst_Async, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output Rst_Async;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clk_Out CLK" *) (* x_interface_mode = "master Clk_Out" *) (* x_interface_parameter = "XIL_INTERFACENAME Clk_Out, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_aclk_kernel_00_0_clk_out1_buf, INSERT_VIP 0" *) output Clk_Out /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clk_Out_Cont CLK" *) (* x_interface_mode = "master Clk_Out_Cont" *) (* x_interface_parameter = "XIL_INTERFACENAME Clk_Out_Cont, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_aclk_kernel_00_0_clk_out1_buf, INSERT_VIP 0" *) output Clk_Out_Cont /* synthesis syn_isclock = 1 */;
endmodule
