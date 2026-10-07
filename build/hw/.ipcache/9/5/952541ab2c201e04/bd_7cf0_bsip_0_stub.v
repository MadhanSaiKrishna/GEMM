// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Oct  1 03:08:43 2026
// Host        : node06.local running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_7cf0_bsip_0_stub.v
// Design      : bd_7cf0_bsip_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "bd_7cf0_bsip_0,bsip_v1_1_1_bsip,{}" *) (* CORE_GENERATION_INFO = "bd_7cf0_bsip_0,bsip_v1_1_1_bsip,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=bsip,x_ipVersion=1.1,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_EN_MUX=0,C_EN_MUX_EXT_BS=0,C_USE_SOFTBSCAN=1,C_DEVICE_FAMILY=0,C_IR_WIDTH=0,C_CHIP_ID=0,C_IR_ID_INSTR=0,C_IR_USER1_INSTR=0,C_USER_SCAN_CHAIN=1}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "bsip_v1_1_1_bsip,Vivado 2025.1" *) (* dont_touch = "true" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(drck, reset, sel, shift, tdi, update, capture, runtest, 
  tck, tms, tap_tdo, tdo, tap_tdi, tap_tms, tap_tck)
/* synthesis syn_black_box black_box_pad_pin="drck,reset,sel,shift,tdi,update,capture,runtest,tms,tap_tdo,tdo,tap_tdi,tap_tms" */
/* synthesis syn_force_seq_prim="tck" */
/* synthesis syn_force_seq_prim="tap_tck" */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan DRCK" *) (* X_INTERFACE_MODE = "master" *) output drck;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RESET" *) output reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SEL" *) output sel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SHIFT" *) output shift;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDI" *) output tdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan UPDATE" *) output update;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE" *) output capture;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST" *) output runtest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TCK" *) output tck /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TMS" *) output tms;
  output tap_tdo;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDO" *) input tdo;
  input tap_tdi;
  input tap_tms;
  input tap_tck /* synthesis syn_isclock = 1 */;
endmodule
