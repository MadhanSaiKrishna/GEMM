-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu Oct  1 03:11:49 2026
-- Host        : node06.local running 64-bit Rocky Linux release 8.9 (Green Obsidian)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_097b_user_debug_hub_0_sim_netlist.vhdl
-- Design      : bd_097b_user_debug_hub_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu50-fsvh2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_58f6 is
  port (
    S_BSCAN_bscanid_en : in STD_LOGIC;
    S_BSCAN_capture : in STD_LOGIC;
    S_BSCAN_drck : in STD_LOGIC;
    S_BSCAN_reset : in STD_LOGIC;
    S_BSCAN_runtest : in STD_LOGIC;
    S_BSCAN_sel : in STD_LOGIC;
    S_BSCAN_shift : in STD_LOGIC;
    S_BSCAN_tck : in STD_LOGIC;
    S_BSCAN_tdi : in STD_LOGIC;
    S_BSCAN_tdo : out STD_LOGIC;
    S_BSCAN_tms : in STD_LOGIC;
    S_BSCAN_update : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_58f6 : entity is "bd_097b_user_debug_hub_0.hwdef";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_58f6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_58f6 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_58f6_lut_buffer_0 is
  port (
    tdi_i : in STD_LOGIC;
    tms_i : in STD_LOGIC;
    tck_i : in STD_LOGIC;
    drck_i : in STD_LOGIC;
    sel_i : in STD_LOGIC;
    shift_i : in STD_LOGIC;
    update_i : in STD_LOGIC;
    capture_i : in STD_LOGIC;
    runtest_i : in STD_LOGIC;
    reset_i : in STD_LOGIC;
    bscanid_en_i : in STD_LOGIC;
    tdo_o : out STD_LOGIC;
    tdi_o : out STD_LOGIC;
    tms_o : out STD_LOGIC;
    tck_o : out STD_LOGIC;
    drck_o : out STD_LOGIC;
    sel_o : out STD_LOGIC;
    shift_o : out STD_LOGIC;
    update_o : out STD_LOGIC;
    capture_o : out STD_LOGIC;
    runtest_o : out STD_LOGIC;
    reset_o : out STD_LOGIC;
    bscanid_en_o : out STD_LOGIC;
    tdo_i : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_58f6_lut_buffer_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_58f6_xsdbm_0 is
  port (
    update : in STD_LOGIC;
    capture : in STD_LOGIC;
    reset : in STD_LOGIC;
    runtest : in STD_LOGIC;
    tck : in STD_LOGIC;
    tms : in STD_LOGIC;
    tdi : in STD_LOGIC;
    sel : in STD_LOGIC;
    shift : in STD_LOGIC;
    drck : in STD_LOGIC;
    tdo : out STD_LOGIC;
    bscanid_en : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_58f6_xsdbm_0;
  signal lut_buffer_m_bscan_BSCANID_EN : STD_LOGIC;
  signal lut_buffer_m_bscan_CAPTURE : STD_LOGIC;
  signal lut_buffer_m_bscan_DRCK : STD_LOGIC;
  signal lut_buffer_m_bscan_RESET : STD_LOGIC;
  signal lut_buffer_m_bscan_RUNTEST : STD_LOGIC;
  signal lut_buffer_m_bscan_SEL : STD_LOGIC;
  signal lut_buffer_m_bscan_SHIFT : STD_LOGIC;
  signal lut_buffer_m_bscan_TCK : STD_LOGIC;
  signal lut_buffer_m_bscan_TDI : STD_LOGIC;
  signal lut_buffer_m_bscan_TDO : STD_LOGIC;
  signal lut_buffer_m_bscan_TMS : STD_LOGIC;
  signal lut_buffer_m_bscan_UPDATE : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of lut_buffer : label is "bd_58f6_lut_buffer_0,lut_buffer_v2_0_1_lut_buffer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of lut_buffer : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of lut_buffer : label is "lut_buffer_v2_0_1_lut_buffer,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of xsdbm : label is "bd_58f6_xsdbm_0,xsdbm_v3_0_4_xsdbm,{}";
  attribute DEBUG_CORE_INFO : string;
  attribute DEBUG_CORE_INFO of xsdbm : label is "xsdbm,labtools_xsdbm_v3_00_a,{C_BSCAN_MODE=false,C_BSCAN_MODE_WITH_CORE=false,C_CLK_INPUT_FREQ_HZ=300000000,C_ENABLE_CLK_DIVIDER=false,C_EN_BSCANID_VEC=false,C_NUM_BSCAN_MASTER_PORTS=0,C_TWO_PRIM_MODE=false,C_USER_SCAN_CHAIN=1,C_USE_EXT_BSCAN=true,C_XSDB_NUM_SLAVES=0,component_name=xsdbm_CV}";
  attribute DEBUG_PORT_clk : string;
  attribute DEBUG_PORT_clk of xsdbm : label is "";
  attribute DowngradeIPIdentifiedWarnings of xsdbm : label is "yes";
  attribute IS_DEBUG_CORE : boolean;
  attribute IS_DEBUG_CORE of xsdbm : label is std.standard.true;
  attribute X_CORE_INFO of xsdbm : label is "xsdbm_v3_0_4_xsdbm,Vivado 2025.1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_BSCAN_bscanid_en : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN BSCANID_EN";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of S_BSCAN_bscanid_en : signal is "Slave";
  attribute X_INTERFACE_INFO of S_BSCAN_capture : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN CAPTURE";
  attribute X_INTERFACE_INFO of S_BSCAN_drck : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN DRCK";
  attribute X_INTERFACE_INFO of S_BSCAN_reset : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN RESET";
  attribute X_INTERFACE_INFO of S_BSCAN_runtest : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN RUNTEST";
  attribute X_INTERFACE_INFO of S_BSCAN_sel : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN SEL";
  attribute X_INTERFACE_INFO of S_BSCAN_shift : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN SHIFT";
  attribute X_INTERFACE_INFO of S_BSCAN_tck : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TCK";
  attribute X_INTERFACE_INFO of S_BSCAN_tdi : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TDI";
  attribute X_INTERFACE_INFO of S_BSCAN_tdo : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TDO";
  attribute X_INTERFACE_INFO of S_BSCAN_tms : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TMS";
  attribute X_INTERFACE_INFO of S_BSCAN_update : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN UPDATE";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
begin
lut_buffer: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_58f6_lut_buffer_0
     port map (
      bscanid_en_i => S_BSCAN_bscanid_en,
      bscanid_en_o => lut_buffer_m_bscan_BSCANID_EN,
      capture_i => S_BSCAN_capture,
      capture_o => lut_buffer_m_bscan_CAPTURE,
      drck_i => S_BSCAN_drck,
      drck_o => lut_buffer_m_bscan_DRCK,
      reset_i => S_BSCAN_reset,
      reset_o => lut_buffer_m_bscan_RESET,
      runtest_i => S_BSCAN_runtest,
      runtest_o => lut_buffer_m_bscan_RUNTEST,
      sel_i => S_BSCAN_sel,
      sel_o => lut_buffer_m_bscan_SEL,
      shift_i => S_BSCAN_shift,
      shift_o => lut_buffer_m_bscan_SHIFT,
      tck_i => S_BSCAN_tck,
      tck_o => lut_buffer_m_bscan_TCK,
      tdi_i => S_BSCAN_tdi,
      tdi_o => lut_buffer_m_bscan_TDI,
      tdo_i => lut_buffer_m_bscan_TDO,
      tdo_o => S_BSCAN_tdo,
      tms_i => S_BSCAN_tms,
      tms_o => lut_buffer_m_bscan_TMS,
      update_i => S_BSCAN_update,
      update_o => lut_buffer_m_bscan_UPDATE
    );
xsdbm: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_58f6_xsdbm_0
     port map (
      bscanid_en => lut_buffer_m_bscan_BSCANID_EN,
      capture => lut_buffer_m_bscan_CAPTURE,
      clk => clk,
      drck => lut_buffer_m_bscan_DRCK,
      reset => lut_buffer_m_bscan_RESET,
      runtest => lut_buffer_m_bscan_RUNTEST,
      sel => lut_buffer_m_bscan_SEL,
      shift => lut_buffer_m_bscan_SHIFT,
      tck => lut_buffer_m_bscan_TCK,
      tdi => lut_buffer_m_bscan_TDI,
      tdo => lut_buffer_m_bscan_TDO,
      tms => lut_buffer_m_bscan_TMS,
      update => lut_buffer_m_bscan_UPDATE
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    S_BSCAN_bscanid_en : in STD_LOGIC;
    S_BSCAN_capture : in STD_LOGIC;
    S_BSCAN_drck : in STD_LOGIC;
    S_BSCAN_reset : in STD_LOGIC;
    S_BSCAN_runtest : in STD_LOGIC;
    S_BSCAN_sel : in STD_LOGIC;
    S_BSCAN_shift : in STD_LOGIC;
    S_BSCAN_tck : in STD_LOGIC;
    S_BSCAN_tdi : in STD_LOGIC;
    S_BSCAN_tdo : out STD_LOGIC;
    S_BSCAN_tms : in STD_LOGIC;
    S_BSCAN_update : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_097b_user_debug_hub_0,bd_58f6,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_58f6,Vivado 2025.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "bd_097b_user_debug_hub_0.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_BSCAN_bscanid_en : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN BSCANID_EN";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of S_BSCAN_bscanid_en : signal is "slave";
  attribute X_INTERFACE_INFO of S_BSCAN_capture : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN CAPTURE";
  attribute X_INTERFACE_INFO of S_BSCAN_drck : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN DRCK";
  attribute X_INTERFACE_INFO of S_BSCAN_reset : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN RESET";
  attribute X_INTERFACE_INFO of S_BSCAN_runtest : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN RUNTEST";
  attribute X_INTERFACE_INFO of S_BSCAN_sel : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN SEL";
  attribute X_INTERFACE_INFO of S_BSCAN_shift : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN SHIFT";
  attribute X_INTERFACE_INFO of S_BSCAN_tck : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TCK";
  attribute X_INTERFACE_INFO of S_BSCAN_tdi : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TDI";
  attribute X_INTERFACE_INFO of S_BSCAN_tdo : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TDO";
  attribute X_INTERFACE_INFO of S_BSCAN_tms : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TMS";
  attribute X_INTERFACE_INFO of S_BSCAN_update : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN UPDATE";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.clk CLK";
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_58f6
     port map (
      S_BSCAN_bscanid_en => S_BSCAN_bscanid_en,
      S_BSCAN_capture => S_BSCAN_capture,
      S_BSCAN_drck => S_BSCAN_drck,
      S_BSCAN_reset => S_BSCAN_reset,
      S_BSCAN_runtest => S_BSCAN_runtest,
      S_BSCAN_sel => S_BSCAN_sel,
      S_BSCAN_shift => S_BSCAN_shift,
      S_BSCAN_tck => S_BSCAN_tck,
      S_BSCAN_tdi => S_BSCAN_tdi,
      S_BSCAN_tdo => S_BSCAN_tdo,
      S_BSCAN_tms => S_BSCAN_tms,
      S_BSCAN_update => S_BSCAN_update,
      clk => clk
    );
end STRUCTURE;
