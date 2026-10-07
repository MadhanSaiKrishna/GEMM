// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Oct  1 03:11:49 2026
// Host        : node06.local running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_097b_user_debug_hub_0_sim_netlist.v
// Design      : bd_097b_user_debug_hub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_097b_user_debug_hub_0,bd_58f6,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_58f6,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    S_BSCAN_bscanid_en,
    S_BSCAN_capture,
    S_BSCAN_drck,
    S_BSCAN_reset,
    S_BSCAN_runtest,
    S_BSCAN_sel,
    S_BSCAN_shift,
    S_BSCAN_tck,
    S_BSCAN_tdi,
    S_BSCAN_tdo,
    S_BSCAN_tms,
    S_BSCAN_update);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN BSCANID_EN" *) (* X_INTERFACE_MODE = "slave" *) input S_BSCAN_bscanid_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN CAPTURE" *) input S_BSCAN_capture;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN DRCK" *) input S_BSCAN_drck;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN RESET" *) input S_BSCAN_reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN RUNTEST" *) input S_BSCAN_runtest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN SEL" *) input S_BSCAN_sel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN SHIFT" *) input S_BSCAN_shift;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN TCK" *) input S_BSCAN_tck;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN TDI" *) input S_BSCAN_tdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN TDO" *) output S_BSCAN_tdo;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN TMS" *) input S_BSCAN_tms;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN UPDATE" *) input S_BSCAN_update;

  wire S_BSCAN_bscanid_en;
  wire S_BSCAN_capture;
  wire S_BSCAN_drck;
  wire S_BSCAN_reset;
  wire S_BSCAN_runtest;
  wire S_BSCAN_sel;
  wire S_BSCAN_shift;
  wire S_BSCAN_tck;
  wire S_BSCAN_tdi;
  wire S_BSCAN_tdo;
  wire S_BSCAN_tms;
  wire S_BSCAN_update;
  wire clk;

  (* HW_HANDOFF = "bd_097b_user_debug_hub_0.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_58f6 inst
       (.S_BSCAN_bscanid_en(S_BSCAN_bscanid_en),
        .S_BSCAN_capture(S_BSCAN_capture),
        .S_BSCAN_drck(S_BSCAN_drck),
        .S_BSCAN_reset(S_BSCAN_reset),
        .S_BSCAN_runtest(S_BSCAN_runtest),
        .S_BSCAN_sel(S_BSCAN_sel),
        .S_BSCAN_shift(S_BSCAN_shift),
        .S_BSCAN_tck(S_BSCAN_tck),
        .S_BSCAN_tdi(S_BSCAN_tdi),
        .S_BSCAN_tdo(S_BSCAN_tdo),
        .S_BSCAN_tms(S_BSCAN_tms),
        .S_BSCAN_update(S_BSCAN_update),
        .clk(clk));
endmodule

(* HW_HANDOFF = "bd_097b_user_debug_hub_0.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_58f6
   (S_BSCAN_bscanid_en,
    S_BSCAN_capture,
    S_BSCAN_drck,
    S_BSCAN_reset,
    S_BSCAN_runtest,
    S_BSCAN_sel,
    S_BSCAN_shift,
    S_BSCAN_tck,
    S_BSCAN_tdi,
    S_BSCAN_tdo,
    S_BSCAN_tms,
    S_BSCAN_update,
    clk);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN BSCANID_EN" *) (* X_INTERFACE_MODE = "Slave" *) input S_BSCAN_bscanid_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN CAPTURE" *) input S_BSCAN_capture;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN DRCK" *) input S_BSCAN_drck;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN RESET" *) input S_BSCAN_reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN RUNTEST" *) input S_BSCAN_runtest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN SEL" *) input S_BSCAN_sel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN SHIFT" *) input S_BSCAN_shift;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN TCK" *) input S_BSCAN_tck;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN TDI" *) input S_BSCAN_tdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN TDO" *) output S_BSCAN_tdo;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN TMS" *) input S_BSCAN_tms;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN UPDATE" *) input S_BSCAN_update;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input clk;

  wire S_BSCAN_bscanid_en;
  wire S_BSCAN_capture;
  wire S_BSCAN_drck;
  wire S_BSCAN_reset;
  wire S_BSCAN_runtest;
  wire S_BSCAN_sel;
  wire S_BSCAN_shift;
  wire S_BSCAN_tck;
  wire S_BSCAN_tdi;
  wire S_BSCAN_tdo;
  wire S_BSCAN_tms;
  wire S_BSCAN_update;
  wire clk;
  wire lut_buffer_m_bscan_BSCANID_EN;
  wire lut_buffer_m_bscan_CAPTURE;
  wire lut_buffer_m_bscan_DRCK;
  wire lut_buffer_m_bscan_RESET;
  wire lut_buffer_m_bscan_RUNTEST;
  wire lut_buffer_m_bscan_SEL;
  wire lut_buffer_m_bscan_SHIFT;
  wire lut_buffer_m_bscan_TCK;
  wire lut_buffer_m_bscan_TDI;
  wire lut_buffer_m_bscan_TDO;
  wire lut_buffer_m_bscan_TMS;
  wire lut_buffer_m_bscan_UPDATE;

  (* CHECK_LICENSE_TYPE = "bd_58f6_lut_buffer_0,lut_buffer_v2_0_1_lut_buffer,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "lut_buffer_v2_0_1_lut_buffer,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_58f6_lut_buffer_0 lut_buffer
       (.bscanid_en_i(S_BSCAN_bscanid_en),
        .bscanid_en_o(lut_buffer_m_bscan_BSCANID_EN),
        .capture_i(S_BSCAN_capture),
        .capture_o(lut_buffer_m_bscan_CAPTURE),
        .drck_i(S_BSCAN_drck),
        .drck_o(lut_buffer_m_bscan_DRCK),
        .reset_i(S_BSCAN_reset),
        .reset_o(lut_buffer_m_bscan_RESET),
        .runtest_i(S_BSCAN_runtest),
        .runtest_o(lut_buffer_m_bscan_RUNTEST),
        .sel_i(S_BSCAN_sel),
        .sel_o(lut_buffer_m_bscan_SEL),
        .shift_i(S_BSCAN_shift),
        .shift_o(lut_buffer_m_bscan_SHIFT),
        .tck_i(S_BSCAN_tck),
        .tck_o(lut_buffer_m_bscan_TCK),
        .tdi_i(S_BSCAN_tdi),
        .tdi_o(lut_buffer_m_bscan_TDI),
        .tdo_i(lut_buffer_m_bscan_TDO),
        .tdo_o(S_BSCAN_tdo),
        .tms_i(S_BSCAN_tms),
        .tms_o(lut_buffer_m_bscan_TMS),
        .update_i(S_BSCAN_update),
        .update_o(lut_buffer_m_bscan_UPDATE));
  (* CHECK_LICENSE_TYPE = "bd_58f6_xsdbm_0,xsdbm_v3_0_4_xsdbm,{}" *) 
  (* DEBUG_CORE_INFO = "xsdbm,labtools_xsdbm_v3_00_a,{C_BSCAN_MODE=false,C_BSCAN_MODE_WITH_CORE=false,C_CLK_INPUT_FREQ_HZ=300000000,C_ENABLE_CLK_DIVIDER=false,C_EN_BSCANID_VEC=false,C_NUM_BSCAN_MASTER_PORTS=0,C_TWO_PRIM_MODE=false,C_USER_SCAN_CHAIN=1,C_USE_EXT_BSCAN=true,C_XSDB_NUM_SLAVES=0,component_name=xsdbm_CV}" *) 
  (* DEBUG_PORT_clk = "" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IS_DEBUG_CORE *) 
  (* X_CORE_INFO = "xsdbm_v3_0_4_xsdbm,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_58f6_xsdbm_0 xsdbm
       (.bscanid_en(lut_buffer_m_bscan_BSCANID_EN),
        .capture(lut_buffer_m_bscan_CAPTURE),
        .clk(clk),
        .drck(lut_buffer_m_bscan_DRCK),
        .reset(lut_buffer_m_bscan_RESET),
        .runtest(lut_buffer_m_bscan_RUNTEST),
        .sel(lut_buffer_m_bscan_SEL),
        .shift(lut_buffer_m_bscan_SHIFT),
        .tck(lut_buffer_m_bscan_TCK),
        .tdi(lut_buffer_m_bscan_TDI),
        .tdo(lut_buffer_m_bscan_TDO),
        .tms(lut_buffer_m_bscan_TMS),
        .update(lut_buffer_m_bscan_UPDATE));
endmodule

(* CHECK_LICENSE_TYPE = "bd_58f6_lut_buffer_0,lut_buffer_v2_0_1_lut_buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "lut_buffer_v2_0_1_lut_buffer,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_58f6_lut_buffer_0
   (tdi_i,
    tms_i,
    tck_i,
    drck_i,
    sel_i,
    shift_i,
    update_i,
    capture_i,
    runtest_i,
    reset_i,
    bscanid_en_i,
    tdo_o,
    tdi_o,
    tms_o,
    tck_o,
    drck_o,
    sel_o,
    shift_o,
    update_o,
    capture_o,
    runtest_o,
    reset_o,
    bscanid_en_o,
    tdo_i);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDI" *) (* X_INTERFACE_MODE = "slave" *) input tdi_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TMS" *) input tms_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TCK" *) input tck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan DRCK" *) input drck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SEL" *) input sel_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SHIFT" *) input shift_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan UPDATE" *) input update_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan CAPTURE" *) input capture_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RUNTEST" *) input runtest_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RESET" *) input reset_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan BSCANID_EN" *) input bscanid_en_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDO" *) output tdo_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDI" *) (* X_INTERFACE_MODE = "master" *) output tdi_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TMS" *) output tms_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TCK" *) output tck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan DRCK" *) output drck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SEL" *) output sel_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SHIFT" *) output shift_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan UPDATE" *) output update_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE" *) output capture_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST" *) output runtest_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RESET" *) output reset_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan BSCANID_EN" *) output bscanid_en_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDO" *) input tdo_i;


endmodule

(* CHECK_LICENSE_TYPE = "bd_58f6_xsdbm_0,xsdbm_v3_0_4_xsdbm,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xsdbm_v3_0_4_xsdbm,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_58f6_xsdbm_0
   (update,
    capture,
    reset,
    runtest,
    tck,
    tms,
    tdi,
    sel,
    shift,
    drck,
    tdo,
    bscanid_en,
    clk);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan UPDATE" *) (* X_INTERFACE_MODE = "slave" *) input update;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan CAPTURE" *) input capture;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RESET" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RUNTEST" *) input runtest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TCK" *) (* syn_isclock = "1" *) input tck;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TMS" *) input tms;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDI" *) input tdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SEL" *) input sel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SHIFT" *) input shift;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan DRCK" *) input drck;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDO" *) output tdo;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan BSCANID_EN" *) input bscanid_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 signal_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME signal_clock, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) input clk;


endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
