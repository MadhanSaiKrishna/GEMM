-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu Oct  1 03:08:43 2026
-- Host        : node06.local running 64-bit Rocky Linux release 8.9 (Green Obsidian)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_7cf0_bsip_0_stub.vhdl
-- Design      : bd_7cf0_bsip_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu50-fsvh2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    drck : out STD_LOGIC;
    reset : out STD_LOGIC;
    sel : out STD_LOGIC;
    shift : out STD_LOGIC;
    tdi : out STD_LOGIC;
    update : out STD_LOGIC;
    capture : out STD_LOGIC;
    runtest : out STD_LOGIC;
    tck : out STD_LOGIC;
    tms : out STD_LOGIC;
    tap_tdo : out STD_LOGIC;
    tdo : in STD_LOGIC;
    tap_tdi : in STD_LOGIC;
    tap_tms : in STD_LOGIC;
    tap_tck : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_7cf0_bsip_0,bsip_v1_1_1_bsip,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_7cf0_bsip_0,bsip_v1_1_1_bsip,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=bsip,x_ipVersion=1.1,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_EN_MUX=0,C_EN_MUX_EXT_BS=0,C_USE_SOFTBSCAN=1,C_DEVICE_FAMILY=0,C_IR_WIDTH=0,C_CHIP_ID=0,C_IR_ID_INSTR=0,C_IR_USER1_INSTR=0,C_USER_SCAN_CHAIN=1}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute dont_touch : string;
  attribute dont_touch of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "true";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "drck,reset,sel,shift,tdi,update,capture,runtest,tck,tms,tap_tdo,tdo,tap_tdi,tap_tms,tap_tck";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of drck : signal is "xilinx.com:interface:bscan:1.0 m_bscan DRCK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of drck : signal is "master";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:interface:bscan:1.0 m_bscan RESET";
  attribute X_INTERFACE_INFO of sel : signal is "xilinx.com:interface:bscan:1.0 m_bscan SEL";
  attribute X_INTERFACE_INFO of shift : signal is "xilinx.com:interface:bscan:1.0 m_bscan SHIFT";
  attribute X_INTERFACE_INFO of tdi : signal is "xilinx.com:interface:bscan:1.0 m_bscan TDI";
  attribute X_INTERFACE_INFO of update : signal is "xilinx.com:interface:bscan:1.0 m_bscan UPDATE";
  attribute X_INTERFACE_INFO of capture : signal is "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE";
  attribute X_INTERFACE_INFO of runtest : signal is "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST";
  attribute X_INTERFACE_INFO of tck : signal is "xilinx.com:interface:bscan:1.0 m_bscan TCK";
  attribute X_INTERFACE_INFO of tms : signal is "xilinx.com:interface:bscan:1.0 m_bscan TMS";
  attribute X_INTERFACE_INFO of tdo : signal is "xilinx.com:interface:bscan:1.0 m_bscan TDO";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "bsip_v1_1_1_bsip,Vivado 2025.1";
begin
end;
