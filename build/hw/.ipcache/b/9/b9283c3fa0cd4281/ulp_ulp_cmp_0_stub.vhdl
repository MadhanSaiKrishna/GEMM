-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu Oct  1 03:13:28 2026
-- Host        : node06.local running 64-bit Rocky Linux release 8.9 (Green Obsidian)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_ulp_cmp_0_stub.vhdl
-- Design      : ulp_ulp_cmp_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu50-fsvh2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    aclk_ctrl : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    s_axi_ctrl_user_debug_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_user_debug_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_user_debug_arready : out STD_LOGIC;
    s_axi_ctrl_user_debug_arvalid : in STD_LOGIC;
    s_axi_ctrl_user_debug_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_user_debug_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_user_debug_awready : out STD_LOGIC;
    s_axi_ctrl_user_debug_awvalid : in STD_LOGIC;
    s_axi_ctrl_user_debug_bready : in STD_LOGIC;
    s_axi_ctrl_user_debug_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_user_debug_bvalid : out STD_LOGIC;
    s_axi_ctrl_user_debug_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_user_debug_rready : in STD_LOGIC;
    s_axi_ctrl_user_debug_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_user_debug_rvalid : out STD_LOGIC;
    s_axi_ctrl_user_debug_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_user_debug_wready : out STD_LOGIC;
    s_axi_ctrl_user_debug_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_user_debug_wvalid : in STD_LOGIC;
    s_axi_ctrl_mgmt_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_mgmt_arready : out STD_LOGIC;
    s_axi_ctrl_mgmt_arvalid : in STD_LOGIC;
    s_axi_ctrl_mgmt_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_mgmt_awready : out STD_LOGIC;
    s_axi_ctrl_mgmt_awvalid : in STD_LOGIC;
    s_axi_ctrl_mgmt_bready : in STD_LOGIC;
    s_axi_ctrl_mgmt_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_mgmt_bvalid : out STD_LOGIC;
    s_axi_ctrl_mgmt_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_mgmt_rready : in STD_LOGIC;
    s_axi_ctrl_mgmt_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_mgmt_rvalid : out STD_LOGIC;
    s_axi_ctrl_mgmt_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_mgmt_wready : out STD_LOGIC;
    s_axi_ctrl_mgmt_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_mgmt_wvalid : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ulp_ulp_cmp_0,bd_097b,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ulp_ulp_cmp_0,bd_097b,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=shell_cmp_subsystem,x_ipVersion=3.0,x_ipCoreRevision=6,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,Component_Name=ulp_ulp_cmp_0,VERSION.SUBSYSTEM_ID=0x03,VERSION.MAJOR_VERSION=3,VERSION.MINOR_VERSION=0,VERSION.CORE_REVISION=6,VERSION.PATCH_REVISION=0,VERSION.RESERVED_TAG=0x00000000,PARTITION_NAME=ULP,DESIGN_TYPE=1RP,HAS_JTAG_AXI_MASTER=false,HAS_USER_DEBUG=true,HAS_UUID_ROM=false,HAS_MEMORY_CALIB_STATUS=false,HAS_AXI_HWICAP=false,HAS_AXI_ICAP_ARB=false,HAS_MGMT_DEBUG=false,HAS_DDR4_RESET_GATE=false,USE_MDM_UART=0,NUM_MEMORY_CALIB=1,NUM_MB_DEBUG_PORTS=2,INIT_LOGIC_UUID=00000000000000000000000000000000,REGSLICE_USER_DEBUG_BRIDGE=NONE,REGSLICE_UUID_ROM=NONE,REGSLICE_MEMORY_CALIB_STATUS=NONE,REGSLICE_AXI_HWICAP=NONE,REGSLICE_MGMT_DEBUG=NONE,REGSLICE_DDR4_RESET_GATE=NONE,ENABLE_FULL_ADDRESS_ASSIGNMENTS=true,MGMT_PF_BASE_ADDRESS_BLP=0x01E80000,MGMT_PF_BASE_ADDRESS_PLP=0x00060000,MGMT_PF_BASE_ADDRESS_ULP=0x01020000,USER_PF_BASE_ADDRESS_ULP=0x01200000,SUPPORT_NEW_INTERRUPT_SCHEMA=true,EP_CMP_BUILD_INFO_00_OFFSET=0x00000000,EP_CMP_BUILD_INFO_00_RANGE=4k,EP_ICAP_ARB_00_OFFSET=0x00001000,EP_ICAP_ARB_00_RANGE=4k,EP_ICAP_ARB_00_PF=0x0,EP_ICAP_ARB_00_BAR=0x0,EP_ICAP_ARB_00_REGABS=xilinx.com_reg_abs_icap_arb_1.0,EP_UUID_ROM_PLP_00_OFFSET=0x00002000,EP_UUID_ROM_PLP_00_RANGE=4k,EP_UUID_ROM_PLP_00_PF=0x0,EP_UUID_ROM_PLP_00_BAR=0x0,EP_UUID_ROM_PLP_00_REGABS=xilinx.com_reg_abs_uuid_rom_1.0,EP_DDR_MEM_CALIB_00_OFFSET=0x00003000,EP_DDR_MEM_CALIB_00_RANGE=4k,EP_DDR_MEM_CALIB_00_PF=0x0,EP_DDR_MEM_CALIB_00_BAR=0x0,EP_DDR_MEM_CALIB_00_REGABS=xilinx.com_reg_abs_cmp_ddr_calib_1.0,EP_DDR_MEM_SRSR_GATE_00_OFFSET=0x00004000,EP_DDR_MEM_SRSR_GATE_00_RANGE=4k,EP_DDR_MEM_SRSR_GATE_00_PF=0x0,EP_DDR_MEM_SRSR_GATE_00_BAR=0x0,EP_DDR_MEM_SRSR_GATE_00_REGABS=xilinx.com_reg_abs_gpio_srsr_gate_1.0,EP_FPGA_CONFIGURATION_00_OFFSET=0x00008000,EP_FPGA_CONFIGURATION_00_RANGE=32k,EP_FPGA_CONFIGURATION_00_PF=0x0,EP_FPGA_CONFIGURATION_00_BAR=0x0,EP_FPGA_CONFIGURATION_00_REGABS=xilinx.com_reg_abs_axi_hwicap_1.0,EP_FPGA_CONFIGURATION_00_MSIX_START=0x1,EP_FPGA_CONFIGURATION_00_MSIX_END=0x1,EP_FPGA_CONFIGURATION_00_INTERRUPT_ALIAS=interrupt_fpga_configuration_00,EP_DEBUG_BSCAN_MGMT_00_OFFSET=0x00010000,EP_DEBUG_BSCAN_MGMT_00_RANGE=64k,EP_DEBUG_BSCAN_MGMT_00_PF=0x0,EP_DEBUG_BSCAN_MGMT_00_BAR=0x0,EP_DEBUG_BSCAN_MGMT_00_REGABS=xilinx.com_reg_abs_debug_bridge_1.0,EP_DEBUG_BSCAN_USER_00_OFFSET=0x00000000,EP_DEBUG_BSCAN_USER_00_RANGE=64k,EP_DEBUG_BSCAN_USER_00_PF=0x1,EP_DEBUG_BSCAN_USER_00_BAR=0x0,EP_DEBUG_BSCAN_USER_00_REGABS=xilinx.com_reg_abs_debug_bridge_1.0,OFFSET_MDM_SEG=0x01F40000,RANGE_MDM_SEG=4k,VERSION.PERFORCE_CL=3478949,VERSION.VIV_VERSION=0x202210,SLR_ASSIGNMENTS=}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "aclk_ctrl,aresetn_ctrl,s_axi_ctrl_user_debug_araddr[4:0],s_axi_ctrl_user_debug_arprot[2:0],s_axi_ctrl_user_debug_arready,s_axi_ctrl_user_debug_arvalid,s_axi_ctrl_user_debug_awaddr[4:0],s_axi_ctrl_user_debug_awprot[2:0],s_axi_ctrl_user_debug_awready,s_axi_ctrl_user_debug_awvalid,s_axi_ctrl_user_debug_bready,s_axi_ctrl_user_debug_bresp[1:0],s_axi_ctrl_user_debug_bvalid,s_axi_ctrl_user_debug_rdata[31:0],s_axi_ctrl_user_debug_rready,s_axi_ctrl_user_debug_rresp[1:0],s_axi_ctrl_user_debug_rvalid,s_axi_ctrl_user_debug_wdata[31:0],s_axi_ctrl_user_debug_wready,s_axi_ctrl_user_debug_wstrb[3:0],s_axi_ctrl_user_debug_wvalid,s_axi_ctrl_mgmt_araddr[4:0],s_axi_ctrl_mgmt_arready,s_axi_ctrl_mgmt_arvalid,s_axi_ctrl_mgmt_awaddr[4:0],s_axi_ctrl_mgmt_awready,s_axi_ctrl_mgmt_awvalid,s_axi_ctrl_mgmt_bready,s_axi_ctrl_mgmt_bresp[1:0],s_axi_ctrl_mgmt_bvalid,s_axi_ctrl_mgmt_rdata[31:0],s_axi_ctrl_mgmt_rready,s_axi_ctrl_mgmt_rresp[1:0],s_axi_ctrl_mgmt_rvalid,s_axi_ctrl_mgmt_wdata[31:0],s_axi_ctrl_mgmt_wready,s_axi_ctrl_mgmt_wstrb[3:0],s_axi_ctrl_mgmt_wvalid";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk_ctrl : signal is "xilinx.com:signal:clock:1.0 CLK.aclk_ctrl CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk_ctrl : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk_ctrl : signal is "XIL_INTERFACENAME CLK.aclk_ctrl, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, ASSOCIATED_BUSIF s_axi_ctrl_mgmt:s_axi_ctrl_user_debug, ASSOCIATED_RESET aresetn_ctrl, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_ctrl : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl RST";
  attribute X_INTERFACE_MODE of aresetn_ctrl : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn_ctrl : signal is "XIL_INTERFACENAME RST.aresetn_ctrl, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_ctrl_user_debug_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug ARADDR";
  attribute X_INTERFACE_MODE of s_axi_ctrl_user_debug_araddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_ctrl_user_debug_araddr : signal is "XIL_INTERFACENAME s_axi_ctrl_user_debug, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 1, ASSOCIATED_BUSIF S_AXI";
  attribute X_INTERFACE_INFO of s_axi_ctrl_user_debug_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug ARPROT";
  attribute X_INTERFACE_INFO of s_axi_ctrl_user_debug_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug ARREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_user_debug_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug ARVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_user_debug_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug AWADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_user_debug_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug AWPROT";
  attribute X_INTERFACE_INFO of s_axi_ctrl_user_debug_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug AWREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_user_debug_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug AWVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_user_debug_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug BREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_user_debug_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug BRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_user_debug_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug BVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_user_debug_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug RDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_user_debug_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug RREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_user_debug_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug RRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_user_debug_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug RVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_user_debug_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug WDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_user_debug_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug WREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_user_debug_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug WSTRB";
  attribute X_INTERFACE_INFO of s_axi_ctrl_user_debug_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug WVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARADDR";
  attribute X_INTERFACE_MODE of s_axi_ctrl_mgmt_araddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_ctrl_mgmt_araddr : signal is "XIL_INTERFACENAME s_axi_ctrl_mgmt, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 1";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WSTRB";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WVALID";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "bd_097b,Vivado 2025.1";
begin
end;
