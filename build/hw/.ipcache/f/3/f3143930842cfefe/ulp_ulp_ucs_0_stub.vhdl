-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu Oct  1 03:10:17 2026
-- Host        : node06.local running 64-bit Rocky Linux release 8.9 (Green Obsidian)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_ulp_ucs_0_stub.vhdl
-- Design      : ulp_ulp_ucs_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu50-fsvh2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    aclk_freerun : in STD_LOGIC;
    aclk_ctrl : in STD_LOGIC;
    aclk_pcie : in STD_LOGIC;
    aclk_kernel_00 : out STD_LOGIC;
    aclk_kernel_01 : out STD_LOGIC;
    aclk_hbm : out STD_LOGIC;
    aclk_hbm_refclk : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    aresetn_pcie : in STD_LOGIC;
    aresetn_ctrl_slr0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_ctrl_slr1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_pcie_slr0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_pcie_slr1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_kernel_00_slr0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_kernel_00_slr1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_kernel_01_slr0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_kernel_01_slr1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_hbm : out STD_LOGIC_VECTOR ( 0 to 0 );
    shutdown_clocks : in STD_LOGIC;
    s_axi_ctrl_mgmt_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_ctrl_mgmt_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_mgmt_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_mgmt_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_mgmt_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_mgmt_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_mgmt_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_mgmt_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_mgmt_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_mgmt_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_mgmt_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_mgmt_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_ctrl_mgmt_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_mgmt_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_mgmt_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_mgmt_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_mgmt_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_mgmt_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_mgmt_rready : in STD_LOGIC_VECTOR ( 0 to 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ulp_ulp_ucs_0,bd_22c0,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ulp_ulp_ucs_0,bd_22c0,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=shell_ucs_subsystem,x_ipVersion=3.0,x_ipCoreRevision=5,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,Component_Name=ulp_ulp_ucs_0,NUM_SLR=2,NUM_RESET_FANOUT_FLOPS_SLR0=4,NUM_RESET_FANOUT_FLOPS_SLR1=4,NUM_RESET_FANOUT_FLOPS_SLR2=4,NUM_RESET_FANOUT_FLOPS_SLR3=4,HAS_HBM_CLK=3,FREQ_CNT_REF_CLK_HZ=100000,DISABLE_THROTTLING=false,ENABLE_SHUTDOWN_CLOCKS=true,DISABLE_MGMT_JSON_METADATA=false,FREQ_HZ_KERNEL_CLOCK_00=300,FREQ_HZ_KERNEL_CLOCK_01=500,FREQ_HZ_KERNEL_CLOCK_02=0,FREQ_HZ_KERNEL_CLOCK_03=0,FREQ_HZ_KERNEL_CLOCK_04=0,FREQ_HZ_KERNEL_CLOCK_05=0,ENABLE_SCALABLE_KERNEL_CLOCK_00=true,ENABLE_SCALABLE_KERNEL_CLOCK_01=true,ENABLE_SCALABLE_KERNEL_CLOCK_02=true,ENABLE_SCALABLE_KERNEL_CLOCK_03=true,ENABLE_SCALABLE_KERNEL_CLOCK_04=true,ENABLE_SCALABLE_KERNEL_CLOCK_05=true,ENABLE_THROTTLING_KERNEL_CLOCK_00=true,ENABLE_THROTTLING_KERNEL_CLOCK_01=true,ENABLE_THROTTLING_KERNEL_CLOCK_02=true,ENABLE_THROTTLING_KERNEL_CLOCK_03=true,ENABLE_THROTTLING_KERNEL_CLOCK_04=true,ENABLE_THROTTLING_KERNEL_CLOCK_05=true,ENABLE_CONT_KERNEL_CLOCK_00=false,ENABLE_CONT_KERNEL_CLOCK_01=false,ENABLE_CONT_KERNEL_CLOCK_02=false,ENABLE_CONT_KERNEL_CLOCK_03=false,ENABLE_CONT_KERNEL_CLOCK_04=false,ENABLE_CONT_KERNEL_CLOCK_05=false,EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_00=1,EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_01=1,EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_02=1,EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_03=1,EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_04=1,EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_05=1,MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_00=0,MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_01=0,MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_02=0,MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_03=0,MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_04=0,MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_05=0,CLK_DOMAIN_ACLK_KERNEL_00=cd_aclk_kernel_00,CLK_DOMAIN_ACLK_KERNEL_01=cd_aclk_kernel_01,CLK_DOMAIN_ACLK_KERNEL_02=cd_aclk_kernel_02,CLK_DOMAIN_ACLK_KERNEL_03=cd_aclk_kernel_03,CLK_DOMAIN_ACLK_KERNEL_04=cd_aclk_kernel_04,CLK_DOMAIN_ACLK_KERNEL_05=cd_aclk_kernel_05,CLK_DOMAIN_CLK_HBM=cd_aclk_hbm_00,VERSION.SUBSYSTEM_ID=0x07,VERSION.MAJOR_VERSION=3,VERSION.MINOR_VERSION=0,VERSION.CORE_REVISION=5,VERSION.PATCH_REVISION=0,VERSION.RESERVED_TAG=0x00000000,ENABLE_FULL_ADDRESS_ASSIGNMENTS=true,MGMT_PF_BASE_ADDRESS=0x01000000,SUPPORT_NEW_INTERRUPT_SCHEMA=true,EP_UCS_BUILD_INFO_00_OFFSET=0x00000000,EP_UCS_BUILD_INFO_00_RANGE=4k,EP_GAPPING_DEMAND_00_OFFSET=0x00001000,EP_GAPPING_DEMAND_00_RANGE=4k,EP_GAPPING_DEMAND_00_PF=0x0,EP_GAPPING_DEMAND_00_BAR=0x0,EP_GAPPING_DEMAND_00_REGABS=xilinx.com_reg_abs_ucs_gapping_demand_1.0,EP_UCS_CONTROL_STATUS_00_OFFSET=0x00002000,EP_UCS_CONTROL_STATUS_00_RANGE=4k,EP_UCS_CONTROL_STATUS_00_PF=0x0,EP_UCS_CONTROL_STATUS_00_BAR=0x0,EP_UCS_CONTROL_STATUS_00_REGABS=xilinx.com_reg_abs_ucs_control_status_1.0,EP_ACLK_KERNEL_00_OFFSET=0x00003000,EP_ACLK_KERNEL_00_RANGE=4k,EP_ACLK_KERNEL_00_PF=0x0,EP_ACLK_KERNEL_00_BAR=0x0,EP_ACLK_KERNEL_00_REGABS=xilinx.com_reg_abs_clkwiz_1.0,EP_ACLK_KERNEL_01_OFFSET=0x00004000,EP_ACLK_KERNEL_01_RANGE=4k,EP_ACLK_KERNEL_01_PF=0x0,EP_ACLK_KERNEL_01_BAR=0x0,EP_ACLK_KERNEL_01_REGABS=xilinx.com_reg_abs_clkwiz_1.0,EP_ACLK_KERNEL_02_OFFSET=0x00005000,EP_ACLK_KERNEL_02_RANGE=4k,EP_ACLK_KERNEL_02_PF=0x0,EP_ACLK_KERNEL_02_BAR=0x0,EP_ACLK_KERNEL_02_REGABS=xilinx.com_reg_abs_clkwiz_1.0,EP_ACLK_KERNEL_03_OFFSET=0x00006000,EP_ACLK_KERNEL_03_RANGE=4k,EP_ACLK_KERNEL_03_PF=0x0,EP_ACLK_KERNEL_03_BAR=0x0,EP_ACLK_KERNEL_03_REGABS=xilinx.com_reg_abs_clkwiz_1.0,EP_ACLK_KERNEL_04_OFFSET=0x00007000,EP_ACLK_KERNEL_04_RANGE=4k,EP_ACLK_KERNEL_04_PF=0x0,EP_ACLK_KERNEL_04_BAR=0x0,EP_ACLK_KERNEL_04_REGABS=xilinx.com_reg_abs_clkwiz_1.0,EP_ACLK_KERNEL_05_OFFSET=0x00008000,EP_ACLK_KERNEL_05_RANGE=4k,EP_ACLK_KERNEL_05_PF=0x0,EP_ACLK_KERNEL_05_BAR=0x0,EP_ACLK_KERNEL_05_REGABS=xilinx.com_reg_abs_clkwiz_1.0,EP_FREQ_CNT_ACLK_KERNEL_00_OFFSET=0x00009000,EP_FREQ_CNT_ACLK_KERNEL_00_RANGE=4k,EP_FREQ_CNT_ACLK_KERNEL_00_PF=0x0,EP_FREQ_CNT_ACLK_KERNEL_00_BAR=0x0,EP_FREQ_CNT_ACLK_KERNEL_00_REGABS=xilinx.com_reg_abs_frequency_counter_1.0,EP_FREQ_CNT_ACLK_KERNEL_01_OFFSET=0x0000A000,EP_FREQ_CNT_ACLK_KERNEL_01_RANGE=4k,EP_FREQ_CNT_ACLK_KERNEL_01_PF=0x0,EP_FREQ_CNT_ACLK_KERNEL_01_BAR=0x0,EP_FREQ_CNT_ACLK_KERNEL_01_REGABS=xilinx.com_reg_abs_frequency_counter_1.0,EP_FREQ_CNT_ACLK_KERNEL_02_OFFSET=0x0000B000,EP_FREQ_CNT_ACLK_KERNEL_02_RANGE=4k,EP_FREQ_CNT_ACLK_KERNEL_02_PF=0x0,EP_FREQ_CNT_ACLK_KERNEL_02_BAR=0x0,EP_FREQ_CNT_ACLK_KERNEL_02_REGABS=xilinx.com_reg_abs_frequency_counter_1.0,EP_FREQ_CNT_ACLK_KERNEL_03_OFFSET=0x0000C000,EP_FREQ_CNT_ACLK_KERNEL_03_RANGE=4k,EP_FREQ_CNT_ACLK_KERNEL_03_PF=0x0,EP_FREQ_CNT_ACLK_KERNEL_03_BAR=0x0,EP_FREQ_CNT_ACLK_KERNEL_03_REGABS=xilinx.com_reg_abs_frequency_counter_1.0,EP_FREQ_CNT_ACLK_KERNEL_04_OFFSET=0x0000D000,EP_FREQ_CNT_ACLK_KERNEL_04_RANGE=4k,EP_FREQ_CNT_ACLK_KERNEL_04_PF=0x0,EP_FREQ_CNT_ACLK_KERNEL_04_BAR=0x0,EP_FREQ_CNT_ACLK_KERNEL_04_REGABS=xilinx.com_reg_abs_frequency_counter_1.0,EP_FREQ_CNT_ACLK_KERNEL_05_OFFSET=0x0000E000,EP_FREQ_CNT_ACLK_KERNEL_05_RANGE=4k,EP_FREQ_CNT_ACLK_KERNEL_05_PF=0x0,EP_FREQ_CNT_ACLK_KERNEL_05_BAR=0x0,EP_FREQ_CNT_ACLK_KERNEL_05_REGABS=xilinx.com_reg_abs_frequency_counter_1.0,EP_ACLK_HBM_00_OFFSET=0x0000F000,EP_ACLK_HBM_00_RANGE=4k,EP_ACLK_HBM_00_PF=0x0,EP_ACLK_HBM_00_BAR=0x0,EP_ACLK_HBM_00_REGABS=xilinx.com_reg_abs_clkwiz_1.0,EP_FREQ_CNT_ACLK_HBM_00_OFFSET=0x00010000,EP_FREQ_CNT_ACLK_HBM_00_RANGE=4k,EP_FREQ_CNT_ACLK_HBM_00_PF=0x0,EP_FREQ_CNT_ACLK_HBM_00_BAR=0x0,EP_FREQ_CNT_ACLK_HBM_00_REGABS=xilinx.com_reg_abs_frequency_counter_1.0,EP_FREQ_CNT_ACLK_00_OFFSET=0x00011000,EP_FREQ_CNT_ACLK_00_RANGE=4k,EP_FREQ_CNT_ACLK_00_PF=0x0,EP_FREQ_CNT_ACLK_00_BAR=0x0,EP_FREQ_CNT_ACLK_00_REGABS=xilinx.com_reg_abs_frequency_counter_1.0,VERSION.PERFORCE_CL=3478949,VERSION.VIV_VERSION=0x202210,SLR_ASSIGNMENTS=}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "aclk_freerun,aclk_ctrl,aclk_pcie,aclk_kernel_00,aclk_kernel_01,aclk_hbm,aclk_hbm_refclk,aresetn_ctrl,aresetn_pcie,aresetn_ctrl_slr0[0:0],aresetn_ctrl_slr1[0:0],aresetn_pcie_slr0[0:0],aresetn_pcie_slr1[0:0],aresetn_kernel_00_slr0[0:0],aresetn_kernel_00_slr1[0:0],aresetn_kernel_01_slr0[0:0],aresetn_kernel_01_slr1[0:0],aresetn_hbm[0:0],shutdown_clocks,s_axi_ctrl_mgmt_awaddr[24:0],s_axi_ctrl_mgmt_awprot[2:0],s_axi_ctrl_mgmt_awvalid[0:0],s_axi_ctrl_mgmt_awready[0:0],s_axi_ctrl_mgmt_wdata[31:0],s_axi_ctrl_mgmt_wstrb[3:0],s_axi_ctrl_mgmt_wvalid[0:0],s_axi_ctrl_mgmt_wready[0:0],s_axi_ctrl_mgmt_bresp[1:0],s_axi_ctrl_mgmt_bvalid[0:0],s_axi_ctrl_mgmt_bready[0:0],s_axi_ctrl_mgmt_araddr[24:0],s_axi_ctrl_mgmt_arprot[2:0],s_axi_ctrl_mgmt_arvalid[0:0],s_axi_ctrl_mgmt_arready[0:0],s_axi_ctrl_mgmt_rdata[31:0],s_axi_ctrl_mgmt_rresp[1:0],s_axi_ctrl_mgmt_rvalid[0:0],s_axi_ctrl_mgmt_rready[0:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk_freerun : signal is "xilinx.com:signal:clock:1.0 CLK.aclk_freerun CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk_freerun : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk_freerun : signal is "XIL_INTERFACENAME CLK.aclk_freerun, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aclk_ctrl : signal is "xilinx.com:signal:clock:1.0 CLK.aclk_ctrl CLK";
  attribute X_INTERFACE_MODE of aclk_ctrl : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aclk_ctrl : signal is "XIL_INTERFACENAME CLK.aclk_ctrl, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, ASSOCIATED_BUSIF s_axi_ctrl_mgmt, ASSOCIATED_RESET aresetn_ctrl:aresetn_ctrl_slr0:aresetn_ctrl_slr1, INSERT_VIP 0, ASSOCIATED_CLKEN CE";
  attribute X_INTERFACE_INFO of aclk_pcie : signal is "xilinx.com:signal:clock:1.0 CLK.aclk_pcie CLK";
  attribute X_INTERFACE_MODE of aclk_pcie : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aclk_pcie : signal is "XIL_INTERFACENAME CLK.aclk_pcie, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_pcie_00, ASSOCIATED_RESET aresetn_pcie:aresetn_pcie_slr0:aresetn_pcie_slr1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aclk_kernel_00 : signal is "xilinx.com:signal:clock:1.0 CLK.aclk_kernel_00 CLK";
  attribute X_INTERFACE_MODE of aclk_kernel_00 : signal is "master";
  attribute X_INTERFACE_PARAMETER of aclk_kernel_00 : signal is "XIL_INTERFACENAME CLK.aclk_kernel_00, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, ASSOCIATED_RESET aresetn_kernel_00_slr0:aresetn_kernel_00_slr1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aclk_kernel_01 : signal is "xilinx.com:signal:clock:1.0 CLK.aclk_kernel_01 CLK";
  attribute X_INTERFACE_MODE of aclk_kernel_01 : signal is "master";
  attribute X_INTERFACE_PARAMETER of aclk_kernel_01 : signal is "XIL_INTERFACENAME CLK.aclk_kernel_01, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_01, ASSOCIATED_RESET aresetn_kernel_01_slr0:aresetn_kernel_01_slr1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aclk_hbm : signal is "xilinx.com:signal:clock:1.0 CLK.aclk_hbm CLK";
  attribute X_INTERFACE_MODE of aclk_hbm : signal is "master";
  attribute X_INTERFACE_PARAMETER of aclk_hbm : signal is "XIL_INTERFACENAME CLK.aclk_hbm, FREQ_HZ 450000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_hbm_00, ASSOCIATED_RESET aresetn_hbm, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aclk_hbm_refclk : signal is "xilinx.com:signal:clock:1.0 CLK.aclk_hbm_refclk CLK";
  attribute X_INTERFACE_MODE of aclk_hbm_refclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aclk_hbm_refclk : signal is "XIL_INTERFACENAME CLK.aclk_hbm_refclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_ctrl : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl RST";
  attribute X_INTERFACE_MODE of aresetn_ctrl : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn_ctrl : signal is "XIL_INTERFACENAME RST.aresetn_ctrl, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_pcie : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_pcie RST";
  attribute X_INTERFACE_MODE of aresetn_pcie : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn_pcie : signal is "XIL_INTERFACENAME RST.aresetn_pcie, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_ctrl_slr0 : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl_slr0 RST";
  attribute X_INTERFACE_MODE of aresetn_ctrl_slr0 : signal is "master";
  attribute X_INTERFACE_PARAMETER of aresetn_ctrl_slr0 : signal is "XIL_INTERFACENAME RST.aresetn_ctrl_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_ctrl_slr1 : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl_slr1 RST";
  attribute X_INTERFACE_MODE of aresetn_ctrl_slr1 : signal is "master";
  attribute X_INTERFACE_PARAMETER of aresetn_ctrl_slr1 : signal is "XIL_INTERFACENAME RST.aresetn_ctrl_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_pcie_slr0 : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_pcie_slr0 RST";
  attribute X_INTERFACE_MODE of aresetn_pcie_slr0 : signal is "master";
  attribute X_INTERFACE_PARAMETER of aresetn_pcie_slr0 : signal is "XIL_INTERFACENAME RST.aresetn_pcie_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_pcie_slr1 : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_pcie_slr1 RST";
  attribute X_INTERFACE_MODE of aresetn_pcie_slr1 : signal is "master";
  attribute X_INTERFACE_PARAMETER of aresetn_pcie_slr1 : signal is "XIL_INTERFACENAME RST.aresetn_pcie_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_kernel_00_slr0 : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_kernel_00_slr0 RST";
  attribute X_INTERFACE_MODE of aresetn_kernel_00_slr0 : signal is "master";
  attribute X_INTERFACE_PARAMETER of aresetn_kernel_00_slr0 : signal is "XIL_INTERFACENAME RST.aresetn_kernel_00_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_kernel_00_slr1 : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_kernel_00_slr1 RST";
  attribute X_INTERFACE_MODE of aresetn_kernel_00_slr1 : signal is "master";
  attribute X_INTERFACE_PARAMETER of aresetn_kernel_00_slr1 : signal is "XIL_INTERFACENAME RST.aresetn_kernel_00_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_kernel_01_slr0 : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_kernel_01_slr0 RST";
  attribute X_INTERFACE_MODE of aresetn_kernel_01_slr0 : signal is "master";
  attribute X_INTERFACE_PARAMETER of aresetn_kernel_01_slr0 : signal is "XIL_INTERFACENAME RST.aresetn_kernel_01_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_kernel_01_slr1 : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_kernel_01_slr1 RST";
  attribute X_INTERFACE_MODE of aresetn_kernel_01_slr1 : signal is "master";
  attribute X_INTERFACE_PARAMETER of aresetn_kernel_01_slr1 : signal is "XIL_INTERFACENAME RST.aresetn_kernel_01_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_hbm : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_hbm RST";
  attribute X_INTERFACE_MODE of aresetn_hbm : signal is "master";
  attribute X_INTERFACE_PARAMETER of aresetn_hbm : signal is "XIL_INTERFACENAME RST.aresetn_hbm, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWADDR";
  attribute X_INTERFACE_MODE of s_axi_ctrl_mgmt_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_ctrl_mgmt_awaddr : signal is "XIL_INTERFACENAME s_axi_ctrl_mgmt, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 1";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWPROT";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WSTRB";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARPROT";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RREADY";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "bd_22c0,Vivado 2025.1";
begin
end;
