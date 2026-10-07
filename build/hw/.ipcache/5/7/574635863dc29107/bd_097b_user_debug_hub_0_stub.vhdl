-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu Oct  1 03:11:49 2026
-- Host        : node06.local running 64-bit Rocky Linux release 8.9 (Green Obsidian)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_097b_user_debug_hub_0_stub.vhdl
-- Design      : bd_097b_user_debug_hub_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu50-fsvh2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_097b_user_debug_hub_0,bd_58f6,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_097b_user_debug_hub_0,bd_58f6,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=debug_bridge,x_ipVersion=3.0,x_ipCoreRevision=14,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_DEBUG_MODE=1,C_NUM_BS_MASTER=0,C_BSCAN_MUX=1,C_EN_BSCANID_VEC=false,C_USE_EXT_BSCAN=true,C_USE_STARTUP_CLK=false,C_ENABLE_CLK_DIVIDER=false,C_TWO_PRIM_MODE=false,C_USER_SCAN_CHAIN=1,C_CORE_TYPE=1,C_EN_INT_SIM=1,C_DCLK_HAS_RESET=0,C_USE_BUFR=0,C_XSDB_NUM_SLAVES=0,C_CORE_MINOR_ALPHA_VER=97,C_CORE_MINOR_VER=0,C_CORE_MAJOR_VER=1,C_BUILD_REVISION=0,C_MINOR_VERSION=1,C_MAJOR_VERSION=14,C_FIFO_STYLE=SUBCORE,C_DESIGN_TYPE=1,C_MASTER_INTF_TYPE=1,C_EN_PASSTHROUGH=0,C_XVC_HW_ID=0x0001,C_XVC_SW_ID=0x0001,C_PCIE_EXT_CFG_BASE_ADDR=0x400,C_PCIE_EXT_CFG_VSEC_REV_ID=0x0,C_PCIE_EXT_CFG_VSEC_LENGTH=0x020,C_PCIE_EXT_CFG_NEXT_PTR=0x000,C_PCIE_EXT_CFG_VSEC_ID=0x0008,Component_Name=bd_097b_user_debug_hub_0,C_CLK_INPUT_FREQ_HZ=300000000,C_S_AXI_DATA_WIDTH=32,C_S_AXI_ADDR_WIDTH=5,C_TCK_CLOCK_RATIO=8,C_USE_SOFTBSCAN=1,C_DEVICE_FAMILY=0,C_IR_WIDTH=0,C_CHIP_ID=0,C_IR_ID_INSTR=0,C_IR_USER1_INSTR=0,SLR_ASSIGNMENTS=}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,S_BSCAN_bscanid_en,S_BSCAN_capture,S_BSCAN_drck,S_BSCAN_reset,S_BSCAN_runtest,S_BSCAN_sel,S_BSCAN_shift,S_BSCAN_tck,S_BSCAN_tdi,S_BSCAN_tdo,S_BSCAN_tms,S_BSCAN_update";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_BSCAN_bscanid_en : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN BSCANID_EN";
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
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "bd_58f6,Vivado 2025.1";
begin
end;
