// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Oct  1 03:09:48 2026
// Host        : node06.local running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_58f6_lut_buffer_0_sim_netlist.v
// Design      : bd_58f6_lut_buffer_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_58f6_lut_buffer_0,lut_buffer_v2_0_1_lut_buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "lut_buffer_v2_0_1_lut_buffer,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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

  wire bscanid_en_i;
  wire bscanid_en_o;
  wire capture_i;
  wire capture_o;
  wire drck_i;
  wire drck_o;
  wire reset_i;
  wire reset_o;
  wire runtest_i;
  wire runtest_o;
  wire sel_i;
  wire sel_o;
  wire shift_i;
  wire shift_o;
  wire tck_i;
  wire tck_o;
  wire tdi_i;
  wire tdi_o;
  wire tdo_i;
  wire tdo_o;
  wire tms_i;
  wire tms_o;
  wire update_i;
  wire update_o;
  wire [31:0]NLW_inst_bscanid_o_UNCONNECTED;

  (* C_EN_BSCANID_VEC = "0" *) 
  (* DONT_TOUCH *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lut_buffer_v2_0_1_lut_buffer inst
       (.bscanid_en_i(bscanid_en_i),
        .bscanid_en_o(bscanid_en_o),
        .bscanid_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bscanid_o(NLW_inst_bscanid_o_UNCONNECTED[31:0]),
        .capture_i(capture_i),
        .capture_o(capture_o),
        .drck_i(drck_i),
        .drck_o(drck_o),
        .reset_i(reset_i),
        .reset_o(reset_o),
        .runtest_i(runtest_i),
        .runtest_o(runtest_o),
        .sel_i(sel_i),
        .sel_o(sel_o),
        .shift_i(shift_i),
        .shift_o(shift_o),
        .tck_i(tck_i),
        .tck_o(tck_o),
        .tdi_i(tdi_i),
        .tdi_o(tdi_o),
        .tdo_i(tdo_i),
        .tdo_o(tdo_o),
        .tms_i(tms_i),
        .tms_o(tms_o),
        .update_i(update_i),
        .update_o(update_o));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SSBRCQ40MxSqdI65DGZN1mftpVDzrnXA6niCZQTB+CQtpIjro8Ml3/FYb2s8aksyDR1VhGBuL3X2
bIikLXz5oGnn3cLC5euzeNFbAR3ge6DkRJYa3u9AggJ42tV6P+AYTOsIzI4IVgBPkoPZVYe1UVvG
jmgAPPR2NE3OL3YfNR0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G7KLOIWVfI6lpiIUxJyB4Cruqr2qpl3U94SJaw1vEv04wy2RdX9NNNng1EQACPOJCBGy5pYZSSzJ
WrR1VafMr4Wmw5Dj/9Cy7/KTSJS/mtbZ/Z02M5hogyfWik1hqdDeUAIdpSIcA72762p+cMom5Syo
av/7lIG/5/ETUkUqMp7ZvKIzuPJUjdBkQxbTO8Hp4HRl2gXOR/D9cxNgyzRf7F8hXvOLApy7i7V8
U2nBbIe0+Vurk4mcQmPF5zrj9jUzqsGr0nf4zzdhI+gFedSRJ3UH0lQ7ud1jzTO+iUXS+6fr/68b
2HyVAahUvfvUdIt7NC+p41j0Zw8NGAL6IqOYvw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
kyQhYGJ9ge5mch8VSi+DV5bu0/14Z7bfTvz7ztTvDxaXiNVdVOaQRSX1XF9MH+KE4X2WVtZh1uih
/yb9UX6F6uAhRpo23Zjdtb8Dh3CkkeWQEt/m7PpDGfR0cq44tab7PkrIWIRcqo0ONM6cFEyrktzf
lTDI5UcAdPMwa9WNX4Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F2qAqxhyOh/z3Ht89t3V+fHVZ8pAdXylJIxS7GHXbyyWTAoBfn3tlyCHUveePkYAFVTbVudjFiUx
PDyB76Os7El8b2pEc/Wh3OISLDYzQAh8dLWdt+C7OhvBDfryReLSJ3q71jBIW0h7i+mMlm3HJSHu
QmeeVaivTMqObnjWfw/L4vsD8MugBWCi/dMIIE5VhtpTvHcqn0hi5dlT1oqlHXYPBB8cz54B8u+1
i4zZt0+cMj1bEHmsjWkipKDwoqziGIsZGxtGm5+SBn+HHt5eDfrgJKNQzEEO3lfSpHJU02xsTiZP
WjVtnU1mNkLl5Agah1TcGa+hgh4bBfAEWQKTdg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
3vWwvMvtbB1BAV0sniX0EKmgVPJY9QITs5zn6X4fRFVcSXUy9n9vS+oAjsgylaPOK/uYN1COCagP
5P+rz+thG660mgd3d1MlIFdaCQsqrl28roLKtLlyt+cIdHF6HGV8AQ0+gHWjqW7oUc+e1x56Gr5j
KFD3KtAci4ekXYbCDFXJaLMzhsNX+UTBS71MLhdg+tcQNIE3hhRhFwQRMDWp9Rsx22kKKp5x6S7/
emeRYMVVzqzLFy/mwtMJIfDh1Pdgy9jVBSew6pu2/UO2ITNlJiJ2E9N324IOAYW0W5bm0E5bYuEC
GidQxE8XVyBtmrdgTLMg4UXox8Y+lDyPzhqOPg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kiWGzT9SbJEH7bVbQjVwNUnTv7pAUp8yhW5Bwq5DehJ5SKXKjIasGcAhD99RYnPgnI4Fj0Mn+79v
vEQaae2MVQYFZ1vHbwQQAu15oNFz6csYhjarpZxIOME5xu9nEf/KsRMSQa1Ewj7SG5FRsUfR2/O8
2RpPPjyPCtPpoqJfWNMVWYYMk+IOGN2sUdhm09N4cgcY5B2Zzw06mZReYv+dunJ/N4PnNjReTRW8
JdObPijV0iX0iM2GAVHgP7dYrvGkddw8mDwUULi/irxDKtYrsSlCKyeQyUoxUyB8QJ7Q4LTfIIRu
E1GlwrTyvsY20hQ62b54LVJKLNNYqj3+9eL20w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eodNY9MZaYaCRLkW1EUygNxV/NwRSypQgf9h5+pShB/1iUnT0B0EGmEsS/x1lXAFXxqkvP5IcKiS
p2jj1wjD4cv0vu07nFENNlEsUc0tWeAlL0sfcJwPdKTEZprhZW2LE/pmnjeIrBBGcNqfhX/wpCYU
/pTILq9o0l2czcGeq3KicNhq5VMEFJfEQUeE/+SM2lwEUHhTRGzlPsn4DS7Fs0hMtUZkeCfg/D35
f8NURV9z8suFhyIGlDD+QClEiFACj5Kfi9G3VPyWidqXhDX6ZvxRBn4Kwxp6tiNVbBK8+HFeqV7N
4/FEPJVHT2BWzR6ftAdaujEVs7gOa2dAL4z4iw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
j9mEUB6YlzDa5moKcEte/LDcTiShg21u0ejseyB4gcRc6iTI/zEteRnOdmRWEva+LXIX3jgVMtNe
qjnfPw83w4z0xn5jfPEZ8iDjoNLAZyBavs4diNpK9NaFpPTlNEKS2PBZ3uwLZxKedhSGPzLY6byu
28IDaHtdL2EVbEcuDoBcFvfjZLp4HGpwqsrnvO14IBuBjIZmobtok+9WLikYU83wOC6dgtHfvYrH
NXWOdvqesAnpSfl7FlRK8hVZmDNWzQ5f+OX0VfaOJkoiOvSINw6nz7qWV0yz/79RHM4xHGoL8aOu
p5g5cWFQlTs5zEDSoydKiakpwr3RhwFKOYhCGKlkNOuvJO++iX7p60VLUqlUakW0PQabAWSjoFms
JzEB0QOP8vNzI/62vS9OMDrVdZ3aTuXeFLg+g/IFHmuHtSNuimR/G+o2r708Om3w1B0oCtqkHFFE
/TO0Xe4IJiips2RspFi9DWrbOhlDW01JaFnscq0/MjtaHW8ZeQsHVv2Q

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
k85XwG8ZEWHIj3B0OxaRhQ9DPZhA2AEmn1Fk5sSFQ9RUvPgjTU7sBcRdnykvi0cKB04EsWsaT3UH
OFZ27tF5UqrEfo9OPXtquL+wzgwXDxMrN3QymSRIeqnkVnr3FQ5ZLXMed/g8eugAO6BsK7ayc3q3
poNXvA3qAd0Qb/61R0Y8fC/mzAOZC1kmySJ+m5McBW3S/PSumlfFYgEJfqBBlhcJlDnbQC7JZ67S
uSRNCb58BruGJ0tU/J9g0nJrt8suR55k/GN7w9YOOL8KARIwKRZVH9+PqbpIbj3PFi4X/YTnWykH
CSrnlAxWCvDjLa43yhbtZtpvP8PYK+IZF6lG1Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2960)
`pragma protect data_block
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
`pragma protect end_protected
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
