// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Oct  1 02:46:37 2026
// Host        : node06.local running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_ii_level0_wire_0_stub.v
// Design      : ulp_ii_level0_wire_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ulp_ii_level0_wire_0,ii_level0_wire,{}" *) (* CORE_GENERATION_INFO = "ulp_ii_level0_wire_0,ii_level0_wire,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=ii_level0_wire,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "IPI" *) (* X_CORE_INFO = "ii_level0_wire,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(BLP_M_AXI_DATA_C2H_00_araddr, 
  BLP_M_AXI_DATA_C2H_00_arburst, BLP_M_AXI_DATA_C2H_00_arcache, 
  BLP_M_AXI_DATA_C2H_00_arid, BLP_M_AXI_DATA_C2H_00_arlen, 
  BLP_M_AXI_DATA_C2H_00_arlock, BLP_M_AXI_DATA_C2H_00_arprot, 
  BLP_M_AXI_DATA_C2H_00_arready, BLP_M_AXI_DATA_C2H_00_arvalid, 
  BLP_M_AXI_DATA_C2H_00_awaddr, BLP_M_AXI_DATA_C2H_00_awburst, 
  BLP_M_AXI_DATA_C2H_00_awcache, BLP_M_AXI_DATA_C2H_00_awid, 
  BLP_M_AXI_DATA_C2H_00_awlen, BLP_M_AXI_DATA_C2H_00_awlock, 
  BLP_M_AXI_DATA_C2H_00_awprot, BLP_M_AXI_DATA_C2H_00_awready, 
  BLP_M_AXI_DATA_C2H_00_awvalid, BLP_M_AXI_DATA_C2H_00_bid, 
  BLP_M_AXI_DATA_C2H_00_bready, BLP_M_AXI_DATA_C2H_00_bresp, 
  BLP_M_AXI_DATA_C2H_00_bvalid, BLP_M_AXI_DATA_C2H_00_rdata, BLP_M_AXI_DATA_C2H_00_rid, 
  BLP_M_AXI_DATA_C2H_00_rlast, BLP_M_AXI_DATA_C2H_00_rready, 
  BLP_M_AXI_DATA_C2H_00_rresp, BLP_M_AXI_DATA_C2H_00_rvalid, 
  BLP_M_AXI_DATA_C2H_00_wdata, BLP_M_AXI_DATA_C2H_00_wlast, 
  BLP_M_AXI_DATA_C2H_00_wready, BLP_M_AXI_DATA_C2H_00_wstrb, 
  BLP_M_AXI_DATA_C2H_00_wvalid, BLP_S_AXI_CTRL_MGMT_00_araddr, 
  BLP_S_AXI_CTRL_MGMT_00_arprot, BLP_S_AXI_CTRL_MGMT_00_arready, 
  BLP_S_AXI_CTRL_MGMT_00_arvalid, BLP_S_AXI_CTRL_MGMT_00_awaddr, 
  BLP_S_AXI_CTRL_MGMT_00_awprot, BLP_S_AXI_CTRL_MGMT_00_awready, 
  BLP_S_AXI_CTRL_MGMT_00_awvalid, BLP_S_AXI_CTRL_MGMT_00_bready, 
  BLP_S_AXI_CTRL_MGMT_00_bresp, BLP_S_AXI_CTRL_MGMT_00_bvalid, 
  BLP_S_AXI_CTRL_MGMT_00_rdata, BLP_S_AXI_CTRL_MGMT_00_rready, 
  BLP_S_AXI_CTRL_MGMT_00_rresp, BLP_S_AXI_CTRL_MGMT_00_rvalid, 
  BLP_S_AXI_CTRL_MGMT_00_wdata, BLP_S_AXI_CTRL_MGMT_00_wready, 
  BLP_S_AXI_CTRL_MGMT_00_wstrb, BLP_S_AXI_CTRL_MGMT_00_wvalid, 
  BLP_S_AXI_CTRL_MGMT_01_araddr, BLP_S_AXI_CTRL_MGMT_01_arprot, 
  BLP_S_AXI_CTRL_MGMT_01_arready, BLP_S_AXI_CTRL_MGMT_01_arvalid, 
  BLP_S_AXI_CTRL_MGMT_01_awaddr, BLP_S_AXI_CTRL_MGMT_01_awprot, 
  BLP_S_AXI_CTRL_MGMT_01_awready, BLP_S_AXI_CTRL_MGMT_01_awvalid, 
  BLP_S_AXI_CTRL_MGMT_01_bready, BLP_S_AXI_CTRL_MGMT_01_bresp, 
  BLP_S_AXI_CTRL_MGMT_01_bvalid, BLP_S_AXI_CTRL_MGMT_01_rdata, 
  BLP_S_AXI_CTRL_MGMT_01_rready, BLP_S_AXI_CTRL_MGMT_01_rresp, 
  BLP_S_AXI_CTRL_MGMT_01_rvalid, BLP_S_AXI_CTRL_MGMT_01_wdata, 
  BLP_S_AXI_CTRL_MGMT_01_wready, BLP_S_AXI_CTRL_MGMT_01_wstrb, 
  BLP_S_AXI_CTRL_MGMT_01_wvalid, BLP_S_AXI_CTRL_USER_00_araddr, 
  BLP_S_AXI_CTRL_USER_00_arprot, BLP_S_AXI_CTRL_USER_00_arready, 
  BLP_S_AXI_CTRL_USER_00_arvalid, BLP_S_AXI_CTRL_USER_00_awaddr, 
  BLP_S_AXI_CTRL_USER_00_awprot, BLP_S_AXI_CTRL_USER_00_awready, 
  BLP_S_AXI_CTRL_USER_00_awvalid, BLP_S_AXI_CTRL_USER_00_bready, 
  BLP_S_AXI_CTRL_USER_00_bresp, BLP_S_AXI_CTRL_USER_00_bvalid, 
  BLP_S_AXI_CTRL_USER_00_rdata, BLP_S_AXI_CTRL_USER_00_rready, 
  BLP_S_AXI_CTRL_USER_00_rresp, BLP_S_AXI_CTRL_USER_00_rvalid, 
  BLP_S_AXI_CTRL_USER_00_wdata, BLP_S_AXI_CTRL_USER_00_wready, 
  BLP_S_AXI_CTRL_USER_00_wstrb, BLP_S_AXI_CTRL_USER_00_wvalid, 
  BLP_S_AXI_CTRL_USER_01_araddr, BLP_S_AXI_CTRL_USER_01_arprot, 
  BLP_S_AXI_CTRL_USER_01_arready, BLP_S_AXI_CTRL_USER_01_arvalid, 
  BLP_S_AXI_CTRL_USER_01_awaddr, BLP_S_AXI_CTRL_USER_01_awprot, 
  BLP_S_AXI_CTRL_USER_01_awready, BLP_S_AXI_CTRL_USER_01_awvalid, 
  BLP_S_AXI_CTRL_USER_01_bready, BLP_S_AXI_CTRL_USER_01_bresp, 
  BLP_S_AXI_CTRL_USER_01_bvalid, BLP_S_AXI_CTRL_USER_01_rdata, 
  BLP_S_AXI_CTRL_USER_01_rready, BLP_S_AXI_CTRL_USER_01_rresp, 
  BLP_S_AXI_CTRL_USER_01_rvalid, BLP_S_AXI_CTRL_USER_01_wdata, 
  BLP_S_AXI_CTRL_USER_01_wready, BLP_S_AXI_CTRL_USER_01_wstrb, 
  BLP_S_AXI_CTRL_USER_01_wvalid, BLP_S_AXI_CTRL_USER_DEBUG_00_araddr, 
  BLP_S_AXI_CTRL_USER_DEBUG_00_arprot, BLP_S_AXI_CTRL_USER_DEBUG_00_arready, 
  BLP_S_AXI_CTRL_USER_DEBUG_00_arvalid, BLP_S_AXI_CTRL_USER_DEBUG_00_awaddr, 
  BLP_S_AXI_CTRL_USER_DEBUG_00_awprot, BLP_S_AXI_CTRL_USER_DEBUG_00_awready, 
  BLP_S_AXI_CTRL_USER_DEBUG_00_awvalid, BLP_S_AXI_CTRL_USER_DEBUG_00_bready, 
  BLP_S_AXI_CTRL_USER_DEBUG_00_bresp, BLP_S_AXI_CTRL_USER_DEBUG_00_bvalid, 
  BLP_S_AXI_CTRL_USER_DEBUG_00_rdata, BLP_S_AXI_CTRL_USER_DEBUG_00_rready, 
  BLP_S_AXI_CTRL_USER_DEBUG_00_rresp, BLP_S_AXI_CTRL_USER_DEBUG_00_rvalid, 
  BLP_S_AXI_CTRL_USER_DEBUG_00_wdata, BLP_S_AXI_CTRL_USER_DEBUG_00_wready, 
  BLP_S_AXI_CTRL_USER_DEBUG_00_wstrb, BLP_S_AXI_CTRL_USER_DEBUG_00_wvalid, 
  BLP_S_AXI_DATA_H2C_00_araddr, BLP_S_AXI_DATA_H2C_00_arburst, 
  BLP_S_AXI_DATA_H2C_00_arcache, BLP_S_AXI_DATA_H2C_00_arid, 
  BLP_S_AXI_DATA_H2C_00_arlen, BLP_S_AXI_DATA_H2C_00_arlock, 
  BLP_S_AXI_DATA_H2C_00_arprot, BLP_S_AXI_DATA_H2C_00_arready, 
  BLP_S_AXI_DATA_H2C_00_arvalid, BLP_S_AXI_DATA_H2C_00_awaddr, 
  BLP_S_AXI_DATA_H2C_00_awburst, BLP_S_AXI_DATA_H2C_00_awcache, 
  BLP_S_AXI_DATA_H2C_00_awid, BLP_S_AXI_DATA_H2C_00_awlen, 
  BLP_S_AXI_DATA_H2C_00_awlock, BLP_S_AXI_DATA_H2C_00_awprot, 
  BLP_S_AXI_DATA_H2C_00_awready, BLP_S_AXI_DATA_H2C_00_awvalid, 
  BLP_S_AXI_DATA_H2C_00_bid, BLP_S_AXI_DATA_H2C_00_bready, BLP_S_AXI_DATA_H2C_00_bresp, 
  BLP_S_AXI_DATA_H2C_00_bvalid, BLP_S_AXI_DATA_H2C_00_rdata, BLP_S_AXI_DATA_H2C_00_rid, 
  BLP_S_AXI_DATA_H2C_00_rlast, BLP_S_AXI_DATA_H2C_00_rready, 
  BLP_S_AXI_DATA_H2C_00_rresp, BLP_S_AXI_DATA_H2C_00_rvalid, 
  BLP_S_AXI_DATA_H2C_00_wdata, BLP_S_AXI_DATA_H2C_00_wlast, 
  BLP_S_AXI_DATA_H2C_00_wready, BLP_S_AXI_DATA_H2C_00_wstrb, 
  BLP_S_AXI_DATA_H2C_00_wvalid, ULP_M_AXI_CTRL_MGMT_00_araddr, 
  ULP_M_AXI_CTRL_MGMT_00_arprot, ULP_M_AXI_CTRL_MGMT_00_arready, 
  ULP_M_AXI_CTRL_MGMT_00_arvalid, ULP_M_AXI_CTRL_MGMT_00_awaddr, 
  ULP_M_AXI_CTRL_MGMT_00_awprot, ULP_M_AXI_CTRL_MGMT_00_awready, 
  ULP_M_AXI_CTRL_MGMT_00_awvalid, ULP_M_AXI_CTRL_MGMT_00_bready, 
  ULP_M_AXI_CTRL_MGMT_00_bresp, ULP_M_AXI_CTRL_MGMT_00_bvalid, 
  ULP_M_AXI_CTRL_MGMT_00_rdata, ULP_M_AXI_CTRL_MGMT_00_rready, 
  ULP_M_AXI_CTRL_MGMT_00_rresp, ULP_M_AXI_CTRL_MGMT_00_rvalid, 
  ULP_M_AXI_CTRL_MGMT_00_wdata, ULP_M_AXI_CTRL_MGMT_00_wready, 
  ULP_M_AXI_CTRL_MGMT_00_wstrb, ULP_M_AXI_CTRL_MGMT_00_wvalid, 
  ULP_M_AXI_CTRL_MGMT_01_araddr, ULP_M_AXI_CTRL_MGMT_01_arprot, 
  ULP_M_AXI_CTRL_MGMT_01_arready, ULP_M_AXI_CTRL_MGMT_01_arvalid, 
  ULP_M_AXI_CTRL_MGMT_01_awaddr, ULP_M_AXI_CTRL_MGMT_01_awprot, 
  ULP_M_AXI_CTRL_MGMT_01_awready, ULP_M_AXI_CTRL_MGMT_01_awvalid, 
  ULP_M_AXI_CTRL_MGMT_01_bready, ULP_M_AXI_CTRL_MGMT_01_bresp, 
  ULP_M_AXI_CTRL_MGMT_01_bvalid, ULP_M_AXI_CTRL_MGMT_01_rdata, 
  ULP_M_AXI_CTRL_MGMT_01_rready, ULP_M_AXI_CTRL_MGMT_01_rresp, 
  ULP_M_AXI_CTRL_MGMT_01_rvalid, ULP_M_AXI_CTRL_MGMT_01_wdata, 
  ULP_M_AXI_CTRL_MGMT_01_wready, ULP_M_AXI_CTRL_MGMT_01_wstrb, 
  ULP_M_AXI_CTRL_MGMT_01_wvalid, ULP_M_AXI_CTRL_USER_00_araddr, 
  ULP_M_AXI_CTRL_USER_00_arprot, ULP_M_AXI_CTRL_USER_00_arready, 
  ULP_M_AXI_CTRL_USER_00_arvalid, ULP_M_AXI_CTRL_USER_00_awaddr, 
  ULP_M_AXI_CTRL_USER_00_awprot, ULP_M_AXI_CTRL_USER_00_awready, 
  ULP_M_AXI_CTRL_USER_00_awvalid, ULP_M_AXI_CTRL_USER_00_bready, 
  ULP_M_AXI_CTRL_USER_00_bresp, ULP_M_AXI_CTRL_USER_00_bvalid, 
  ULP_M_AXI_CTRL_USER_00_rdata, ULP_M_AXI_CTRL_USER_00_rready, 
  ULP_M_AXI_CTRL_USER_00_rresp, ULP_M_AXI_CTRL_USER_00_rvalid, 
  ULP_M_AXI_CTRL_USER_00_wdata, ULP_M_AXI_CTRL_USER_00_wready, 
  ULP_M_AXI_CTRL_USER_00_wstrb, ULP_M_AXI_CTRL_USER_00_wvalid, 
  ULP_M_AXI_CTRL_USER_01_araddr, ULP_M_AXI_CTRL_USER_01_arprot, 
  ULP_M_AXI_CTRL_USER_01_arready, ULP_M_AXI_CTRL_USER_01_arvalid, 
  ULP_M_AXI_CTRL_USER_01_awaddr, ULP_M_AXI_CTRL_USER_01_awprot, 
  ULP_M_AXI_CTRL_USER_01_awready, ULP_M_AXI_CTRL_USER_01_awvalid, 
  ULP_M_AXI_CTRL_USER_01_bready, ULP_M_AXI_CTRL_USER_01_bresp, 
  ULP_M_AXI_CTRL_USER_01_bvalid, ULP_M_AXI_CTRL_USER_01_rdata, 
  ULP_M_AXI_CTRL_USER_01_rready, ULP_M_AXI_CTRL_USER_01_rresp, 
  ULP_M_AXI_CTRL_USER_01_rvalid, ULP_M_AXI_CTRL_USER_01_wdata, 
  ULP_M_AXI_CTRL_USER_01_wready, ULP_M_AXI_CTRL_USER_01_wstrb, 
  ULP_M_AXI_CTRL_USER_01_wvalid, ULP_M_AXI_CTRL_USER_DEBUG_00_araddr, 
  ULP_M_AXI_CTRL_USER_DEBUG_00_arprot, ULP_M_AXI_CTRL_USER_DEBUG_00_arready, 
  ULP_M_AXI_CTRL_USER_DEBUG_00_arvalid, ULP_M_AXI_CTRL_USER_DEBUG_00_awaddr, 
  ULP_M_AXI_CTRL_USER_DEBUG_00_awprot, ULP_M_AXI_CTRL_USER_DEBUG_00_awready, 
  ULP_M_AXI_CTRL_USER_DEBUG_00_awvalid, ULP_M_AXI_CTRL_USER_DEBUG_00_bready, 
  ULP_M_AXI_CTRL_USER_DEBUG_00_bresp, ULP_M_AXI_CTRL_USER_DEBUG_00_bvalid, 
  ULP_M_AXI_CTRL_USER_DEBUG_00_rdata, ULP_M_AXI_CTRL_USER_DEBUG_00_rready, 
  ULP_M_AXI_CTRL_USER_DEBUG_00_rresp, ULP_M_AXI_CTRL_USER_DEBUG_00_rvalid, 
  ULP_M_AXI_CTRL_USER_DEBUG_00_wdata, ULP_M_AXI_CTRL_USER_DEBUG_00_wready, 
  ULP_M_AXI_CTRL_USER_DEBUG_00_wstrb, ULP_M_AXI_CTRL_USER_DEBUG_00_wvalid, 
  ULP_M_AXI_DATA_H2C_00_araddr, ULP_M_AXI_DATA_H2C_00_arburst, 
  ULP_M_AXI_DATA_H2C_00_arcache, ULP_M_AXI_DATA_H2C_00_arid, 
  ULP_M_AXI_DATA_H2C_00_arlen, ULP_M_AXI_DATA_H2C_00_arlock, 
  ULP_M_AXI_DATA_H2C_00_arprot, ULP_M_AXI_DATA_H2C_00_arready, 
  ULP_M_AXI_DATA_H2C_00_arvalid, ULP_M_AXI_DATA_H2C_00_awaddr, 
  ULP_M_AXI_DATA_H2C_00_awburst, ULP_M_AXI_DATA_H2C_00_awcache, 
  ULP_M_AXI_DATA_H2C_00_awid, ULP_M_AXI_DATA_H2C_00_awlen, 
  ULP_M_AXI_DATA_H2C_00_awlock, ULP_M_AXI_DATA_H2C_00_awprot, 
  ULP_M_AXI_DATA_H2C_00_awready, ULP_M_AXI_DATA_H2C_00_awvalid, 
  ULP_M_AXI_DATA_H2C_00_bid, ULP_M_AXI_DATA_H2C_00_bready, ULP_M_AXI_DATA_H2C_00_bresp, 
  ULP_M_AXI_DATA_H2C_00_bvalid, ULP_M_AXI_DATA_H2C_00_rdata, ULP_M_AXI_DATA_H2C_00_rid, 
  ULP_M_AXI_DATA_H2C_00_rlast, ULP_M_AXI_DATA_H2C_00_rready, 
  ULP_M_AXI_DATA_H2C_00_rresp, ULP_M_AXI_DATA_H2C_00_rvalid, 
  ULP_M_AXI_DATA_H2C_00_wdata, ULP_M_AXI_DATA_H2C_00_wlast, 
  ULP_M_AXI_DATA_H2C_00_wready, ULP_M_AXI_DATA_H2C_00_wstrb, 
  ULP_M_AXI_DATA_H2C_00_wvalid, ULP_S_AXI_DATA_C2H_00_araddr, 
  ULP_S_AXI_DATA_C2H_00_arburst, ULP_S_AXI_DATA_C2H_00_arcache, 
  ULP_S_AXI_DATA_C2H_00_arid, ULP_S_AXI_DATA_C2H_00_arlen, 
  ULP_S_AXI_DATA_C2H_00_arlock, ULP_S_AXI_DATA_C2H_00_arprot, 
  ULP_S_AXI_DATA_C2H_00_arready, ULP_S_AXI_DATA_C2H_00_arvalid, 
  ULP_S_AXI_DATA_C2H_00_awaddr, ULP_S_AXI_DATA_C2H_00_awburst, 
  ULP_S_AXI_DATA_C2H_00_awcache, ULP_S_AXI_DATA_C2H_00_awid, 
  ULP_S_AXI_DATA_C2H_00_awlen, ULP_S_AXI_DATA_C2H_00_awlock, 
  ULP_S_AXI_DATA_C2H_00_awprot, ULP_S_AXI_DATA_C2H_00_awready, 
  ULP_S_AXI_DATA_C2H_00_awvalid, ULP_S_AXI_DATA_C2H_00_bid, 
  ULP_S_AXI_DATA_C2H_00_bready, ULP_S_AXI_DATA_C2H_00_bresp, 
  ULP_S_AXI_DATA_C2H_00_bvalid, ULP_S_AXI_DATA_C2H_00_rdata, ULP_S_AXI_DATA_C2H_00_rid, 
  ULP_S_AXI_DATA_C2H_00_rlast, ULP_S_AXI_DATA_C2H_00_rready, 
  ULP_S_AXI_DATA_C2H_00_rresp, ULP_S_AXI_DATA_C2H_00_rvalid, 
  ULP_S_AXI_DATA_C2H_00_wdata, ULP_S_AXI_DATA_C2H_00_wlast, 
  ULP_S_AXI_DATA_C2H_00_wready, ULP_S_AXI_DATA_C2H_00_wstrb, 
  ULP_S_AXI_DATA_C2H_00_wvalid, blp_m_data_hbm_temp_00, blp_m_data_hbm_temp_01, 
  blp_m_data_memory_calib_complete_00, blp_m_irq_cu_00, blp_m_irq_hbm_cattrip_00, 
  blp_s_aclk_ctrl_00, blp_s_aclk_freerun_ref_00, blp_s_aclk_pcie_00, 
  blp_s_aresetn_ctrl_00, blp_s_aresetn_pcie_00, blp_s_data_satellite_ctrl_data_00, 
  ulp_m_aclk_ctrl_00, ulp_m_aclk_freerun_ref_00, ulp_m_aclk_pcie_00, 
  ulp_m_aresetn_ctrl_00, ulp_m_aresetn_pcie_00, ulp_m_data_satellite_ctrl_data_00, 
  ulp_s_data_hbm_temp_00, ulp_s_data_hbm_temp_01, ulp_s_data_memory_calib_complete_00, 
  ulp_s_irq_cu_00, ulp_s_irq_hbm_cattrip_00)
/* synthesis syn_black_box black_box_pad_pin="BLP_M_AXI_DATA_C2H_00_araddr[38:0],BLP_M_AXI_DATA_C2H_00_arburst[1:0],BLP_M_AXI_DATA_C2H_00_arcache[3:0],BLP_M_AXI_DATA_C2H_00_arid[1:0],BLP_M_AXI_DATA_C2H_00_arlen[7:0],BLP_M_AXI_DATA_C2H_00_arlock[0:0],BLP_M_AXI_DATA_C2H_00_arprot[2:0],BLP_M_AXI_DATA_C2H_00_arready,BLP_M_AXI_DATA_C2H_00_arvalid,BLP_M_AXI_DATA_C2H_00_awaddr[38:0],BLP_M_AXI_DATA_C2H_00_awburst[1:0],BLP_M_AXI_DATA_C2H_00_awcache[3:0],BLP_M_AXI_DATA_C2H_00_awid[1:0],BLP_M_AXI_DATA_C2H_00_awlen[7:0],BLP_M_AXI_DATA_C2H_00_awlock[0:0],BLP_M_AXI_DATA_C2H_00_awprot[2:0],BLP_M_AXI_DATA_C2H_00_awready,BLP_M_AXI_DATA_C2H_00_awvalid,BLP_M_AXI_DATA_C2H_00_bid[1:0],BLP_M_AXI_DATA_C2H_00_bready,BLP_M_AXI_DATA_C2H_00_bresp[1:0],BLP_M_AXI_DATA_C2H_00_bvalid,BLP_M_AXI_DATA_C2H_00_rdata[511:0],BLP_M_AXI_DATA_C2H_00_rid[1:0],BLP_M_AXI_DATA_C2H_00_rlast,BLP_M_AXI_DATA_C2H_00_rready,BLP_M_AXI_DATA_C2H_00_rresp[1:0],BLP_M_AXI_DATA_C2H_00_rvalid,BLP_M_AXI_DATA_C2H_00_wdata[511:0],BLP_M_AXI_DATA_C2H_00_wlast,BLP_M_AXI_DATA_C2H_00_wready,BLP_M_AXI_DATA_C2H_00_wstrb[63:0],BLP_M_AXI_DATA_C2H_00_wvalid,BLP_S_AXI_CTRL_MGMT_00_araddr[24:0],BLP_S_AXI_CTRL_MGMT_00_arprot[2:0],BLP_S_AXI_CTRL_MGMT_00_arready,BLP_S_AXI_CTRL_MGMT_00_arvalid,BLP_S_AXI_CTRL_MGMT_00_awaddr[24:0],BLP_S_AXI_CTRL_MGMT_00_awprot[2:0],BLP_S_AXI_CTRL_MGMT_00_awready,BLP_S_AXI_CTRL_MGMT_00_awvalid,BLP_S_AXI_CTRL_MGMT_00_bready,BLP_S_AXI_CTRL_MGMT_00_bresp[1:0],BLP_S_AXI_CTRL_MGMT_00_bvalid,BLP_S_AXI_CTRL_MGMT_00_rdata[31:0],BLP_S_AXI_CTRL_MGMT_00_rready,BLP_S_AXI_CTRL_MGMT_00_rresp[1:0],BLP_S_AXI_CTRL_MGMT_00_rvalid,BLP_S_AXI_CTRL_MGMT_00_wdata[31:0],BLP_S_AXI_CTRL_MGMT_00_wready,BLP_S_AXI_CTRL_MGMT_00_wstrb[3:0],BLP_S_AXI_CTRL_MGMT_00_wvalid,BLP_S_AXI_CTRL_MGMT_01_araddr[24:0],BLP_S_AXI_CTRL_MGMT_01_arprot[2:0],BLP_S_AXI_CTRL_MGMT_01_arready,BLP_S_AXI_CTRL_MGMT_01_arvalid,BLP_S_AXI_CTRL_MGMT_01_awaddr[24:0],BLP_S_AXI_CTRL_MGMT_01_awprot[2:0],BLP_S_AXI_CTRL_MGMT_01_awready,BLP_S_AXI_CTRL_MGMT_01_awvalid,BLP_S_AXI_CTRL_MGMT_01_bready,BLP_S_AXI_CTRL_MGMT_01_bresp[1:0],BLP_S_AXI_CTRL_MGMT_01_bvalid,BLP_S_AXI_CTRL_MGMT_01_rdata[31:0],BLP_S_AXI_CTRL_MGMT_01_rready,BLP_S_AXI_CTRL_MGMT_01_rresp[1:0],BLP_S_AXI_CTRL_MGMT_01_rvalid,BLP_S_AXI_CTRL_MGMT_01_wdata[31:0],BLP_S_AXI_CTRL_MGMT_01_wready,BLP_S_AXI_CTRL_MGMT_01_wstrb[3:0],BLP_S_AXI_CTRL_MGMT_01_wvalid,BLP_S_AXI_CTRL_USER_00_araddr[24:0],BLP_S_AXI_CTRL_USER_00_arprot[2:0],BLP_S_AXI_CTRL_USER_00_arready,BLP_S_AXI_CTRL_USER_00_arvalid,BLP_S_AXI_CTRL_USER_00_awaddr[24:0],BLP_S_AXI_CTRL_USER_00_awprot[2:0],BLP_S_AXI_CTRL_USER_00_awready,BLP_S_AXI_CTRL_USER_00_awvalid,BLP_S_AXI_CTRL_USER_00_bready,BLP_S_AXI_CTRL_USER_00_bresp[1:0],BLP_S_AXI_CTRL_USER_00_bvalid,BLP_S_AXI_CTRL_USER_00_rdata[31:0],BLP_S_AXI_CTRL_USER_00_rready,BLP_S_AXI_CTRL_USER_00_rresp[1:0],BLP_S_AXI_CTRL_USER_00_rvalid,BLP_S_AXI_CTRL_USER_00_wdata[31:0],BLP_S_AXI_CTRL_USER_00_wready,BLP_S_AXI_CTRL_USER_00_wstrb[3:0],BLP_S_AXI_CTRL_USER_00_wvalid,BLP_S_AXI_CTRL_USER_01_araddr[24:0],BLP_S_AXI_CTRL_USER_01_arprot[2:0],BLP_S_AXI_CTRL_USER_01_arready,BLP_S_AXI_CTRL_USER_01_arvalid,BLP_S_AXI_CTRL_USER_01_awaddr[24:0],BLP_S_AXI_CTRL_USER_01_awprot[2:0],BLP_S_AXI_CTRL_USER_01_awready,BLP_S_AXI_CTRL_USER_01_awvalid,BLP_S_AXI_CTRL_USER_01_bready,BLP_S_AXI_CTRL_USER_01_bresp[1:0],BLP_S_AXI_CTRL_USER_01_bvalid,BLP_S_AXI_CTRL_USER_01_rdata[31:0],BLP_S_AXI_CTRL_USER_01_rready,BLP_S_AXI_CTRL_USER_01_rresp[1:0],BLP_S_AXI_CTRL_USER_01_rvalid,BLP_S_AXI_CTRL_USER_01_wdata[31:0],BLP_S_AXI_CTRL_USER_01_wready,BLP_S_AXI_CTRL_USER_01_wstrb[3:0],BLP_S_AXI_CTRL_USER_01_wvalid,BLP_S_AXI_CTRL_USER_DEBUG_00_araddr[24:0],BLP_S_AXI_CTRL_USER_DEBUG_00_arprot[2:0],BLP_S_AXI_CTRL_USER_DEBUG_00_arready,BLP_S_AXI_CTRL_USER_DEBUG_00_arvalid,BLP_S_AXI_CTRL_USER_DEBUG_00_awaddr[24:0],BLP_S_AXI_CTRL_USER_DEBUG_00_awprot[2:0],BLP_S_AXI_CTRL_USER_DEBUG_00_awready,BLP_S_AXI_CTRL_USER_DEBUG_00_awvalid,BLP_S_AXI_CTRL_USER_DEBUG_00_bready,BLP_S_AXI_CTRL_USER_DEBUG_00_bresp[1:0],BLP_S_AXI_CTRL_USER_DEBUG_00_bvalid,BLP_S_AXI_CTRL_USER_DEBUG_00_rdata[31:0],BLP_S_AXI_CTRL_USER_DEBUG_00_rready,BLP_S_AXI_CTRL_USER_DEBUG_00_rresp[1:0],BLP_S_AXI_CTRL_USER_DEBUG_00_rvalid,BLP_S_AXI_CTRL_USER_DEBUG_00_wdata[31:0],BLP_S_AXI_CTRL_USER_DEBUG_00_wready,BLP_S_AXI_CTRL_USER_DEBUG_00_wstrb[3:0],BLP_S_AXI_CTRL_USER_DEBUG_00_wvalid,BLP_S_AXI_DATA_H2C_00_araddr[38:0],BLP_S_AXI_DATA_H2C_00_arburst[1:0],BLP_S_AXI_DATA_H2C_00_arcache[3:0],BLP_S_AXI_DATA_H2C_00_arid[3:0],BLP_S_AXI_DATA_H2C_00_arlen[7:0],BLP_S_AXI_DATA_H2C_00_arlock[0:0],BLP_S_AXI_DATA_H2C_00_arprot[2:0],BLP_S_AXI_DATA_H2C_00_arready,BLP_S_AXI_DATA_H2C_00_arvalid,BLP_S_AXI_DATA_H2C_00_awaddr[38:0],BLP_S_AXI_DATA_H2C_00_awburst[1:0],BLP_S_AXI_DATA_H2C_00_awcache[3:0],BLP_S_AXI_DATA_H2C_00_awid[3:0],BLP_S_AXI_DATA_H2C_00_awlen[7:0],BLP_S_AXI_DATA_H2C_00_awlock[0:0],BLP_S_AXI_DATA_H2C_00_awprot[2:0],BLP_S_AXI_DATA_H2C_00_awready,BLP_S_AXI_DATA_H2C_00_awvalid,BLP_S_AXI_DATA_H2C_00_bid[3:0],BLP_S_AXI_DATA_H2C_00_bready,BLP_S_AXI_DATA_H2C_00_bresp[1:0],BLP_S_AXI_DATA_H2C_00_bvalid,BLP_S_AXI_DATA_H2C_00_rdata[511:0],BLP_S_AXI_DATA_H2C_00_rid[3:0],BLP_S_AXI_DATA_H2C_00_rlast,BLP_S_AXI_DATA_H2C_00_rready,BLP_S_AXI_DATA_H2C_00_rresp[1:0],BLP_S_AXI_DATA_H2C_00_rvalid,BLP_S_AXI_DATA_H2C_00_wdata[511:0],BLP_S_AXI_DATA_H2C_00_wlast,BLP_S_AXI_DATA_H2C_00_wready,BLP_S_AXI_DATA_H2C_00_wstrb[63:0],BLP_S_AXI_DATA_H2C_00_wvalid,ULP_M_AXI_CTRL_MGMT_00_araddr[24:0],ULP_M_AXI_CTRL_MGMT_00_arprot[2:0],ULP_M_AXI_CTRL_MGMT_00_arready,ULP_M_AXI_CTRL_MGMT_00_arvalid,ULP_M_AXI_CTRL_MGMT_00_awaddr[24:0],ULP_M_AXI_CTRL_MGMT_00_awprot[2:0],ULP_M_AXI_CTRL_MGMT_00_awready,ULP_M_AXI_CTRL_MGMT_00_awvalid,ULP_M_AXI_CTRL_MGMT_00_bready,ULP_M_AXI_CTRL_MGMT_00_bresp[1:0],ULP_M_AXI_CTRL_MGMT_00_bvalid,ULP_M_AXI_CTRL_MGMT_00_rdata[31:0],ULP_M_AXI_CTRL_MGMT_00_rready,ULP_M_AXI_CTRL_MGMT_00_rresp[1:0],ULP_M_AXI_CTRL_MGMT_00_rvalid,ULP_M_AXI_CTRL_MGMT_00_wdata[31:0],ULP_M_AXI_CTRL_MGMT_00_wready,ULP_M_AXI_CTRL_MGMT_00_wstrb[3:0],ULP_M_AXI_CTRL_MGMT_00_wvalid,ULP_M_AXI_CTRL_MGMT_01_araddr[24:0],ULP_M_AXI_CTRL_MGMT_01_arprot[2:0],ULP_M_AXI_CTRL_MGMT_01_arready,ULP_M_AXI_CTRL_MGMT_01_arvalid,ULP_M_AXI_CTRL_MGMT_01_awaddr[24:0],ULP_M_AXI_CTRL_MGMT_01_awprot[2:0],ULP_M_AXI_CTRL_MGMT_01_awready,ULP_M_AXI_CTRL_MGMT_01_awvalid,ULP_M_AXI_CTRL_MGMT_01_bready,ULP_M_AXI_CTRL_MGMT_01_bresp[1:0],ULP_M_AXI_CTRL_MGMT_01_bvalid,ULP_M_AXI_CTRL_MGMT_01_rdata[31:0],ULP_M_AXI_CTRL_MGMT_01_rready,ULP_M_AXI_CTRL_MGMT_01_rresp[1:0],ULP_M_AXI_CTRL_MGMT_01_rvalid,ULP_M_AXI_CTRL_MGMT_01_wdata[31:0],ULP_M_AXI_CTRL_MGMT_01_wready,ULP_M_AXI_CTRL_MGMT_01_wstrb[3:0],ULP_M_AXI_CTRL_MGMT_01_wvalid,ULP_M_AXI_CTRL_USER_00_araddr[24:0],ULP_M_AXI_CTRL_USER_00_arprot[2:0],ULP_M_AXI_CTRL_USER_00_arready,ULP_M_AXI_CTRL_USER_00_arvalid,ULP_M_AXI_CTRL_USER_00_awaddr[24:0],ULP_M_AXI_CTRL_USER_00_awprot[2:0],ULP_M_AXI_CTRL_USER_00_awready,ULP_M_AXI_CTRL_USER_00_awvalid,ULP_M_AXI_CTRL_USER_00_bready,ULP_M_AXI_CTRL_USER_00_bresp[1:0],ULP_M_AXI_CTRL_USER_00_bvalid,ULP_M_AXI_CTRL_USER_00_rdata[31:0],ULP_M_AXI_CTRL_USER_00_rready,ULP_M_AXI_CTRL_USER_00_rresp[1:0],ULP_M_AXI_CTRL_USER_00_rvalid,ULP_M_AXI_CTRL_USER_00_wdata[31:0],ULP_M_AXI_CTRL_USER_00_wready,ULP_M_AXI_CTRL_USER_00_wstrb[3:0],ULP_M_AXI_CTRL_USER_00_wvalid,ULP_M_AXI_CTRL_USER_01_araddr[24:0],ULP_M_AXI_CTRL_USER_01_arprot[2:0],ULP_M_AXI_CTRL_USER_01_arready,ULP_M_AXI_CTRL_USER_01_arvalid,ULP_M_AXI_CTRL_USER_01_awaddr[24:0],ULP_M_AXI_CTRL_USER_01_awprot[2:0],ULP_M_AXI_CTRL_USER_01_awready,ULP_M_AXI_CTRL_USER_01_awvalid,ULP_M_AXI_CTRL_USER_01_bready,ULP_M_AXI_CTRL_USER_01_bresp[1:0],ULP_M_AXI_CTRL_USER_01_bvalid,ULP_M_AXI_CTRL_USER_01_rdata[31:0],ULP_M_AXI_CTRL_USER_01_rready,ULP_M_AXI_CTRL_USER_01_rresp[1:0],ULP_M_AXI_CTRL_USER_01_rvalid,ULP_M_AXI_CTRL_USER_01_wdata[31:0],ULP_M_AXI_CTRL_USER_01_wready,ULP_M_AXI_CTRL_USER_01_wstrb[3:0],ULP_M_AXI_CTRL_USER_01_wvalid,ULP_M_AXI_CTRL_USER_DEBUG_00_araddr[24:0],ULP_M_AXI_CTRL_USER_DEBUG_00_arprot[2:0],ULP_M_AXI_CTRL_USER_DEBUG_00_arready,ULP_M_AXI_CTRL_USER_DEBUG_00_arvalid,ULP_M_AXI_CTRL_USER_DEBUG_00_awaddr[24:0],ULP_M_AXI_CTRL_USER_DEBUG_00_awprot[2:0],ULP_M_AXI_CTRL_USER_DEBUG_00_awready,ULP_M_AXI_CTRL_USER_DEBUG_00_awvalid,ULP_M_AXI_CTRL_USER_DEBUG_00_bready,ULP_M_AXI_CTRL_USER_DEBUG_00_bresp[1:0],ULP_M_AXI_CTRL_USER_DEBUG_00_bvalid,ULP_M_AXI_CTRL_USER_DEBUG_00_rdata[31:0],ULP_M_AXI_CTRL_USER_DEBUG_00_rready,ULP_M_AXI_CTRL_USER_DEBUG_00_rresp[1:0],ULP_M_AXI_CTRL_USER_DEBUG_00_rvalid,ULP_M_AXI_CTRL_USER_DEBUG_00_wdata[31:0],ULP_M_AXI_CTRL_USER_DEBUG_00_wready,ULP_M_AXI_CTRL_USER_DEBUG_00_wstrb[3:0],ULP_M_AXI_CTRL_USER_DEBUG_00_wvalid,ULP_M_AXI_DATA_H2C_00_araddr[38:0],ULP_M_AXI_DATA_H2C_00_arburst[1:0],ULP_M_AXI_DATA_H2C_00_arcache[3:0],ULP_M_AXI_DATA_H2C_00_arid[3:0],ULP_M_AXI_DATA_H2C_00_arlen[7:0],ULP_M_AXI_DATA_H2C_00_arlock[0:0],ULP_M_AXI_DATA_H2C_00_arprot[2:0],ULP_M_AXI_DATA_H2C_00_arready,ULP_M_AXI_DATA_H2C_00_arvalid,ULP_M_AXI_DATA_H2C_00_awaddr[38:0],ULP_M_AXI_DATA_H2C_00_awburst[1:0],ULP_M_AXI_DATA_H2C_00_awcache[3:0],ULP_M_AXI_DATA_H2C_00_awid[3:0],ULP_M_AXI_DATA_H2C_00_awlen[7:0],ULP_M_AXI_DATA_H2C_00_awlock[0:0],ULP_M_AXI_DATA_H2C_00_awprot[2:0],ULP_M_AXI_DATA_H2C_00_awready,ULP_M_AXI_DATA_H2C_00_awvalid,ULP_M_AXI_DATA_H2C_00_bid[3:0],ULP_M_AXI_DATA_H2C_00_bready,ULP_M_AXI_DATA_H2C_00_bresp[1:0],ULP_M_AXI_DATA_H2C_00_bvalid,ULP_M_AXI_DATA_H2C_00_rdata[511:0],ULP_M_AXI_DATA_H2C_00_rid[3:0],ULP_M_AXI_DATA_H2C_00_rlast,ULP_M_AXI_DATA_H2C_00_rready,ULP_M_AXI_DATA_H2C_00_rresp[1:0],ULP_M_AXI_DATA_H2C_00_rvalid,ULP_M_AXI_DATA_H2C_00_wdata[511:0],ULP_M_AXI_DATA_H2C_00_wlast,ULP_M_AXI_DATA_H2C_00_wready,ULP_M_AXI_DATA_H2C_00_wstrb[63:0],ULP_M_AXI_DATA_H2C_00_wvalid,ULP_S_AXI_DATA_C2H_00_araddr[38:0],ULP_S_AXI_DATA_C2H_00_arburst[1:0],ULP_S_AXI_DATA_C2H_00_arcache[3:0],ULP_S_AXI_DATA_C2H_00_arid[1:0],ULP_S_AXI_DATA_C2H_00_arlen[7:0],ULP_S_AXI_DATA_C2H_00_arlock[0:0],ULP_S_AXI_DATA_C2H_00_arprot[2:0],ULP_S_AXI_DATA_C2H_00_arready,ULP_S_AXI_DATA_C2H_00_arvalid,ULP_S_AXI_DATA_C2H_00_awaddr[38:0],ULP_S_AXI_DATA_C2H_00_awburst[1:0],ULP_S_AXI_DATA_C2H_00_awcache[3:0],ULP_S_AXI_DATA_C2H_00_awid[1:0],ULP_S_AXI_DATA_C2H_00_awlen[7:0],ULP_S_AXI_DATA_C2H_00_awlock[0:0],ULP_S_AXI_DATA_C2H_00_awprot[2:0],ULP_S_AXI_DATA_C2H_00_awready,ULP_S_AXI_DATA_C2H_00_awvalid,ULP_S_AXI_DATA_C2H_00_bid[1:0],ULP_S_AXI_DATA_C2H_00_bready,ULP_S_AXI_DATA_C2H_00_bresp[1:0],ULP_S_AXI_DATA_C2H_00_bvalid,ULP_S_AXI_DATA_C2H_00_rdata[511:0],ULP_S_AXI_DATA_C2H_00_rid[1:0],ULP_S_AXI_DATA_C2H_00_rlast,ULP_S_AXI_DATA_C2H_00_rready,ULP_S_AXI_DATA_C2H_00_rresp[1:0],ULP_S_AXI_DATA_C2H_00_rvalid,ULP_S_AXI_DATA_C2H_00_wdata[511:0],ULP_S_AXI_DATA_C2H_00_wlast,ULP_S_AXI_DATA_C2H_00_wready,ULP_S_AXI_DATA_C2H_00_wstrb[63:0],ULP_S_AXI_DATA_C2H_00_wvalid,blp_m_data_hbm_temp_00[6:0],blp_m_data_hbm_temp_01[6:0],blp_m_data_memory_calib_complete_00[0:0],blp_m_irq_cu_00[127:0],blp_m_irq_hbm_cattrip_00[0:0],blp_s_aclk_ctrl_00,blp_s_aclk_freerun_ref_00,blp_s_aclk_pcie_00,blp_s_aresetn_ctrl_00[0:0],blp_s_aresetn_pcie_00[0:0],blp_s_data_satellite_ctrl_data_00[1:0],ulp_m_aclk_ctrl_00,ulp_m_aclk_freerun_ref_00,ulp_m_aclk_pcie_00,ulp_m_aresetn_ctrl_00[0:0],ulp_m_aresetn_pcie_00[0:0],ulp_m_data_satellite_ctrl_data_00[1:0],ulp_s_data_hbm_temp_00[6:0],ulp_s_data_hbm_temp_01[6:0],ulp_s_data_memory_calib_complete_00[0:0],ulp_s_irq_cu_00[127:0],ulp_s_irq_hbm_cattrip_00[0:0]" */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 ARADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_M_AXI_DATA_C2H_00, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 512, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 2, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR1, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN cd_pcie_00, INSERT_VIP 0" *) output [38:0]BLP_M_AXI_DATA_C2H_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 ARBURST" *) output [1:0]BLP_M_AXI_DATA_C2H_00_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 ARCACHE" *) output [3:0]BLP_M_AXI_DATA_C2H_00_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 ARID" *) output [1:0]BLP_M_AXI_DATA_C2H_00_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 ARLEN" *) output [7:0]BLP_M_AXI_DATA_C2H_00_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 ARLOCK" *) output [0:0]BLP_M_AXI_DATA_C2H_00_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 ARPROT" *) output [2:0]BLP_M_AXI_DATA_C2H_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 ARREADY" *) input BLP_M_AXI_DATA_C2H_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 ARVALID" *) output BLP_M_AXI_DATA_C2H_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 AWADDR" *) output [38:0]BLP_M_AXI_DATA_C2H_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 AWBURST" *) output [1:0]BLP_M_AXI_DATA_C2H_00_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 AWCACHE" *) output [3:0]BLP_M_AXI_DATA_C2H_00_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 AWID" *) output [1:0]BLP_M_AXI_DATA_C2H_00_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 AWLEN" *) output [7:0]BLP_M_AXI_DATA_C2H_00_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 AWLOCK" *) output [0:0]BLP_M_AXI_DATA_C2H_00_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 AWPROT" *) output [2:0]BLP_M_AXI_DATA_C2H_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 AWREADY" *) input BLP_M_AXI_DATA_C2H_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 AWVALID" *) output BLP_M_AXI_DATA_C2H_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 BID" *) input [1:0]BLP_M_AXI_DATA_C2H_00_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 BREADY" *) output BLP_M_AXI_DATA_C2H_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 BRESP" *) input [1:0]BLP_M_AXI_DATA_C2H_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 BVALID" *) input BLP_M_AXI_DATA_C2H_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 RDATA" *) input [511:0]BLP_M_AXI_DATA_C2H_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 RID" *) input [1:0]BLP_M_AXI_DATA_C2H_00_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 RLAST" *) input BLP_M_AXI_DATA_C2H_00_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 RREADY" *) output BLP_M_AXI_DATA_C2H_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 RRESP" *) input [1:0]BLP_M_AXI_DATA_C2H_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 RVALID" *) input BLP_M_AXI_DATA_C2H_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 WDATA" *) output [511:0]BLP_M_AXI_DATA_C2H_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 WLAST" *) output BLP_M_AXI_DATA_C2H_00_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 WREADY" *) input BLP_M_AXI_DATA_C2H_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 WSTRB" *) output [63:0]BLP_M_AXI_DATA_C2H_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_M_AXI_DATA_C2H_00 WVALID" *) output BLP_M_AXI_DATA_C2H_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 ARADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_MGMT_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, WUSER_WIDTH 0, FREQ_HZ 50000000, ID_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [24:0]BLP_S_AXI_CTRL_MGMT_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 ARPROT" *) input [2:0]BLP_S_AXI_CTRL_MGMT_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 ARREADY" *) output BLP_S_AXI_CTRL_MGMT_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 ARVALID" *) input BLP_S_AXI_CTRL_MGMT_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 AWADDR" *) input [24:0]BLP_S_AXI_CTRL_MGMT_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 AWPROT" *) input [2:0]BLP_S_AXI_CTRL_MGMT_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 AWREADY" *) output BLP_S_AXI_CTRL_MGMT_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 AWVALID" *) input BLP_S_AXI_CTRL_MGMT_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 BREADY" *) input BLP_S_AXI_CTRL_MGMT_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 BRESP" *) output [1:0]BLP_S_AXI_CTRL_MGMT_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 BVALID" *) output BLP_S_AXI_CTRL_MGMT_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 RDATA" *) output [31:0]BLP_S_AXI_CTRL_MGMT_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 RREADY" *) input BLP_S_AXI_CTRL_MGMT_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 RRESP" *) output [1:0]BLP_S_AXI_CTRL_MGMT_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 RVALID" *) output BLP_S_AXI_CTRL_MGMT_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 WDATA" *) input [31:0]BLP_S_AXI_CTRL_MGMT_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 WREADY" *) output BLP_S_AXI_CTRL_MGMT_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 WSTRB" *) input [3:0]BLP_S_AXI_CTRL_MGMT_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 WVALID" *) input BLP_S_AXI_CTRL_MGMT_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 ARADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_MGMT_01, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR1, WUSER_WIDTH 0, FREQ_HZ 50000000, ID_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [24:0]BLP_S_AXI_CTRL_MGMT_01_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 ARPROT" *) input [2:0]BLP_S_AXI_CTRL_MGMT_01_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 ARREADY" *) output BLP_S_AXI_CTRL_MGMT_01_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 ARVALID" *) input BLP_S_AXI_CTRL_MGMT_01_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 AWADDR" *) input [24:0]BLP_S_AXI_CTRL_MGMT_01_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 AWPROT" *) input [2:0]BLP_S_AXI_CTRL_MGMT_01_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 AWREADY" *) output BLP_S_AXI_CTRL_MGMT_01_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 AWVALID" *) input BLP_S_AXI_CTRL_MGMT_01_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 BREADY" *) input BLP_S_AXI_CTRL_MGMT_01_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 BRESP" *) output [1:0]BLP_S_AXI_CTRL_MGMT_01_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 BVALID" *) output BLP_S_AXI_CTRL_MGMT_01_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 RDATA" *) output [31:0]BLP_S_AXI_CTRL_MGMT_01_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 RREADY" *) input BLP_S_AXI_CTRL_MGMT_01_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 RRESP" *) output [1:0]BLP_S_AXI_CTRL_MGMT_01_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 RVALID" *) output BLP_S_AXI_CTRL_MGMT_01_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 WDATA" *) input [31:0]BLP_S_AXI_CTRL_MGMT_01_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 WREADY" *) output BLP_S_AXI_CTRL_MGMT_01_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 WSTRB" *) input [3:0]BLP_S_AXI_CTRL_MGMT_01_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 WVALID" *) input BLP_S_AXI_CTRL_MGMT_01_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, WUSER_WIDTH 0, FREQ_HZ 250000000, ID_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_pcie_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [24:0]BLP_S_AXI_CTRL_USER_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARREADY" *) output BLP_S_AXI_CTRL_USER_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARVALID" *) input BLP_S_AXI_CTRL_USER_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWADDR" *) input [24:0]BLP_S_AXI_CTRL_USER_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWREADY" *) output BLP_S_AXI_CTRL_USER_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWVALID" *) input BLP_S_AXI_CTRL_USER_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BREADY" *) input BLP_S_AXI_CTRL_USER_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BVALID" *) output BLP_S_AXI_CTRL_USER_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RDATA" *) output [31:0]BLP_S_AXI_CTRL_USER_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RREADY" *) input BLP_S_AXI_CTRL_USER_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RVALID" *) output BLP_S_AXI_CTRL_USER_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WDATA" *) input [31:0]BLP_S_AXI_CTRL_USER_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WREADY" *) output BLP_S_AXI_CTRL_USER_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WSTRB" *) input [3:0]BLP_S_AXI_CTRL_USER_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WVALID" *) input BLP_S_AXI_CTRL_USER_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_01, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR1, WUSER_WIDTH 0, FREQ_HZ 250000000, ID_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_pcie_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [24:0]BLP_S_AXI_CTRL_USER_01_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_01_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARREADY" *) output BLP_S_AXI_CTRL_USER_01_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARVALID" *) input BLP_S_AXI_CTRL_USER_01_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWADDR" *) input [24:0]BLP_S_AXI_CTRL_USER_01_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_01_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWREADY" *) output BLP_S_AXI_CTRL_USER_01_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWVALID" *) input BLP_S_AXI_CTRL_USER_01_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 BREADY" *) input BLP_S_AXI_CTRL_USER_01_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 BRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_01_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 BVALID" *) output BLP_S_AXI_CTRL_USER_01_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RDATA" *) output [31:0]BLP_S_AXI_CTRL_USER_01_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RREADY" *) input BLP_S_AXI_CTRL_USER_01_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_01_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RVALID" *) output BLP_S_AXI_CTRL_USER_01_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WDATA" *) input [31:0]BLP_S_AXI_CTRL_USER_01_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WREADY" *) output BLP_S_AXI_CTRL_USER_01_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WSTRB" *) input [3:0]BLP_S_AXI_CTRL_USER_01_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WVALID" *) input BLP_S_AXI_CTRL_USER_01_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_DEBUG_00 ARADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_DEBUG_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR1, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, FREQ_HZ 50000000, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) input [24:0]BLP_S_AXI_CTRL_USER_DEBUG_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_DEBUG_00 ARPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_DEBUG_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_DEBUG_00 ARREADY" *) output BLP_S_AXI_CTRL_USER_DEBUG_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_DEBUG_00 ARVALID" *) input BLP_S_AXI_CTRL_USER_DEBUG_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_DEBUG_00 AWADDR" *) input [24:0]BLP_S_AXI_CTRL_USER_DEBUG_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_DEBUG_00 AWPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_DEBUG_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_DEBUG_00 AWREADY" *) output BLP_S_AXI_CTRL_USER_DEBUG_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_DEBUG_00 AWVALID" *) input BLP_S_AXI_CTRL_USER_DEBUG_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_DEBUG_00 BREADY" *) input BLP_S_AXI_CTRL_USER_DEBUG_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_DEBUG_00 BRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_DEBUG_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_DEBUG_00 BVALID" *) output BLP_S_AXI_CTRL_USER_DEBUG_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_DEBUG_00 RDATA" *) output [31:0]BLP_S_AXI_CTRL_USER_DEBUG_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_DEBUG_00 RREADY" *) input BLP_S_AXI_CTRL_USER_DEBUG_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_DEBUG_00 RRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_DEBUG_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_DEBUG_00 RVALID" *) output BLP_S_AXI_CTRL_USER_DEBUG_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_DEBUG_00 WDATA" *) input [31:0]BLP_S_AXI_CTRL_USER_DEBUG_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_DEBUG_00 WREADY" *) output BLP_S_AXI_CTRL_USER_DEBUG_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_DEBUG_00 WSTRB" *) input [3:0]BLP_S_AXI_CTRL_USER_DEBUG_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_DEBUG_00 WVALID" *) input BLP_S_AXI_CTRL_USER_DEBUG_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_00, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 512, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 2, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN cd_pcie_00, INSERT_VIP 0" *) input [38:0]BLP_S_AXI_DATA_H2C_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARBURST" *) input [1:0]BLP_S_AXI_DATA_H2C_00_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARCACHE" *) input [3:0]BLP_S_AXI_DATA_H2C_00_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARID" *) input [3:0]BLP_S_AXI_DATA_H2C_00_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARLEN" *) input [7:0]BLP_S_AXI_DATA_H2C_00_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARLOCK" *) input [0:0]BLP_S_AXI_DATA_H2C_00_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARPROT" *) input [2:0]BLP_S_AXI_DATA_H2C_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARREADY" *) output BLP_S_AXI_DATA_H2C_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARVALID" *) input BLP_S_AXI_DATA_H2C_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWADDR" *) input [38:0]BLP_S_AXI_DATA_H2C_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWBURST" *) input [1:0]BLP_S_AXI_DATA_H2C_00_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWCACHE" *) input [3:0]BLP_S_AXI_DATA_H2C_00_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWID" *) input [3:0]BLP_S_AXI_DATA_H2C_00_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWLEN" *) input [7:0]BLP_S_AXI_DATA_H2C_00_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWLOCK" *) input [0:0]BLP_S_AXI_DATA_H2C_00_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWPROT" *) input [2:0]BLP_S_AXI_DATA_H2C_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWREADY" *) output BLP_S_AXI_DATA_H2C_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWVALID" *) input BLP_S_AXI_DATA_H2C_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BID" *) output [3:0]BLP_S_AXI_DATA_H2C_00_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BREADY" *) input BLP_S_AXI_DATA_H2C_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BRESP" *) output [1:0]BLP_S_AXI_DATA_H2C_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BVALID" *) output BLP_S_AXI_DATA_H2C_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RDATA" *) output [511:0]BLP_S_AXI_DATA_H2C_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RID" *) output [3:0]BLP_S_AXI_DATA_H2C_00_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RLAST" *) output BLP_S_AXI_DATA_H2C_00_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RREADY" *) input BLP_S_AXI_DATA_H2C_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RRESP" *) output [1:0]BLP_S_AXI_DATA_H2C_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RVALID" *) output BLP_S_AXI_DATA_H2C_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WDATA" *) input [511:0]BLP_S_AXI_DATA_H2C_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WLAST" *) input BLP_S_AXI_DATA_H2C_00_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WREADY" *) output BLP_S_AXI_DATA_H2C_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WSTRB" *) input [63:0]BLP_S_AXI_DATA_H2C_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WVALID" *) input BLP_S_AXI_DATA_H2C_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 ARADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_CTRL_MGMT_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, WUSER_WIDTH 0, FREQ_HZ 50000000, ID_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [24:0]ULP_M_AXI_CTRL_MGMT_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 ARPROT" *) output [2:0]ULP_M_AXI_CTRL_MGMT_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 ARREADY" *) input ULP_M_AXI_CTRL_MGMT_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 ARVALID" *) output ULP_M_AXI_CTRL_MGMT_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 AWADDR" *) output [24:0]ULP_M_AXI_CTRL_MGMT_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 AWPROT" *) output [2:0]ULP_M_AXI_CTRL_MGMT_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 AWREADY" *) input ULP_M_AXI_CTRL_MGMT_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 AWVALID" *) output ULP_M_AXI_CTRL_MGMT_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 BREADY" *) output ULP_M_AXI_CTRL_MGMT_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 BRESP" *) input [1:0]ULP_M_AXI_CTRL_MGMT_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 BVALID" *) input ULP_M_AXI_CTRL_MGMT_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 RDATA" *) input [31:0]ULP_M_AXI_CTRL_MGMT_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 RREADY" *) output ULP_M_AXI_CTRL_MGMT_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 RRESP" *) input [1:0]ULP_M_AXI_CTRL_MGMT_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 RVALID" *) input ULP_M_AXI_CTRL_MGMT_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 WDATA" *) output [31:0]ULP_M_AXI_CTRL_MGMT_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 WREADY" *) input ULP_M_AXI_CTRL_MGMT_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 WSTRB" *) output [3:0]ULP_M_AXI_CTRL_MGMT_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 WVALID" *) output ULP_M_AXI_CTRL_MGMT_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 ARADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_CTRL_MGMT_01, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR1, WUSER_WIDTH 0, FREQ_HZ 50000000, ID_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [24:0]ULP_M_AXI_CTRL_MGMT_01_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 ARPROT" *) output [2:0]ULP_M_AXI_CTRL_MGMT_01_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 ARREADY" *) input ULP_M_AXI_CTRL_MGMT_01_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 ARVALID" *) output ULP_M_AXI_CTRL_MGMT_01_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 AWADDR" *) output [24:0]ULP_M_AXI_CTRL_MGMT_01_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 AWPROT" *) output [2:0]ULP_M_AXI_CTRL_MGMT_01_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 AWREADY" *) input ULP_M_AXI_CTRL_MGMT_01_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 AWVALID" *) output ULP_M_AXI_CTRL_MGMT_01_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 BREADY" *) output ULP_M_AXI_CTRL_MGMT_01_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 BRESP" *) input [1:0]ULP_M_AXI_CTRL_MGMT_01_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 BVALID" *) input ULP_M_AXI_CTRL_MGMT_01_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 RDATA" *) input [31:0]ULP_M_AXI_CTRL_MGMT_01_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 RREADY" *) output ULP_M_AXI_CTRL_MGMT_01_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 RRESP" *) input [1:0]ULP_M_AXI_CTRL_MGMT_01_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 RVALID" *) input ULP_M_AXI_CTRL_MGMT_01_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 WDATA" *) output [31:0]ULP_M_AXI_CTRL_MGMT_01_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 WREADY" *) input ULP_M_AXI_CTRL_MGMT_01_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 WSTRB" *) output [3:0]ULP_M_AXI_CTRL_MGMT_01_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 WVALID" *) output ULP_M_AXI_CTRL_MGMT_01_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_CTRL_USER_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, WUSER_WIDTH 0, FREQ_HZ 250000000, ID_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_pcie_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [24:0]ULP_M_AXI_CTRL_USER_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARPROT" *) output [2:0]ULP_M_AXI_CTRL_USER_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARREADY" *) input ULP_M_AXI_CTRL_USER_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARVALID" *) output ULP_M_AXI_CTRL_USER_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWADDR" *) output [24:0]ULP_M_AXI_CTRL_USER_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWPROT" *) output [2:0]ULP_M_AXI_CTRL_USER_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWREADY" *) input ULP_M_AXI_CTRL_USER_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWVALID" *) output ULP_M_AXI_CTRL_USER_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BREADY" *) output ULP_M_AXI_CTRL_USER_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BRESP" *) input [1:0]ULP_M_AXI_CTRL_USER_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BVALID" *) input ULP_M_AXI_CTRL_USER_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RDATA" *) input [31:0]ULP_M_AXI_CTRL_USER_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RREADY" *) output ULP_M_AXI_CTRL_USER_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RRESP" *) input [1:0]ULP_M_AXI_CTRL_USER_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RVALID" *) input ULP_M_AXI_CTRL_USER_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WDATA" *) output [31:0]ULP_M_AXI_CTRL_USER_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WREADY" *) input ULP_M_AXI_CTRL_USER_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WSTRB" *) output [3:0]ULP_M_AXI_CTRL_USER_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WVALID" *) output ULP_M_AXI_CTRL_USER_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 ARADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_CTRL_USER_01, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR1, WUSER_WIDTH 0, FREQ_HZ 250000000, ID_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_pcie_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [24:0]ULP_M_AXI_CTRL_USER_01_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 ARPROT" *) output [2:0]ULP_M_AXI_CTRL_USER_01_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 ARREADY" *) input ULP_M_AXI_CTRL_USER_01_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 ARVALID" *) output ULP_M_AXI_CTRL_USER_01_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 AWADDR" *) output [24:0]ULP_M_AXI_CTRL_USER_01_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 AWPROT" *) output [2:0]ULP_M_AXI_CTRL_USER_01_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 AWREADY" *) input ULP_M_AXI_CTRL_USER_01_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 AWVALID" *) output ULP_M_AXI_CTRL_USER_01_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 BREADY" *) output ULP_M_AXI_CTRL_USER_01_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 BRESP" *) input [1:0]ULP_M_AXI_CTRL_USER_01_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 BVALID" *) input ULP_M_AXI_CTRL_USER_01_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 RDATA" *) input [31:0]ULP_M_AXI_CTRL_USER_01_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 RREADY" *) output ULP_M_AXI_CTRL_USER_01_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 RRESP" *) input [1:0]ULP_M_AXI_CTRL_USER_01_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 RVALID" *) input ULP_M_AXI_CTRL_USER_01_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 WDATA" *) output [31:0]ULP_M_AXI_CTRL_USER_01_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 WREADY" *) input ULP_M_AXI_CTRL_USER_01_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 WSTRB" *) output [3:0]ULP_M_AXI_CTRL_USER_01_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 WVALID" *) output ULP_M_AXI_CTRL_USER_01_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_DEBUG_00 ARADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_CTRL_USER_DEBUG_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR1, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, FREQ_HZ 50000000, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) output [24:0]ULP_M_AXI_CTRL_USER_DEBUG_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_DEBUG_00 ARPROT" *) output [2:0]ULP_M_AXI_CTRL_USER_DEBUG_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_DEBUG_00 ARREADY" *) input ULP_M_AXI_CTRL_USER_DEBUG_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_DEBUG_00 ARVALID" *) output ULP_M_AXI_CTRL_USER_DEBUG_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_DEBUG_00 AWADDR" *) output [24:0]ULP_M_AXI_CTRL_USER_DEBUG_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_DEBUG_00 AWPROT" *) output [2:0]ULP_M_AXI_CTRL_USER_DEBUG_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_DEBUG_00 AWREADY" *) input ULP_M_AXI_CTRL_USER_DEBUG_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_DEBUG_00 AWVALID" *) output ULP_M_AXI_CTRL_USER_DEBUG_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_DEBUG_00 BREADY" *) output ULP_M_AXI_CTRL_USER_DEBUG_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_DEBUG_00 BRESP" *) input [1:0]ULP_M_AXI_CTRL_USER_DEBUG_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_DEBUG_00 BVALID" *) input ULP_M_AXI_CTRL_USER_DEBUG_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_DEBUG_00 RDATA" *) input [31:0]ULP_M_AXI_CTRL_USER_DEBUG_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_DEBUG_00 RREADY" *) output ULP_M_AXI_CTRL_USER_DEBUG_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_DEBUG_00 RRESP" *) input [1:0]ULP_M_AXI_CTRL_USER_DEBUG_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_DEBUG_00 RVALID" *) input ULP_M_AXI_CTRL_USER_DEBUG_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_DEBUG_00 WDATA" *) output [31:0]ULP_M_AXI_CTRL_USER_DEBUG_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_DEBUG_00 WREADY" *) input ULP_M_AXI_CTRL_USER_DEBUG_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_DEBUG_00 WSTRB" *) output [3:0]ULP_M_AXI_CTRL_USER_DEBUG_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_DEBUG_00 WVALID" *) output ULP_M_AXI_CTRL_USER_DEBUG_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_DATA_H2C_00, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 512, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 2, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN cd_pcie_00, INSERT_VIP 0" *) output [38:0]ULP_M_AXI_DATA_H2C_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARBURST" *) output [1:0]ULP_M_AXI_DATA_H2C_00_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARCACHE" *) output [3:0]ULP_M_AXI_DATA_H2C_00_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARID" *) output [3:0]ULP_M_AXI_DATA_H2C_00_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARLEN" *) output [7:0]ULP_M_AXI_DATA_H2C_00_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARLOCK" *) output [0:0]ULP_M_AXI_DATA_H2C_00_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARPROT" *) output [2:0]ULP_M_AXI_DATA_H2C_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARREADY" *) input ULP_M_AXI_DATA_H2C_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARVALID" *) output ULP_M_AXI_DATA_H2C_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWADDR" *) output [38:0]ULP_M_AXI_DATA_H2C_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWBURST" *) output [1:0]ULP_M_AXI_DATA_H2C_00_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWCACHE" *) output [3:0]ULP_M_AXI_DATA_H2C_00_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWID" *) output [3:0]ULP_M_AXI_DATA_H2C_00_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWLEN" *) output [7:0]ULP_M_AXI_DATA_H2C_00_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWLOCK" *) output [0:0]ULP_M_AXI_DATA_H2C_00_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWPROT" *) output [2:0]ULP_M_AXI_DATA_H2C_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWREADY" *) input ULP_M_AXI_DATA_H2C_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWVALID" *) output ULP_M_AXI_DATA_H2C_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BID" *) input [3:0]ULP_M_AXI_DATA_H2C_00_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BREADY" *) output ULP_M_AXI_DATA_H2C_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BRESP" *) input [1:0]ULP_M_AXI_DATA_H2C_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BVALID" *) input ULP_M_AXI_DATA_H2C_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RDATA" *) input [511:0]ULP_M_AXI_DATA_H2C_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RID" *) input [3:0]ULP_M_AXI_DATA_H2C_00_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RLAST" *) input ULP_M_AXI_DATA_H2C_00_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RREADY" *) output ULP_M_AXI_DATA_H2C_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RRESP" *) input [1:0]ULP_M_AXI_DATA_H2C_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RVALID" *) input ULP_M_AXI_DATA_H2C_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WDATA" *) output [511:0]ULP_M_AXI_DATA_H2C_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WLAST" *) output ULP_M_AXI_DATA_H2C_00_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WREADY" *) input ULP_M_AXI_DATA_H2C_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WSTRB" *) output [63:0]ULP_M_AXI_DATA_H2C_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WVALID" *) output ULP_M_AXI_DATA_H2C_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 ARADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_S_AXI_DATA_C2H_00, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 512, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 2, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR1, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN cd_pcie_00, INSERT_VIP 0" *) input [38:0]ULP_S_AXI_DATA_C2H_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 ARBURST" *) input [1:0]ULP_S_AXI_DATA_C2H_00_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 ARCACHE" *) input [3:0]ULP_S_AXI_DATA_C2H_00_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 ARID" *) input [1:0]ULP_S_AXI_DATA_C2H_00_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 ARLEN" *) input [7:0]ULP_S_AXI_DATA_C2H_00_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 ARLOCK" *) input [0:0]ULP_S_AXI_DATA_C2H_00_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 ARPROT" *) input [2:0]ULP_S_AXI_DATA_C2H_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 ARREADY" *) output ULP_S_AXI_DATA_C2H_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 ARVALID" *) input ULP_S_AXI_DATA_C2H_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 AWADDR" *) input [38:0]ULP_S_AXI_DATA_C2H_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 AWBURST" *) input [1:0]ULP_S_AXI_DATA_C2H_00_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 AWCACHE" *) input [3:0]ULP_S_AXI_DATA_C2H_00_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 AWID" *) input [1:0]ULP_S_AXI_DATA_C2H_00_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 AWLEN" *) input [7:0]ULP_S_AXI_DATA_C2H_00_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 AWLOCK" *) input [0:0]ULP_S_AXI_DATA_C2H_00_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 AWPROT" *) input [2:0]ULP_S_AXI_DATA_C2H_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 AWREADY" *) output ULP_S_AXI_DATA_C2H_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 AWVALID" *) input ULP_S_AXI_DATA_C2H_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 BID" *) output [1:0]ULP_S_AXI_DATA_C2H_00_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 BREADY" *) input ULP_S_AXI_DATA_C2H_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 BRESP" *) output [1:0]ULP_S_AXI_DATA_C2H_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 BVALID" *) output ULP_S_AXI_DATA_C2H_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 RDATA" *) output [511:0]ULP_S_AXI_DATA_C2H_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 RID" *) output [1:0]ULP_S_AXI_DATA_C2H_00_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 RLAST" *) output ULP_S_AXI_DATA_C2H_00_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 RREADY" *) input ULP_S_AXI_DATA_C2H_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 RRESP" *) output [1:0]ULP_S_AXI_DATA_C2H_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 RVALID" *) output ULP_S_AXI_DATA_C2H_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 WDATA" *) input [511:0]ULP_S_AXI_DATA_C2H_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 WLAST" *) input ULP_S_AXI_DATA_C2H_00_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 WREADY" *) output ULP_S_AXI_DATA_C2H_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 WSTRB" *) input [63:0]ULP_S_AXI_DATA_C2H_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_S_AXI_DATA_C2H_00 WVALID" *) input ULP_S_AXI_DATA_C2H_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_M_DATA_HBM_TEMP_00 DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_M_DATA_HBM_TEMP_00, LAYERED_METADATA undef" *) output [6:0]blp_m_data_hbm_temp_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_M_DATA_HBM_TEMP_01 DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_M_DATA_HBM_TEMP_01, LAYERED_METADATA undef" *) output [6:0]blp_m_data_hbm_temp_01;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_M_DATA_MEMORY_CALIB_COMPLETE_00 DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_M_DATA_MEMORY_CALIB_COMPLETE_00, LAYERED_METADATA undef" *) output [0:0]blp_m_data_memory_calib_complete_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.BLP_M_IRQ_CU_00 INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.BLP_M_IRQ_CU_00, PORTWIDTH 128, SENSITIVITY LEVEL_HIGH" *) output [127:0]blp_m_irq_cu_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.BLP_M_IRQ_HBM_CATTRIP_00 INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.BLP_M_IRQ_HBM_CATTRIP_00, PORTWIDTH 1, SENSITIVITY LEVEL_HIGH" *) output [0:0]blp_m_irq_hbm_cattrip_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_CTRL_00 CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_CTRL_00, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 50000000, PHASE 0, ASSOCIATED_BUSIF BLP_S_AXI_CTRL_MGMT_00:BLP_S_AXI_CTRL_MGMT_01:BLP_S_AXI_CTRL_USER_DEBUG_00:BLP_S_DATA_SATELLITE_CTRL_DATA_00:BLP_M_DATA_MEMORY_CALIB_COMPLETE_00:BLP_M_DATA_HBM_TEMP_00:BLP_M_DATA_HBM_TEMP_01:BLP_M_IRQ_HBM_CATTRIP_00, ASSOCIATED_RESET blp_s_aresetn_ctrl_00, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0" *) input blp_s_aclk_ctrl_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_FREERUN_REF_00 CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_FREERUN_REF_00, CLK_DOMAIN cd_freerun_ref_00, FREQ_HZ 100000000, PHASE 0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0" *) input blp_s_aclk_freerun_ref_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_PCIE_00 CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_PCIE_00, CLK_DOMAIN cd_pcie_00, FREQ_HZ 250000000, PHASE 0, ASSOCIATED_BUSIF BLP_S_AXI_CTRL_USER_00:BLP_S_AXI_CTRL_USER_01:BLP_M_AXI_DATA_C2H_00:BLP_S_AXI_DATA_H2C_00:BLP_M_IRQ_CU_00, ASSOCIATED_RESET blp_s_aresetn_pcie_00, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0" *) input blp_s_aclk_pcie_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_CTRL_00 RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.BLP_S_ARESETN_CTRL_00, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input [0:0]blp_s_aresetn_ctrl_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_PCIE_00 RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.BLP_S_ARESETN_PCIE_00, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input [0:0]blp_s_aresetn_pcie_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_S_DATA_SATELLITE_CTRL_DATA_00 DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_S_DATA_SATELLITE_CTRL_DATA_00, LAYERED_METADATA undef" *) input [1:0]blp_s_data_satellite_ctrl_data_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_CTRL_00 CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ULP_M_ACLK_CTRL_00, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 50000000, PHASE 0, ASSOCIATED_BUSIF ULP_M_AXI_CTRL_MGMT_00:ULP_M_AXI_CTRL_MGMT_01:ULP_M_AXI_CTRL_USER_DEBUG_00:ULP_M_DATA_SATELLITE_CTRL_DATA_00:ULP_S_DATA_MEMORY_CALIB_COMPLETE_00:ULP_S_DATA_HBM_TEMP_00:ULP_S_DATA_HBM_TEMP_01:ULP_S_IRQ_HBM_CATTRIP_00, ASSOCIATED_RESET ulp_m_aresetn_ctrl_00, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0" *) output ulp_m_aclk_ctrl_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_FREERUN_REF_00 CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ULP_M_ACLK_FREERUN_REF_00, CLK_DOMAIN cd_freerun_ref_00, FREQ_HZ 100000000, PHASE 0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0" *) output ulp_m_aclk_freerun_ref_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_PCIE_00 CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ULP_M_ACLK_PCIE_00, CLK_DOMAIN cd_pcie_00, FREQ_HZ 250000000, PHASE 0, ASSOCIATED_BUSIF ULP_M_AXI_CTRL_USER_00:ULP_M_AXI_CTRL_USER_01:ULP_S_AXI_DATA_C2H_00:ULP_M_AXI_DATA_H2C_00:ULP_S_IRQ_CU_00, ASSOCIATED_RESET ulp_m_aresetn_pcie_00, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0" *) output ulp_m_aclk_pcie_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ULP_M_ARESETN_CTRL_00 RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ULP_M_ARESETN_CTRL_00, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [0:0]ulp_m_aresetn_ctrl_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ULP_M_ARESETN_PCIE_00 RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ULP_M_ARESETN_PCIE_00, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [0:0]ulp_m_aresetn_pcie_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ULP_M_DATA_SATELLITE_CTRL_DATA_00 DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ULP_M_DATA_SATELLITE_CTRL_DATA_00, LAYERED_METADATA undef" *) output [1:0]ulp_m_data_satellite_ctrl_data_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ULP_S_DATA_HBM_TEMP_00 DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ULP_S_DATA_HBM_TEMP_00, LAYERED_METADATA undef" *) input [6:0]ulp_s_data_hbm_temp_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ULP_S_DATA_HBM_TEMP_01 DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ULP_S_DATA_HBM_TEMP_01, LAYERED_METADATA undef" *) input [6:0]ulp_s_data_hbm_temp_01;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ULP_S_DATA_MEMORY_CALIB_COMPLETE_00 DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ULP_S_DATA_MEMORY_CALIB_COMPLETE_00, LAYERED_METADATA undef" *) input [0:0]ulp_s_data_memory_calib_complete_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.ULP_S_IRQ_CU_00 INTERRUPT" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.ULP_S_IRQ_CU_00, PORTWIDTH 128, SENSITIVITY LEVEL_HIGH" *) input [127:0]ulp_s_irq_cu_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.ULP_S_IRQ_HBM_CATTRIP_00 INTERRUPT" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.ULP_S_IRQ_HBM_CATTRIP_00, PORTWIDTH 1, SENSITIVITY LEVEL_HIGH" *) input [0:0]ulp_s_irq_hbm_cattrip_00;
endmodule
