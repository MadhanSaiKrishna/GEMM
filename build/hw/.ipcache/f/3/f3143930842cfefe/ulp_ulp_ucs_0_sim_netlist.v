// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Oct  1 03:10:17 2026
// Host        : node06.local running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_ulp_ucs_0_sim_netlist.v
// Design      : ulp_ulp_ucs_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aclk_hbm_hierarchy_imp_X70VO2
   (aclk_hbm,
    S_AXI_awready,
    S_AXI_wready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_arready,
    S_AXI_rdata,
    S_AXI_rresp,
    S_AXI_rvalid,
    aresetn_hbm,
    aclk_ctrl,
    aresetn_ctrl,
    S_AXI_awaddr,
    S_AXI_awvalid,
    S_AXI_wdata,
    S_AXI_wstrb,
    S_AXI_wvalid,
    S_AXI_bready,
    S_AXI_araddr,
    S_AXI_arvalid,
    S_AXI_rready,
    clock_program_done,
    power_down,
    aclk_freerun,
    aresetn_pcie);
  output aclk_hbm;
  output S_AXI_awready;
  output S_AXI_wready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_arready;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  output [0:0]aresetn_hbm;
  input aclk_ctrl;
  input aresetn_ctrl;
  input [10:0]S_AXI_awaddr;
  input S_AXI_awvalid;
  input [31:0]S_AXI_wdata;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input S_AXI_bready;
  input [10:0]S_AXI_araddr;
  input S_AXI_arvalid;
  input S_AXI_rready;
  input [0:0]clock_program_done;
  input power_down;
  input aclk_freerun;
  input aresetn_pcie;

  wire [10:0]S_AXI_araddr;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [10:0]S_AXI_awaddr;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire aclk_ctrl;
  wire aclk_freerun;
  wire aclk_hbm;
  wire aresetn_ctrl;
  wire [0:0]aresetn_hbm;
  wire aresetn_pcie;
  wire clk_hbm_adapt_net;
  wire clk_hbm_locked_net;
  wire [0:0]clock_program_done;
  wire hbm_aresetn_int_net;
  wire power_down;
  wire NLW_psreset_hbm_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_hbm_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_hbm_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psreset_hbm_peripheral_reset_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "bd_22c0_clk_hbm_adapt_0,clk_metadata_adapter_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_hbm_adapt_0 clk_hbm_adapt
       (.clk_in(clk_hbm_adapt_net),
        .clk_out(aclk_hbm));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clkwiz_hbm_0 clkwiz_hbm
       (.clk_in1(aclk_freerun),
        .clk_out1(clk_hbm_adapt_net),
        .clk_out1_ce(clock_program_done),
        .locked(clk_hbm_locked_net),
        .power_down(power_down),
        .s_axi_aclk(aclk_ctrl),
        .s_axi_araddr(S_AXI_araddr),
        .s_axi_aresetn(aresetn_ctrl),
        .s_axi_arready(S_AXI_arready),
        .s_axi_arvalid(S_AXI_arvalid),
        .s_axi_awaddr(S_AXI_awaddr),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_rdata(S_AXI_rdata),
        .s_axi_rready(S_AXI_rready),
        .s_axi_rresp(S_AXI_rresp),
        .s_axi_rvalid(S_AXI_rvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_hbm_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_hbm_0 fanout_aresetn_hbm
       (.clk(aclk_hbm),
        .d(hbm_aresetn_int_net),
        .q(aresetn_hbm),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_psreset_hbm_0,proc_sys_reset,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_hbm_0 psreset_hbm
       (.aux_reset_in(aresetn_ctrl),
        .bus_struct_reset(NLW_psreset_hbm_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(clk_hbm_locked_net),
        .ext_reset_in(aresetn_pcie),
        .interconnect_aresetn(hbm_aresetn_int_net),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psreset_hbm_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psreset_hbm_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psreset_hbm_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(aclk_hbm));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aclk_kernel_00_hierarchy_imp_1J5BJ1M
   (aclk_kernel_00,
    aclk_kernel_00_cont,
    S_AXI_awready,
    S_AXI_wready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_arready,
    S_AXI_rdata,
    S_AXI_rresp,
    S_AXI_rvalid,
    aresetn_kernel_00_slr0,
    aresetn_kernel_00_slr1,
    aclk_ctrl,
    aresetn_ctrl,
    S_AXI_awaddr,
    S_AXI_awvalid,
    S_AXI_wdata,
    S_AXI_wstrb,
    S_AXI_wvalid,
    S_AXI_bready,
    S_AXI_araddr,
    S_AXI_arvalid,
    S_AXI_rready,
    power_down,
    aclk_freerun,
    clock_program_done,
    shutdown_request_latch,
    gapping_demand_toggle,
    requested_gapping_demand_rate,
    aresetn_pcie);
  output aclk_kernel_00;
  output aclk_kernel_00_cont;
  output S_AXI_awready;
  output S_AXI_wready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_arready;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  output [0:0]aresetn_kernel_00_slr0;
  output [0:0]aresetn_kernel_00_slr1;
  input aclk_ctrl;
  input aresetn_ctrl;
  input [10:0]S_AXI_awaddr;
  input S_AXI_awvalid;
  input [31:0]S_AXI_wdata;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input S_AXI_bready;
  input [10:0]S_AXI_araddr;
  input S_AXI_arvalid;
  input S_AXI_rready;
  input power_down;
  input aclk_freerun;
  input [0:0]clock_program_done;
  input shutdown_request_latch;
  input [0:0]gapping_demand_toggle;
  input [7:0]requested_gapping_demand_rate;
  input aresetn_pcie;

  wire [10:0]S_AXI_araddr;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [10:0]S_AXI_awaddr;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire aclk_ctrl;
  wire aclk_freerun;
  wire aclk_kernel_00;
  wire aclk_kernel_00_cont;
  wire aresetn_ctrl;
  wire aresetn_kernel_00_async_net;
  wire [0:0]aresetn_kernel_00_slr0;
  wire [0:0]aresetn_kernel_00_slr1;
  wire aresetn_pcie;
  wire clk_kernel_00_locked_net;
  wire clk_kernel_00_unbuffered_net;
  wire [0:0]clock_program_done;
  wire clock_throttling_kernel_00_clk_out_cont_net;
  wire clock_throttling_kernel_00_clk_out_net;
  wire [0:0]gapping_demand_toggle;
  wire power_down;
  wire psreset_kernel_00_net;
  wire [7:0]requested_gapping_demand_rate;
  wire shutdown_request_latch;
  wire NLW_psreset_kernel_00_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_kernel_00_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_kernel_00_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psreset_kernel_00_peripheral_reset_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "bd_22c0_aclk_kernel_00_adapt_0,clk_metadata_adapter_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_aclk_kernel_00_adapt_0 aclk_kernel_00_adapt
       (.clk_in(clock_throttling_kernel_00_clk_out_net),
        .clk_out(aclk_kernel_00));
  (* CHECK_LICENSE_TYPE = "bd_22c0_aclk_kernel_00_cont_adapt_0,clk_metadata_adapter_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_aclk_kernel_00_cont_adapt_0 aclk_kernel_00_cont_adapt
       (.clk_in(clock_throttling_kernel_00_clk_out_cont_net),
        .clk_out(aclk_kernel_00_cont));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clkwiz_aclk_kernel_00_0 clkwiz_aclk_kernel_00
       (.clk_in1(aclk_freerun),
        .clk_out1(clk_kernel_00_unbuffered_net),
        .locked(clk_kernel_00_locked_net),
        .power_down(power_down),
        .s_axi_aclk(aclk_ctrl),
        .s_axi_araddr(S_AXI_araddr),
        .s_axi_aresetn(aresetn_ctrl),
        .s_axi_arready(S_AXI_arready),
        .s_axi_arvalid(S_AXI_arvalid),
        .s_axi_awaddr(S_AXI_awaddr),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_rdata(S_AXI_rdata),
        .s_axi_rready(S_AXI_rready),
        .s_axi_rresp(S_AXI_rresp),
        .s_axi_rvalid(S_AXI_rvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
  (* CHECK_LICENSE_TYPE = "bd_22c0_clock_throttling_aclk_kernel_00_0,shell_utils_clock_throttling,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "shell_utils_clock_throttling,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_throttling_aclk_kernel_00_0 clock_throttling_aclk_kernel_00
       (.Clk_In(clk_kernel_00_unbuffered_net),
        .Clk_Out(clock_throttling_kernel_00_clk_out_net),
        .Clk_Out_Cont(clock_throttling_kernel_00_clk_out_cont_net),
        .Locked(clk_kernel_00_locked_net),
        .Rate_In(requested_gapping_demand_rate),
        .Rate_Upd_Tog(gapping_demand_toggle),
        .Rst_Async(aresetn_kernel_00_async_net),
        .Rst_In(aresetn_ctrl),
        .Shutdown_Latch(shutdown_request_latch),
        .Startup_Done(clock_program_done));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fanout_aresetn_kernel_00_imp_17RTXXN fanout_aresetn_kernel_00
       (.aclk_kernel_00_cont(aclk_kernel_00_cont),
        .aresetn_kernel_00(psreset_kernel_00_net),
        .aresetn_kernel_00_slr0(aresetn_kernel_00_slr0),
        .aresetn_kernel_00_slr1(aresetn_kernel_00_slr1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_psreset_kernel_00_0,proc_sys_reset,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_kernel_00_0 psreset_kernel_00
       (.aux_reset_in(aresetn_kernel_00_async_net),
        .bus_struct_reset(NLW_psreset_kernel_00_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn_pcie),
        .interconnect_aresetn(psreset_kernel_00_net),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psreset_kernel_00_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psreset_kernel_00_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psreset_kernel_00_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(aclk_kernel_00_cont));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aclk_kernel_01_hierarchy_imp_BJA0NF
   (aclk_kernel_01,
    aclk_kernel_01_cont,
    S_AXI_awready,
    S_AXI_wready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_arready,
    S_AXI_rdata,
    S_AXI_rresp,
    S_AXI_rvalid,
    aresetn_kernel_01_slr0,
    aresetn_kernel_01_slr1,
    aclk_ctrl,
    aresetn_ctrl,
    S_AXI_awaddr,
    S_AXI_awvalid,
    S_AXI_wdata,
    S_AXI_wstrb,
    S_AXI_wvalid,
    S_AXI_bready,
    S_AXI_araddr,
    S_AXI_arvalid,
    S_AXI_rready,
    power_down,
    aclk_freerun,
    clock_program_done,
    shutdown_request_latch,
    gapping_demand_toggle,
    requested_gapping_demand_rate,
    aresetn_pcie);
  output aclk_kernel_01;
  output aclk_kernel_01_cont;
  output S_AXI_awready;
  output S_AXI_wready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_arready;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  output [0:0]aresetn_kernel_01_slr0;
  output [0:0]aresetn_kernel_01_slr1;
  input aclk_ctrl;
  input aresetn_ctrl;
  input [10:0]S_AXI_awaddr;
  input S_AXI_awvalid;
  input [31:0]S_AXI_wdata;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input S_AXI_bready;
  input [10:0]S_AXI_araddr;
  input S_AXI_arvalid;
  input S_AXI_rready;
  input power_down;
  input aclk_freerun;
  input [0:0]clock_program_done;
  input shutdown_request_latch;
  input [0:0]gapping_demand_toggle;
  input [7:0]requested_gapping_demand_rate;
  input aresetn_pcie;

  wire [10:0]S_AXI_araddr;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [10:0]S_AXI_awaddr;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire aclk_ctrl;
  wire aclk_freerun;
  wire aclk_kernel_01;
  wire aclk_kernel_01_cont;
  wire aresetn_ctrl;
  wire aresetn_kernel_01_async_net;
  wire [0:0]aresetn_kernel_01_slr0;
  wire [0:0]aresetn_kernel_01_slr1;
  wire aresetn_pcie;
  wire clk_kernel_01_locked_net;
  wire clk_kernel_01_unbuffered_net;
  wire [0:0]clock_program_done;
  wire clock_throttling_kernel_01_clk_out_cont_net;
  wire clock_throttling_kernel_01_clk_out_net;
  wire [0:0]gapping_demand_toggle;
  wire power_down;
  wire psreset_kernel_01_net;
  wire [7:0]requested_gapping_demand_rate;
  wire shutdown_request_latch;
  wire NLW_psreset_kernel_01_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_kernel_01_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_kernel_01_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psreset_kernel_01_peripheral_reset_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "bd_22c0_aclk_kernel_01_adapt_0,clk_metadata_adapter_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_aclk_kernel_01_adapt_0 aclk_kernel_01_adapt
       (.clk_in(clock_throttling_kernel_01_clk_out_net),
        .clk_out(aclk_kernel_01));
  (* CHECK_LICENSE_TYPE = "bd_22c0_aclk_kernel_01_cont_adapt_0,clk_metadata_adapter_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_aclk_kernel_01_cont_adapt_0 aclk_kernel_01_cont_adapt
       (.clk_in(clock_throttling_kernel_01_clk_out_cont_net),
        .clk_out(aclk_kernel_01_cont));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clkwiz_aclk_kernel_01_0 clkwiz_aclk_kernel_01
       (.clk_in1(aclk_freerun),
        .clk_out1(clk_kernel_01_unbuffered_net),
        .locked(clk_kernel_01_locked_net),
        .power_down(power_down),
        .s_axi_aclk(aclk_ctrl),
        .s_axi_araddr(S_AXI_araddr),
        .s_axi_aresetn(aresetn_ctrl),
        .s_axi_arready(S_AXI_arready),
        .s_axi_arvalid(S_AXI_arvalid),
        .s_axi_awaddr(S_AXI_awaddr),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_rdata(S_AXI_rdata),
        .s_axi_rready(S_AXI_rready),
        .s_axi_rresp(S_AXI_rresp),
        .s_axi_rvalid(S_AXI_rvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
  (* CHECK_LICENSE_TYPE = "bd_22c0_clock_throttling_aclk_kernel_01_0,shell_utils_clock_throttling,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "shell_utils_clock_throttling,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_throttling_aclk_kernel_01_0 clock_throttling_aclk_kernel_01
       (.Clk_In(clk_kernel_01_unbuffered_net),
        .Clk_Out(clock_throttling_kernel_01_clk_out_net),
        .Clk_Out_Cont(clock_throttling_kernel_01_clk_out_cont_net),
        .Locked(clk_kernel_01_locked_net),
        .Rate_In(requested_gapping_demand_rate),
        .Rate_Upd_Tog(gapping_demand_toggle),
        .Rst_Async(aresetn_kernel_01_async_net),
        .Rst_In(aresetn_ctrl),
        .Shutdown_Latch(shutdown_request_latch),
        .Startup_Done(clock_program_done));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fanout_aresetn_kernel_01_imp_68K3FY fanout_aresetn_kernel_01
       (.aclk_kernel_01_cont(aclk_kernel_01_cont),
        .aresetn_kernel_01(psreset_kernel_01_net),
        .aresetn_kernel_01_slr0(aresetn_kernel_01_slr0),
        .aresetn_kernel_01_slr1(aresetn_kernel_01_slr1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_psreset_kernel_01_0,proc_sys_reset,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_kernel_01_0 psreset_kernel_01
       (.aux_reset_in(aresetn_kernel_01_async_net),
        .bus_struct_reset(NLW_psreset_kernel_01_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn_pcie),
        .interconnect_aresetn(psreset_kernel_01_net),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psreset_kernel_01_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psreset_kernel_01_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psreset_kernel_01_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(aclk_kernel_01_cont));
endmodule

(* HW_HANDOFF = "ulp_ulp_ucs_0.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0
   (aclk_ctrl,
    aclk_freerun,
    aclk_hbm,
    aclk_hbm_refclk,
    aclk_kernel_00,
    aclk_kernel_01,
    aclk_pcie,
    aresetn_ctrl,
    aresetn_ctrl_slr0,
    aresetn_ctrl_slr1,
    aresetn_hbm,
    aresetn_kernel_00_slr0,
    aresetn_kernel_00_slr1,
    aresetn_kernel_01_slr0,
    aresetn_kernel_01_slr1,
    aresetn_pcie,
    aresetn_pcie_slr0,
    aresetn_pcie_slr1,
    s_axi_ctrl_mgmt_araddr,
    s_axi_ctrl_mgmt_arprot,
    s_axi_ctrl_mgmt_arready,
    s_axi_ctrl_mgmt_arvalid,
    s_axi_ctrl_mgmt_awaddr,
    s_axi_ctrl_mgmt_awprot,
    s_axi_ctrl_mgmt_awready,
    s_axi_ctrl_mgmt_awvalid,
    s_axi_ctrl_mgmt_bready,
    s_axi_ctrl_mgmt_bresp,
    s_axi_ctrl_mgmt_bvalid,
    s_axi_ctrl_mgmt_rdata,
    s_axi_ctrl_mgmt_rready,
    s_axi_ctrl_mgmt_rresp,
    s_axi_ctrl_mgmt_rvalid,
    s_axi_ctrl_mgmt_wdata,
    s_axi_ctrl_mgmt_wready,
    s_axi_ctrl_mgmt_wstrb,
    s_axi_ctrl_mgmt_wvalid,
    shutdown_clocks);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_CTRL CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_CTRL, ASSOCIATED_BUSIF s_axi_ctrl_mgmt, ASSOCIATED_CLKEN CE, ASSOCIATED_RESET aresetn_ctrl:aresetn_ctrl_slr0:aresetn_ctrl_slr1, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input aclk_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_FREERUN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_FREERUN, CLK_DOMAIN cd_freerun_ref_00, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input aclk_freerun;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_HBM CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_HBM, ASSOCIATED_RESET aresetn_hbm, CLK_DOMAIN cd_aclk_hbm_00, FREQ_HZ 450000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output aclk_hbm;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_HBM_REFCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_HBM_REFCLK, CLK_DOMAIN cd_freerun_ref_00, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input aclk_hbm_refclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_KERNEL_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_KERNEL_00, ASSOCIATED_RESET aresetn_kernel_00_slr0:aresetn_kernel_00_slr1, CLK_DOMAIN cd_aclk_kernel_00, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output aclk_kernel_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_KERNEL_01 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_KERNEL_01, ASSOCIATED_RESET aresetn_kernel_01_slr0:aresetn_kernel_01_slr1, CLK_DOMAIN cd_aclk_kernel_01, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output aclk_kernel_01;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_PCIE CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_PCIE, ASSOCIATED_RESET aresetn_pcie:aresetn_pcie_slr0:aresetn_pcie_slr1, CLK_DOMAIN cd_pcie_00, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input aclk_pcie;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_CTRL, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL_SLR0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_CTRL_SLR0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_ctrl_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL_SLR1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_CTRL_SLR1, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_ctrl_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_HBM RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_HBM, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_hbm;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL_00_SLR0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_KERNEL_00_SLR0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_kernel_00_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL_00_SLR1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_KERNEL_00_SLR1, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_kernel_00_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL_01_SLR0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_KERNEL_01_SLR0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_kernel_01_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL_01_SLR1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_KERNEL_01_SLR1, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_kernel_01_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_PCIE RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_PCIE, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_pcie;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_PCIE_SLR0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_PCIE_SLR0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_pcie_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_PCIE_SLR1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_PCIE_SLR1, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_pcie_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_mgmt, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 1, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [24:0]s_axi_ctrl_mgmt_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARPROT" *) input [2:0]s_axi_ctrl_mgmt_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARREADY" *) output [0:0]s_axi_ctrl_mgmt_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARVALID" *) input [0:0]s_axi_ctrl_mgmt_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWADDR" *) input [24:0]s_axi_ctrl_mgmt_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWPROT" *) input [2:0]s_axi_ctrl_mgmt_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWREADY" *) output [0:0]s_axi_ctrl_mgmt_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWVALID" *) input [0:0]s_axi_ctrl_mgmt_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BREADY" *) input [0:0]s_axi_ctrl_mgmt_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BRESP" *) output [1:0]s_axi_ctrl_mgmt_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BVALID" *) output [0:0]s_axi_ctrl_mgmt_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RDATA" *) output [31:0]s_axi_ctrl_mgmt_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RREADY" *) input [0:0]s_axi_ctrl_mgmt_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RRESP" *) output [1:0]s_axi_ctrl_mgmt_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RVALID" *) output [0:0]s_axi_ctrl_mgmt_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WDATA" *) input [31:0]s_axi_ctrl_mgmt_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WREADY" *) output [0:0]s_axi_ctrl_mgmt_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WSTRB" *) input [3:0]s_axi_ctrl_mgmt_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WVALID" *) input [0:0]s_axi_ctrl_mgmt_wvalid;
  input shutdown_clocks;

  wire aclk_ctrl;
  wire aclk_freerun;
  wire aclk_hbm;
  wire aclk_hbm_refclk;
  wire aclk_kernel_00;
  wire aclk_kernel_00_cont_net;
  wire aclk_kernel_01;
  wire aclk_kernel_01_cont_net;
  wire aclk_pcie;
  wire aresetn_ctrl;
  wire [0:0]aresetn_ctrl_slr0;
  wire [0:0]aresetn_ctrl_slr1;
  wire [0:0]aresetn_hbm;
  wire [0:0]aresetn_kernel_00_slr0;
  wire [0:0]aresetn_kernel_00_slr1;
  wire [0:0]aresetn_kernel_01_slr0;
  wire [0:0]aresetn_kernel_01_slr1;
  wire aresetn_pcie;
  wire [0:0]aresetn_pcie_slr0;
  wire [0:0]aresetn_pcie_slr1;
  wire [10:0]axi_ic_ctrl_mgmt_top_M00_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_top_M00_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_top_M00_AXI_ARVALID;
  wire [10:0]axi_ic_ctrl_mgmt_top_M00_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_top_M00_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_top_M00_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_top_M00_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M00_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_top_M00_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M00_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_top_M00_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M00_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_top_M00_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M00_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_top_M00_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_top_M00_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_top_M00_AXI_WVALID;
  wire [10:0]axi_ic_ctrl_mgmt_top_M01_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_top_M01_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_top_M01_AXI_ARVALID;
  wire [10:0]axi_ic_ctrl_mgmt_top_M01_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_top_M01_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_top_M01_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_top_M01_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M01_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_top_M01_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M01_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_top_M01_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M01_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_top_M01_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M01_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_top_M01_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_top_M01_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_top_M01_AXI_WVALID;
  wire [4:0]axi_ic_ctrl_mgmt_top_M02_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_top_M02_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_top_M02_AXI_ARVALID;
  wire [4:0]axi_ic_ctrl_mgmt_top_M02_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_top_M02_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_top_M02_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_top_M02_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M02_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_top_M02_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M02_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_top_M02_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M02_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_top_M02_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M02_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_top_M02_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_top_M02_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_top_M02_AXI_WVALID;
  wire [8:0]axi_ic_ctrl_mgmt_top_M03_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_top_M03_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_top_M03_AXI_ARVALID;
  wire [8:0]axi_ic_ctrl_mgmt_top_M03_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_top_M03_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_top_M03_AXI_AWVALID;
  wire [1:0]axi_ic_ctrl_mgmt_top_M03_AXI_BRESP;
  wire [31:0]axi_ic_ctrl_mgmt_top_M03_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_top_M03_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M03_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_top_M03_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M03_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_top_M03_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_top_M03_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_top_M03_AXI_WVALID;
  wire [8:0]axi_ic_ctrl_mgmt_top_M04_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_top_M04_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_top_M04_AXI_ARVALID;
  wire [8:0]axi_ic_ctrl_mgmt_top_M04_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_top_M04_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_top_M04_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_top_M04_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M04_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_top_M04_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M04_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_top_M04_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M04_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_top_M04_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M04_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_top_M04_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_top_M04_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_top_M04_AXI_WVALID;
  wire [24:0]axi_ic_ctrl_mgmt_top_M05_AXI_ARADDR;
  wire [2:0]axi_ic_ctrl_mgmt_top_M05_AXI_ARPROT;
  wire axi_ic_ctrl_mgmt_top_M05_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_top_M05_AXI_ARVALID;
  wire [24:0]axi_ic_ctrl_mgmt_top_M05_AXI_AWADDR;
  wire [2:0]axi_ic_ctrl_mgmt_top_M05_AXI_AWPROT;
  wire axi_ic_ctrl_mgmt_top_M05_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_top_M05_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_top_M05_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M05_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_top_M05_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M05_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_top_M05_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M05_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_top_M05_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M05_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_top_M05_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_top_M05_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_top_M05_AXI_WVALID;
  wire [10:0]axi_ic_ctrl_mgmt_top_M06_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_top_M06_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_top_M06_AXI_ARVALID;
  wire [10:0]axi_ic_ctrl_mgmt_top_M06_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_top_M06_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_top_M06_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_top_M06_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M06_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_top_M06_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M06_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_top_M06_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_top_M06_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_top_M06_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_top_M06_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_top_M06_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_top_M06_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_top_M06_AXI_WVALID;
  wire [13:0]clock_throttling_average_net;
  wire gapping_demand_bready_net;
  wire gapping_demand_bvalid_net;
  wire [7:0]gapping_demand_net;
  wire gapping_demand_shutdown_request_ack_net;
  wire gapping_demand_throttling_enabled_net;
  wire gapping_demand_toggle_net;
  wire power_down_net;
  wire [24:0]s_axi_ctrl_mgmt_araddr;
  wire [2:0]s_axi_ctrl_mgmt_arprot;
  wire [0:0]s_axi_ctrl_mgmt_arready;
  wire [0:0]s_axi_ctrl_mgmt_arvalid;
  wire [24:0]s_axi_ctrl_mgmt_awaddr;
  wire [2:0]s_axi_ctrl_mgmt_awprot;
  wire [0:0]s_axi_ctrl_mgmt_awready;
  wire [0:0]s_axi_ctrl_mgmt_awvalid;
  wire [0:0]s_axi_ctrl_mgmt_bready;
  wire [1:0]s_axi_ctrl_mgmt_bresp;
  wire [0:0]s_axi_ctrl_mgmt_bvalid;
  wire [31:0]s_axi_ctrl_mgmt_rdata;
  wire [0:0]s_axi_ctrl_mgmt_rready;
  wire [1:0]s_axi_ctrl_mgmt_rresp;
  wire [0:0]s_axi_ctrl_mgmt_rvalid;
  wire [31:0]s_axi_ctrl_mgmt_wdata;
  wire [0:0]s_axi_ctrl_mgmt_wready;
  wire [3:0]s_axi_ctrl_mgmt_wstrb;
  wire [0:0]s_axi_ctrl_mgmt_wvalid;
  wire shutdown_clocks;
  wire shutdown_request_latched_net;
  wire startup_done_net;
  wire [24:11]NLW_axi_ic_ctrl_mgmt_top_M00_AXI_araddr_UNCONNECTED;
  wire [24:11]NLW_axi_ic_ctrl_mgmt_top_M00_AXI_awaddr_UNCONNECTED;
  wire [24:11]NLW_axi_ic_ctrl_mgmt_top_M01_AXI_araddr_UNCONNECTED;
  wire [24:11]NLW_axi_ic_ctrl_mgmt_top_M01_AXI_awaddr_UNCONNECTED;
  wire [24:5]NLW_axi_ic_ctrl_mgmt_top_M02_AXI_araddr_UNCONNECTED;
  wire [24:5]NLW_axi_ic_ctrl_mgmt_top_M02_AXI_awaddr_UNCONNECTED;
  wire [24:9]NLW_axi_ic_ctrl_mgmt_top_M03_AXI_araddr_UNCONNECTED;
  wire [24:9]NLW_axi_ic_ctrl_mgmt_top_M03_AXI_awaddr_UNCONNECTED;
  wire [24:9]NLW_axi_ic_ctrl_mgmt_top_M04_AXI_araddr_UNCONNECTED;
  wire [24:9]NLW_axi_ic_ctrl_mgmt_top_M04_AXI_awaddr_UNCONNECTED;
  wire [24:11]NLW_axi_ic_ctrl_mgmt_top_M06_AXI_araddr_UNCONNECTED;
  wire [24:11]NLW_axi_ic_ctrl_mgmt_top_M06_AXI_awaddr_UNCONNECTED;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aclk_hbm_hierarchy_imp_X70VO2 aclk_hbm_hierarchy
       (.S_AXI_araddr(axi_ic_ctrl_mgmt_top_M06_AXI_ARADDR),
        .S_AXI_arready(axi_ic_ctrl_mgmt_top_M06_AXI_ARREADY),
        .S_AXI_arvalid(axi_ic_ctrl_mgmt_top_M06_AXI_ARVALID),
        .S_AXI_awaddr(axi_ic_ctrl_mgmt_top_M06_AXI_AWADDR),
        .S_AXI_awready(axi_ic_ctrl_mgmt_top_M06_AXI_AWREADY),
        .S_AXI_awvalid(axi_ic_ctrl_mgmt_top_M06_AXI_AWVALID),
        .S_AXI_bready(axi_ic_ctrl_mgmt_top_M06_AXI_BREADY),
        .S_AXI_bresp(axi_ic_ctrl_mgmt_top_M06_AXI_BRESP),
        .S_AXI_bvalid(axi_ic_ctrl_mgmt_top_M06_AXI_BVALID),
        .S_AXI_rdata(axi_ic_ctrl_mgmt_top_M06_AXI_RDATA),
        .S_AXI_rready(axi_ic_ctrl_mgmt_top_M06_AXI_RREADY),
        .S_AXI_rresp(axi_ic_ctrl_mgmt_top_M06_AXI_RRESP),
        .S_AXI_rvalid(axi_ic_ctrl_mgmt_top_M06_AXI_RVALID),
        .S_AXI_wdata(axi_ic_ctrl_mgmt_top_M06_AXI_WDATA),
        .S_AXI_wready(axi_ic_ctrl_mgmt_top_M06_AXI_WREADY),
        .S_AXI_wstrb(axi_ic_ctrl_mgmt_top_M06_AXI_WSTRB),
        .S_AXI_wvalid(axi_ic_ctrl_mgmt_top_M06_AXI_WVALID),
        .aclk_ctrl(aclk_ctrl),
        .aclk_freerun(aclk_freerun),
        .aclk_hbm(aclk_hbm),
        .aresetn_ctrl(aresetn_ctrl),
        .aresetn_hbm(aresetn_hbm),
        .aresetn_pcie(aresetn_pcie),
        .clock_program_done(startup_done_net),
        .power_down(power_down_net));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aclk_kernel_00_hierarchy_imp_1J5BJ1M aclk_kernel_00_hierarchy
       (.S_AXI_araddr(axi_ic_ctrl_mgmt_top_M00_AXI_ARADDR),
        .S_AXI_arready(axi_ic_ctrl_mgmt_top_M00_AXI_ARREADY),
        .S_AXI_arvalid(axi_ic_ctrl_mgmt_top_M00_AXI_ARVALID),
        .S_AXI_awaddr(axi_ic_ctrl_mgmt_top_M00_AXI_AWADDR),
        .S_AXI_awready(axi_ic_ctrl_mgmt_top_M00_AXI_AWREADY),
        .S_AXI_awvalid(axi_ic_ctrl_mgmt_top_M00_AXI_AWVALID),
        .S_AXI_bready(axi_ic_ctrl_mgmt_top_M00_AXI_BREADY),
        .S_AXI_bresp(axi_ic_ctrl_mgmt_top_M00_AXI_BRESP),
        .S_AXI_bvalid(axi_ic_ctrl_mgmt_top_M00_AXI_BVALID),
        .S_AXI_rdata(axi_ic_ctrl_mgmt_top_M00_AXI_RDATA),
        .S_AXI_rready(axi_ic_ctrl_mgmt_top_M00_AXI_RREADY),
        .S_AXI_rresp(axi_ic_ctrl_mgmt_top_M00_AXI_RRESP),
        .S_AXI_rvalid(axi_ic_ctrl_mgmt_top_M00_AXI_RVALID),
        .S_AXI_wdata(axi_ic_ctrl_mgmt_top_M00_AXI_WDATA),
        .S_AXI_wready(axi_ic_ctrl_mgmt_top_M00_AXI_WREADY),
        .S_AXI_wstrb(axi_ic_ctrl_mgmt_top_M00_AXI_WSTRB),
        .S_AXI_wvalid(axi_ic_ctrl_mgmt_top_M00_AXI_WVALID),
        .aclk_ctrl(aclk_ctrl),
        .aclk_freerun(aclk_freerun),
        .aclk_kernel_00(aclk_kernel_00),
        .aclk_kernel_00_cont(aclk_kernel_00_cont_net),
        .aresetn_ctrl(aresetn_ctrl),
        .aresetn_kernel_00_slr0(aresetn_kernel_00_slr0),
        .aresetn_kernel_00_slr1(aresetn_kernel_00_slr1),
        .aresetn_pcie(aresetn_pcie),
        .clock_program_done(startup_done_net),
        .gapping_demand_toggle(gapping_demand_toggle_net),
        .power_down(power_down_net),
        .requested_gapping_demand_rate(gapping_demand_net),
        .shutdown_request_latch(shutdown_request_latched_net));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aclk_kernel_01_hierarchy_imp_BJA0NF aclk_kernel_01_hierarchy
       (.S_AXI_araddr(axi_ic_ctrl_mgmt_top_M01_AXI_ARADDR),
        .S_AXI_arready(axi_ic_ctrl_mgmt_top_M01_AXI_ARREADY),
        .S_AXI_arvalid(axi_ic_ctrl_mgmt_top_M01_AXI_ARVALID),
        .S_AXI_awaddr(axi_ic_ctrl_mgmt_top_M01_AXI_AWADDR),
        .S_AXI_awready(axi_ic_ctrl_mgmt_top_M01_AXI_AWREADY),
        .S_AXI_awvalid(axi_ic_ctrl_mgmt_top_M01_AXI_AWVALID),
        .S_AXI_bready(axi_ic_ctrl_mgmt_top_M01_AXI_BREADY),
        .S_AXI_bresp(axi_ic_ctrl_mgmt_top_M01_AXI_BRESP),
        .S_AXI_bvalid(axi_ic_ctrl_mgmt_top_M01_AXI_BVALID),
        .S_AXI_rdata(axi_ic_ctrl_mgmt_top_M01_AXI_RDATA),
        .S_AXI_rready(axi_ic_ctrl_mgmt_top_M01_AXI_RREADY),
        .S_AXI_rresp(axi_ic_ctrl_mgmt_top_M01_AXI_RRESP),
        .S_AXI_rvalid(axi_ic_ctrl_mgmt_top_M01_AXI_RVALID),
        .S_AXI_wdata(axi_ic_ctrl_mgmt_top_M01_AXI_WDATA),
        .S_AXI_wready(axi_ic_ctrl_mgmt_top_M01_AXI_WREADY),
        .S_AXI_wstrb(axi_ic_ctrl_mgmt_top_M01_AXI_WSTRB),
        .S_AXI_wvalid(axi_ic_ctrl_mgmt_top_M01_AXI_WVALID),
        .aclk_ctrl(aclk_ctrl),
        .aclk_freerun(aclk_freerun),
        .aclk_kernel_01(aclk_kernel_01),
        .aclk_kernel_01_cont(aclk_kernel_01_cont_net),
        .aresetn_ctrl(aresetn_ctrl),
        .aresetn_kernel_01_slr0(aresetn_kernel_01_slr0),
        .aresetn_kernel_01_slr1(aresetn_kernel_01_slr1),
        .aresetn_pcie(aresetn_pcie),
        .clock_program_done(startup_done_net),
        .gapping_demand_toggle(gapping_demand_toggle_net),
        .power_down(power_down_net),
        .requested_gapping_demand_rate(gapping_demand_net),
        .shutdown_request_latch(shutdown_request_latched_net));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_axi_ic_ctrl_mgmt_top_0 axi_ic_ctrl_mgmt_top
       (.ACLK(aclk_ctrl),
        .ARESETN(aresetn_ctrl),
        .M00_ACLK(1'b0),
        .M00_ARESETN(1'b0),
        .M00_AXI_araddr({NLW_axi_ic_ctrl_mgmt_top_M00_AXI_araddr_UNCONNECTED[24:11],axi_ic_ctrl_mgmt_top_M00_AXI_ARADDR}),
        .M00_AXI_arready(axi_ic_ctrl_mgmt_top_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_ic_ctrl_mgmt_top_M00_AXI_ARVALID),
        .M00_AXI_awaddr({NLW_axi_ic_ctrl_mgmt_top_M00_AXI_awaddr_UNCONNECTED[24:11],axi_ic_ctrl_mgmt_top_M00_AXI_AWADDR}),
        .M00_AXI_awready(axi_ic_ctrl_mgmt_top_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_ic_ctrl_mgmt_top_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_ic_ctrl_mgmt_top_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_ic_ctrl_mgmt_top_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_ic_ctrl_mgmt_top_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_ic_ctrl_mgmt_top_M00_AXI_RDATA),
        .M00_AXI_rready(axi_ic_ctrl_mgmt_top_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_ic_ctrl_mgmt_top_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_ic_ctrl_mgmt_top_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_ic_ctrl_mgmt_top_M00_AXI_WDATA),
        .M00_AXI_wready(axi_ic_ctrl_mgmt_top_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_ic_ctrl_mgmt_top_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_ic_ctrl_mgmt_top_M00_AXI_WVALID),
        .M01_ACLK(1'b0),
        .M01_ARESETN(1'b0),
        .M01_AXI_araddr({NLW_axi_ic_ctrl_mgmt_top_M01_AXI_araddr_UNCONNECTED[24:11],axi_ic_ctrl_mgmt_top_M01_AXI_ARADDR}),
        .M01_AXI_arready(axi_ic_ctrl_mgmt_top_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_ic_ctrl_mgmt_top_M01_AXI_ARVALID),
        .M01_AXI_awaddr({NLW_axi_ic_ctrl_mgmt_top_M01_AXI_awaddr_UNCONNECTED[24:11],axi_ic_ctrl_mgmt_top_M01_AXI_AWADDR}),
        .M01_AXI_awready(axi_ic_ctrl_mgmt_top_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_ic_ctrl_mgmt_top_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_ic_ctrl_mgmt_top_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_ic_ctrl_mgmt_top_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_ic_ctrl_mgmt_top_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_ic_ctrl_mgmt_top_M01_AXI_RDATA),
        .M01_AXI_rready(axi_ic_ctrl_mgmt_top_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_ic_ctrl_mgmt_top_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_ic_ctrl_mgmt_top_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_ic_ctrl_mgmt_top_M01_AXI_WDATA),
        .M01_AXI_wready(axi_ic_ctrl_mgmt_top_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_ic_ctrl_mgmt_top_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_ic_ctrl_mgmt_top_M01_AXI_WVALID),
        .M02_ACLK(1'b0),
        .M02_ARESETN(1'b0),
        .M02_AXI_araddr({NLW_axi_ic_ctrl_mgmt_top_M02_AXI_araddr_UNCONNECTED[24:5],axi_ic_ctrl_mgmt_top_M02_AXI_ARADDR}),
        .M02_AXI_arready(axi_ic_ctrl_mgmt_top_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_ic_ctrl_mgmt_top_M02_AXI_ARVALID),
        .M02_AXI_awaddr({NLW_axi_ic_ctrl_mgmt_top_M02_AXI_awaddr_UNCONNECTED[24:5],axi_ic_ctrl_mgmt_top_M02_AXI_AWADDR}),
        .M02_AXI_awready(axi_ic_ctrl_mgmt_top_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_ic_ctrl_mgmt_top_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_ic_ctrl_mgmt_top_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_ic_ctrl_mgmt_top_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_ic_ctrl_mgmt_top_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_ic_ctrl_mgmt_top_M02_AXI_RDATA),
        .M02_AXI_rready(axi_ic_ctrl_mgmt_top_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_ic_ctrl_mgmt_top_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_ic_ctrl_mgmt_top_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_ic_ctrl_mgmt_top_M02_AXI_WDATA),
        .M02_AXI_wready(axi_ic_ctrl_mgmt_top_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_ic_ctrl_mgmt_top_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_ic_ctrl_mgmt_top_M02_AXI_WVALID),
        .M03_ACLK(1'b0),
        .M03_ARESETN(1'b0),
        .M03_AXI_araddr({NLW_axi_ic_ctrl_mgmt_top_M03_AXI_araddr_UNCONNECTED[24:9],axi_ic_ctrl_mgmt_top_M03_AXI_ARADDR}),
        .M03_AXI_arready(axi_ic_ctrl_mgmt_top_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_ic_ctrl_mgmt_top_M03_AXI_ARVALID),
        .M03_AXI_awaddr({NLW_axi_ic_ctrl_mgmt_top_M03_AXI_awaddr_UNCONNECTED[24:9],axi_ic_ctrl_mgmt_top_M03_AXI_AWADDR}),
        .M03_AXI_awready(axi_ic_ctrl_mgmt_top_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_ic_ctrl_mgmt_top_M03_AXI_AWVALID),
        .M03_AXI_bready(gapping_demand_bready_net),
        .M03_AXI_bresp(axi_ic_ctrl_mgmt_top_M03_AXI_BRESP),
        .M03_AXI_bvalid(gapping_demand_bvalid_net),
        .M03_AXI_rdata(axi_ic_ctrl_mgmt_top_M03_AXI_RDATA),
        .M03_AXI_rready(axi_ic_ctrl_mgmt_top_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_ic_ctrl_mgmt_top_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_ic_ctrl_mgmt_top_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_ic_ctrl_mgmt_top_M03_AXI_WDATA),
        .M03_AXI_wready(axi_ic_ctrl_mgmt_top_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_ic_ctrl_mgmt_top_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_ic_ctrl_mgmt_top_M03_AXI_WVALID),
        .M04_ACLK(1'b0),
        .M04_ARESETN(1'b0),
        .M04_AXI_araddr({NLW_axi_ic_ctrl_mgmt_top_M04_AXI_araddr_UNCONNECTED[24:9],axi_ic_ctrl_mgmt_top_M04_AXI_ARADDR}),
        .M04_AXI_arready(axi_ic_ctrl_mgmt_top_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_ic_ctrl_mgmt_top_M04_AXI_ARVALID),
        .M04_AXI_awaddr({NLW_axi_ic_ctrl_mgmt_top_M04_AXI_awaddr_UNCONNECTED[24:9],axi_ic_ctrl_mgmt_top_M04_AXI_AWADDR}),
        .M04_AXI_awready(axi_ic_ctrl_mgmt_top_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_ic_ctrl_mgmt_top_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_ic_ctrl_mgmt_top_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_ic_ctrl_mgmt_top_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_ic_ctrl_mgmt_top_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_ic_ctrl_mgmt_top_M04_AXI_RDATA),
        .M04_AXI_rready(axi_ic_ctrl_mgmt_top_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_ic_ctrl_mgmt_top_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_ic_ctrl_mgmt_top_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_ic_ctrl_mgmt_top_M04_AXI_WDATA),
        .M04_AXI_wready(axi_ic_ctrl_mgmt_top_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_ic_ctrl_mgmt_top_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_ic_ctrl_mgmt_top_M04_AXI_WVALID),
        .M05_ACLK(1'b0),
        .M05_ARESETN(1'b0),
        .M05_AXI_araddr(axi_ic_ctrl_mgmt_top_M05_AXI_ARADDR),
        .M05_AXI_arprot(axi_ic_ctrl_mgmt_top_M05_AXI_ARPROT),
        .M05_AXI_arready(axi_ic_ctrl_mgmt_top_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_ic_ctrl_mgmt_top_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_ic_ctrl_mgmt_top_M05_AXI_AWADDR),
        .M05_AXI_awprot(axi_ic_ctrl_mgmt_top_M05_AXI_AWPROT),
        .M05_AXI_awready(axi_ic_ctrl_mgmt_top_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_ic_ctrl_mgmt_top_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_ic_ctrl_mgmt_top_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_ic_ctrl_mgmt_top_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_ic_ctrl_mgmt_top_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_ic_ctrl_mgmt_top_M05_AXI_RDATA),
        .M05_AXI_rready(axi_ic_ctrl_mgmt_top_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_ic_ctrl_mgmt_top_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_ic_ctrl_mgmt_top_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_ic_ctrl_mgmt_top_M05_AXI_WDATA),
        .M05_AXI_wready(axi_ic_ctrl_mgmt_top_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_ic_ctrl_mgmt_top_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_ic_ctrl_mgmt_top_M05_AXI_WVALID),
        .M06_ACLK(1'b0),
        .M06_ARESETN(1'b0),
        .M06_AXI_araddr({NLW_axi_ic_ctrl_mgmt_top_M06_AXI_araddr_UNCONNECTED[24:11],axi_ic_ctrl_mgmt_top_M06_AXI_ARADDR}),
        .M06_AXI_arready(axi_ic_ctrl_mgmt_top_M06_AXI_ARREADY),
        .M06_AXI_arvalid(axi_ic_ctrl_mgmt_top_M06_AXI_ARVALID),
        .M06_AXI_awaddr({NLW_axi_ic_ctrl_mgmt_top_M06_AXI_awaddr_UNCONNECTED[24:11],axi_ic_ctrl_mgmt_top_M06_AXI_AWADDR}),
        .M06_AXI_awready(axi_ic_ctrl_mgmt_top_M06_AXI_AWREADY),
        .M06_AXI_awvalid(axi_ic_ctrl_mgmt_top_M06_AXI_AWVALID),
        .M06_AXI_bready(axi_ic_ctrl_mgmt_top_M06_AXI_BREADY),
        .M06_AXI_bresp(axi_ic_ctrl_mgmt_top_M06_AXI_BRESP),
        .M06_AXI_bvalid(axi_ic_ctrl_mgmt_top_M06_AXI_BVALID),
        .M06_AXI_rdata(axi_ic_ctrl_mgmt_top_M06_AXI_RDATA),
        .M06_AXI_rready(axi_ic_ctrl_mgmt_top_M06_AXI_RREADY),
        .M06_AXI_rresp(axi_ic_ctrl_mgmt_top_M06_AXI_RRESP),
        .M06_AXI_rvalid(axi_ic_ctrl_mgmt_top_M06_AXI_RVALID),
        .M06_AXI_wdata(axi_ic_ctrl_mgmt_top_M06_AXI_WDATA),
        .M06_AXI_wready(axi_ic_ctrl_mgmt_top_M06_AXI_WREADY),
        .M06_AXI_wstrb(axi_ic_ctrl_mgmt_top_M06_AXI_WSTRB),
        .M06_AXI_wvalid(axi_ic_ctrl_mgmt_top_M06_AXI_WVALID),
        .S00_ACLK(1'b0),
        .S00_ARESETN(1'b0),
        .S00_AXI_araddr(s_axi_ctrl_mgmt_araddr),
        .S00_AXI_arprot(s_axi_ctrl_mgmt_arprot),
        .S00_AXI_arready(s_axi_ctrl_mgmt_arready),
        .S00_AXI_arvalid(s_axi_ctrl_mgmt_arvalid),
        .S00_AXI_awaddr(s_axi_ctrl_mgmt_awaddr),
        .S00_AXI_awprot(s_axi_ctrl_mgmt_awprot),
        .S00_AXI_awready(s_axi_ctrl_mgmt_awready),
        .S00_AXI_awvalid(s_axi_ctrl_mgmt_awvalid),
        .S00_AXI_bready(s_axi_ctrl_mgmt_bready),
        .S00_AXI_bresp(s_axi_ctrl_mgmt_bresp),
        .S00_AXI_bvalid(s_axi_ctrl_mgmt_bvalid),
        .S00_AXI_rdata(s_axi_ctrl_mgmt_rdata),
        .S00_AXI_rready(s_axi_ctrl_mgmt_rready),
        .S00_AXI_rresp(s_axi_ctrl_mgmt_rresp),
        .S00_AXI_rvalid(s_axi_ctrl_mgmt_rvalid),
        .S00_AXI_wdata(s_axi_ctrl_mgmt_wdata),
        .S00_AXI_wready(s_axi_ctrl_mgmt_wready),
        .S00_AXI_wstrb(s_axi_ctrl_mgmt_wstrb),
        .S00_AXI_wvalid(s_axi_ctrl_mgmt_wvalid));
  (* CHECK_LICENSE_TYPE = "bd_22c0_build_info_0,shell_utils_build_info_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "shell_utils_build_info_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_build_info_0 build_info
       (.S_AXI_ACLK(aclk_ctrl),
        .S_AXI_ARADDR(axi_ic_ctrl_mgmt_top_M02_AXI_ARADDR),
        .S_AXI_ARESETN(aresetn_ctrl),
        .S_AXI_ARREADY(axi_ic_ctrl_mgmt_top_M02_AXI_ARREADY),
        .S_AXI_ARVALID(axi_ic_ctrl_mgmt_top_M02_AXI_ARVALID),
        .S_AXI_AWADDR(axi_ic_ctrl_mgmt_top_M02_AXI_AWADDR),
        .S_AXI_AWREADY(axi_ic_ctrl_mgmt_top_M02_AXI_AWREADY),
        .S_AXI_AWVALID(axi_ic_ctrl_mgmt_top_M02_AXI_AWVALID),
        .S_AXI_BREADY(axi_ic_ctrl_mgmt_top_M02_AXI_BREADY),
        .S_AXI_BRESP(axi_ic_ctrl_mgmt_top_M02_AXI_BRESP),
        .S_AXI_BVALID(axi_ic_ctrl_mgmt_top_M02_AXI_BVALID),
        .S_AXI_RDATA(axi_ic_ctrl_mgmt_top_M02_AXI_RDATA),
        .S_AXI_RREADY(axi_ic_ctrl_mgmt_top_M02_AXI_RREADY),
        .S_AXI_RRESP(axi_ic_ctrl_mgmt_top_M02_AXI_RRESP),
        .S_AXI_RVALID(axi_ic_ctrl_mgmt_top_M02_AXI_RVALID),
        .S_AXI_WDATA(axi_ic_ctrl_mgmt_top_M02_AXI_WDATA),
        .S_AXI_WREADY(axi_ic_ctrl_mgmt_top_M02_AXI_WREADY),
        .S_AXI_WSTRB(axi_ic_ctrl_mgmt_top_M02_AXI_WSTRB),
        .S_AXI_WVALID(axi_ic_ctrl_mgmt_top_M02_AXI_WVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fanout_aresetn_ctrl_imp_1QSDUUK fanout_aresetn_ctrl
       (.aclk_ctrl(aclk_ctrl),
        .aresetn_ctrl(aresetn_ctrl),
        .aresetn_ctrl_slr0(aresetn_ctrl_slr0),
        .aresetn_ctrl_slr1(aresetn_ctrl_slr1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fanout_aresetn_pcie_imp_9FAOQ8 fanout_aresetn_pcie
       (.aclk_pcie(aclk_pcie),
        .aresetn_pcie(aresetn_pcie),
        .aresetn_pcie_slr0(aresetn_pcie_slr0),
        .aresetn_pcie_slr1(aresetn_pcie_slr1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_frequency_counters_imp_129ZTEO frequency_counters
       (.S_AXI_araddr(axi_ic_ctrl_mgmt_top_M05_AXI_ARADDR),
        .S_AXI_arprot(axi_ic_ctrl_mgmt_top_M05_AXI_ARPROT),
        .S_AXI_arready(axi_ic_ctrl_mgmt_top_M05_AXI_ARREADY),
        .S_AXI_arvalid(axi_ic_ctrl_mgmt_top_M05_AXI_ARVALID),
        .S_AXI_awaddr(axi_ic_ctrl_mgmt_top_M05_AXI_AWADDR),
        .S_AXI_awprot(axi_ic_ctrl_mgmt_top_M05_AXI_AWPROT),
        .S_AXI_awready(axi_ic_ctrl_mgmt_top_M05_AXI_AWREADY),
        .S_AXI_awvalid(axi_ic_ctrl_mgmt_top_M05_AXI_AWVALID),
        .S_AXI_bready(axi_ic_ctrl_mgmt_top_M05_AXI_BREADY),
        .S_AXI_bresp(axi_ic_ctrl_mgmt_top_M05_AXI_BRESP),
        .S_AXI_bvalid(axi_ic_ctrl_mgmt_top_M05_AXI_BVALID),
        .S_AXI_rdata(axi_ic_ctrl_mgmt_top_M05_AXI_RDATA),
        .S_AXI_rready(axi_ic_ctrl_mgmt_top_M05_AXI_RREADY),
        .S_AXI_rresp(axi_ic_ctrl_mgmt_top_M05_AXI_RRESP),
        .S_AXI_rvalid(axi_ic_ctrl_mgmt_top_M05_AXI_RVALID),
        .S_AXI_wdata(axi_ic_ctrl_mgmt_top_M05_AXI_WDATA),
        .S_AXI_wready(axi_ic_ctrl_mgmt_top_M05_AXI_WREADY),
        .S_AXI_wstrb(axi_ic_ctrl_mgmt_top_M05_AXI_WSTRB),
        .S_AXI_wvalid(axi_ic_ctrl_mgmt_top_M05_AXI_WVALID),
        .aclk_ctrl(aclk_ctrl),
        .aclk_freerun(aclk_freerun),
        .aclk_hbm(aclk_hbm),
        .aclk_hbm_refclk(aclk_hbm_refclk),
        .aclk_kernel_00(aclk_kernel_00),
        .aclk_kernel_00_cont(aclk_kernel_00_cont_net),
        .aclk_kernel_01(aclk_kernel_01),
        .aclk_kernel_01_cont(aclk_kernel_01_cont_net),
        .aclk_pcie(aclk_pcie),
        .aresetn_ctrl(aresetn_ctrl));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gapping_demand_imp_15CEGP6 gapping_demand
       (.S_AXI_araddr(axi_ic_ctrl_mgmt_top_M03_AXI_ARADDR),
        .S_AXI_arready(axi_ic_ctrl_mgmt_top_M03_AXI_ARREADY),
        .S_AXI_arvalid(axi_ic_ctrl_mgmt_top_M03_AXI_ARVALID),
        .S_AXI_awaddr(axi_ic_ctrl_mgmt_top_M03_AXI_AWADDR),
        .S_AXI_awready(axi_ic_ctrl_mgmt_top_M03_AXI_AWREADY),
        .S_AXI_awvalid(axi_ic_ctrl_mgmt_top_M03_AXI_AWVALID),
        .S_AXI_bresp(axi_ic_ctrl_mgmt_top_M03_AXI_BRESP),
        .S_AXI_rdata(axi_ic_ctrl_mgmt_top_M03_AXI_RDATA),
        .S_AXI_rready(axi_ic_ctrl_mgmt_top_M03_AXI_RREADY),
        .S_AXI_rresp(axi_ic_ctrl_mgmt_top_M03_AXI_RRESP),
        .S_AXI_rvalid(axi_ic_ctrl_mgmt_top_M03_AXI_RVALID),
        .S_AXI_wdata(axi_ic_ctrl_mgmt_top_M03_AXI_WDATA),
        .S_AXI_wready(axi_ic_ctrl_mgmt_top_M03_AXI_WREADY),
        .S_AXI_wstrb(axi_ic_ctrl_mgmt_top_M03_AXI_WSTRB),
        .S_AXI_wvalid(axi_ic_ctrl_mgmt_top_M03_AXI_WVALID),
        .aclk_ctrl(aclk_ctrl),
        .aresetn_ctrl(aresetn_ctrl),
        .clock_throttling_average(clock_throttling_average_net),
        .gapping_demand_toggle(gapping_demand_toggle_net),
        .requested_gapping_demand_rate(gapping_demand_net),
        .s_axi_bready(gapping_demand_bready_net),
        .s_axi_bvalid(gapping_demand_bvalid_net),
        .shutdown_request_ack(gapping_demand_shutdown_request_ack_net),
        .shutdown_request_latch(shutdown_request_latched_net),
        .throttling_enabled(gapping_demand_throttling_enabled_net));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ucs_control_status_imp_8E30KC ucs_control_status
       (.S_AXI_araddr(axi_ic_ctrl_mgmt_top_M04_AXI_ARADDR),
        .S_AXI_arready(axi_ic_ctrl_mgmt_top_M04_AXI_ARREADY),
        .S_AXI_arvalid(axi_ic_ctrl_mgmt_top_M04_AXI_ARVALID),
        .S_AXI_awaddr(axi_ic_ctrl_mgmt_top_M04_AXI_AWADDR),
        .S_AXI_awready(axi_ic_ctrl_mgmt_top_M04_AXI_AWREADY),
        .S_AXI_awvalid(axi_ic_ctrl_mgmt_top_M04_AXI_AWVALID),
        .S_AXI_bready(axi_ic_ctrl_mgmt_top_M04_AXI_BREADY),
        .S_AXI_bresp(axi_ic_ctrl_mgmt_top_M04_AXI_BRESP),
        .S_AXI_bvalid(axi_ic_ctrl_mgmt_top_M04_AXI_BVALID),
        .S_AXI_rdata(axi_ic_ctrl_mgmt_top_M04_AXI_RDATA),
        .S_AXI_rready(axi_ic_ctrl_mgmt_top_M04_AXI_RREADY),
        .S_AXI_rresp(axi_ic_ctrl_mgmt_top_M04_AXI_RRESP),
        .S_AXI_rvalid(axi_ic_ctrl_mgmt_top_M04_AXI_RVALID),
        .S_AXI_wdata(axi_ic_ctrl_mgmt_top_M04_AXI_WDATA),
        .S_AXI_wready(axi_ic_ctrl_mgmt_top_M04_AXI_WREADY),
        .S_AXI_wstrb(axi_ic_ctrl_mgmt_top_M04_AXI_WSTRB),
        .S_AXI_wvalid(axi_ic_ctrl_mgmt_top_M04_AXI_WVALID),
        .aclk_ctrl(aclk_ctrl),
        .aresetn_ctrl(aresetn_ctrl),
        .clock_program_done(startup_done_net),
        .clock_throttling_average(clock_throttling_average_net),
        .power_down(power_down_net),
        .shutdown_clocks(shutdown_clocks),
        .shutdown_request_ack(gapping_demand_shutdown_request_ack_net),
        .shutdown_request_latch(shutdown_request_latched_net),
        .throttling_enabled(gapping_demand_throttling_enabled_net));
endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_aclk_kernel_00_adapt_0,clk_metadata_adapter_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_aclk_kernel_00_adapt_0
   (clk_in,
    clk_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK_IN CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK_IN, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_aclk_kernel_00_0_clk_out1_buf, INSERT_VIP 0" *) input clk_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK_OUT CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK_OUT, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, INSERT_VIP 0" *) output clk_out;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_aclk_kernel_00_cont_adapt_0,clk_metadata_adapter_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_aclk_kernel_00_cont_adapt_0
   (clk_in,
    clk_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK_IN CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK_IN, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_aclk_kernel_00_0_clk_out1_buf, INSERT_VIP 0" *) input clk_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK_OUT CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK_OUT, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, INSERT_VIP 0" *) output clk_out;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_aclk_kernel_01_adapt_0,clk_metadata_adapter_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_aclk_kernel_01_adapt_0
   (clk_in,
    clk_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK_IN CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK_IN, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_aclk_kernel_01_0_clk_out1_buf, INSERT_VIP 0" *) input clk_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK_OUT CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK_OUT, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_01, INSERT_VIP 0" *) output clk_out;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_aclk_kernel_01_cont_adapt_0,clk_metadata_adapter_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_aclk_kernel_01_cont_adapt_0
   (clk_in,
    clk_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK_IN CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK_IN, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_aclk_kernel_01_0_clk_out1_buf, INSERT_VIP 0" *) input clk_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK_OUT CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK_OUT, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_01, INSERT_VIP 0" *) output clk_out;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_axi_ic_ctrl_mgmt_freq_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [24:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [24:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [24:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [24:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [24:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [24:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [24:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [24:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [24:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [24:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire ACLK;
  wire ARESETN;
  wire [24:0]M00_AXI_araddr;
  wire M00_AXI_arready;
  wire M00_AXI_arvalid;
  wire [24:0]M00_AXI_awaddr;
  wire M00_AXI_awready;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [31:0]M00_AXI_rdata;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [31:0]M00_AXI_wdata;
  wire M00_AXI_wready;
  wire [3:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire [24:0]M01_AXI_araddr;
  wire M01_AXI_arready;
  wire M01_AXI_arvalid;
  wire [24:0]M01_AXI_awaddr;
  wire M01_AXI_awready;
  wire M01_AXI_awvalid;
  wire M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire M01_AXI_bvalid;
  wire [31:0]M01_AXI_rdata;
  wire M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire M01_AXI_rvalid;
  wire [31:0]M01_AXI_wdata;
  wire M01_AXI_wready;
  wire [3:0]M01_AXI_wstrb;
  wire M01_AXI_wvalid;
  wire [24:0]M02_AXI_araddr;
  wire M02_AXI_arready;
  wire M02_AXI_arvalid;
  wire [24:0]M02_AXI_awaddr;
  wire M02_AXI_awready;
  wire M02_AXI_awvalid;
  wire M02_AXI_bready;
  wire [1:0]M02_AXI_bresp;
  wire M02_AXI_bvalid;
  wire [31:0]M02_AXI_rdata;
  wire M02_AXI_rready;
  wire [1:0]M02_AXI_rresp;
  wire M02_AXI_rvalid;
  wire [31:0]M02_AXI_wdata;
  wire M02_AXI_wready;
  wire [3:0]M02_AXI_wstrb;
  wire M02_AXI_wvalid;
  wire [24:0]M03_AXI_araddr;
  wire M03_AXI_arready;
  wire M03_AXI_arvalid;
  wire [24:0]M03_AXI_awaddr;
  wire M03_AXI_awready;
  wire M03_AXI_awvalid;
  wire M03_AXI_bready;
  wire [1:0]M03_AXI_bresp;
  wire M03_AXI_bvalid;
  wire [31:0]M03_AXI_rdata;
  wire M03_AXI_rready;
  wire [1:0]M03_AXI_rresp;
  wire M03_AXI_rvalid;
  wire [31:0]M03_AXI_wdata;
  wire M03_AXI_wready;
  wire [3:0]M03_AXI_wstrb;
  wire M03_AXI_wvalid;
  wire S00_ACLK;
  wire S00_ARESETN;
  wire [24:0]S00_AXI_araddr;
  wire [2:0]S00_AXI_arprot;
  wire [0:0]S00_AXI_arready;
  wire [0:0]S00_AXI_arvalid;
  wire [24:0]S00_AXI_awaddr;
  wire [2:0]S00_AXI_awprot;
  wire [0:0]S00_AXI_awready;
  wire [0:0]S00_AXI_awvalid;
  wire [0:0]S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire [0:0]S00_AXI_bvalid;
  wire [31:0]S00_AXI_rdata;
  wire [0:0]S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire [0:0]S00_AXI_rvalid;
  wire [31:0]S00_AXI_wdata;
  wire [0:0]S00_AXI_wready;
  wire [3:0]S00_AXI_wstrb;
  wire [0:0]S00_AXI_wvalid;
  wire [24:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [24:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [11:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [11:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s00_couplers_imp_WZP98J s00_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .S00_ACLK(S00_ACLK),
        .S00_ARESETN(S00_ARESETN),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wvalid(S00_AXI_wvalid),
        .m_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .m_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .m_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .m_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .m_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .m_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .m_axi_bready(s00_couplers_to_xbar_BREADY),
        .m_axi_rready(s00_couplers_to_xbar_RREADY),
        .m_axi_wdata(s00_couplers_to_xbar_WDATA),
        .m_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .m_axi_wvalid(s00_couplers_to_xbar_WVALID),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wready(s00_couplers_to_xbar_WREADY));
  (* CHECK_LICENSE_TYPE = "bd_22c0_axi_ic_ctrl_mgmt_freq_imp_xbar_0,axi_crossbar_v2_1_37_axi_crossbar,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "axi_crossbar_v2_1_37_axi_crossbar,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_axi_ic_ctrl_mgmt_freq_imp_xbar_0 xbar
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axi_araddr({M03_AXI_araddr,M02_AXI_araddr,M01_AXI_araddr,M00_AXI_araddr}),
        .m_axi_arprot(NLW_xbar_m_axi_arprot_UNCONNECTED[11:0]),
        .m_axi_arready({M03_AXI_arready,M02_AXI_arready,M01_AXI_arready,M00_AXI_arready}),
        .m_axi_arvalid({M03_AXI_arvalid,M02_AXI_arvalid,M01_AXI_arvalid,M00_AXI_arvalid}),
        .m_axi_awaddr({M03_AXI_awaddr,M02_AXI_awaddr,M01_AXI_awaddr,M00_AXI_awaddr}),
        .m_axi_awprot(NLW_xbar_m_axi_awprot_UNCONNECTED[11:0]),
        .m_axi_awready({M03_AXI_awready,M02_AXI_awready,M01_AXI_awready,M00_AXI_awready}),
        .m_axi_awvalid({M03_AXI_awvalid,M02_AXI_awvalid,M01_AXI_awvalid,M00_AXI_awvalid}),
        .m_axi_bready({M03_AXI_bready,M02_AXI_bready,M01_AXI_bready,M00_AXI_bready}),
        .m_axi_bresp({M03_AXI_bresp,M02_AXI_bresp,M01_AXI_bresp,M00_AXI_bresp}),
        .m_axi_bvalid({M03_AXI_bvalid,M02_AXI_bvalid,M01_AXI_bvalid,M00_AXI_bvalid}),
        .m_axi_rdata({M03_AXI_rdata,M02_AXI_rdata,M01_AXI_rdata,M00_AXI_rdata}),
        .m_axi_rready({M03_AXI_rready,M02_AXI_rready,M01_AXI_rready,M00_AXI_rready}),
        .m_axi_rresp({M03_AXI_rresp,M02_AXI_rresp,M01_AXI_rresp,M00_AXI_rresp}),
        .m_axi_rvalid({M03_AXI_rvalid,M02_AXI_rvalid,M01_AXI_rvalid,M00_AXI_rvalid}),
        .m_axi_wdata({M03_AXI_wdata,M02_AXI_wdata,M01_AXI_wdata,M00_AXI_wdata}),
        .m_axi_wready({M03_AXI_wready,M02_AXI_wready,M01_AXI_wready,M00_AXI_wready}),
        .m_axi_wstrb({M03_AXI_wstrb,M02_AXI_wstrb,M01_AXI_wstrb,M00_AXI_wstrb}),
        .m_axi_wvalid({M03_AXI_wvalid,M02_AXI_wvalid,M01_AXI_wvalid,M00_AXI_wvalid}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_axi_ic_ctrl_mgmt_freq_imp_auto_cc_0,axi_clock_converter_v2_1_34_axi_clock_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_clock_converter_v2_1_34_axi_clock_converter,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_axi_ic_ctrl_mgmt_freq_imp_auto_cc_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SI_CLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [24:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [24:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 MI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MI_CLK, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET m_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input m_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 MI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input m_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [24:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [24:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) output m_axi_rready;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_axi_ic_ctrl_mgmt_freq_imp_xbar_0,axi_crossbar_v2_1_37_axi_crossbar,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_crossbar_v2_1_37_axi_crossbar,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_axi_ic_ctrl_mgmt_freq_imp_xbar_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF M00_AXI:M01_AXI:M02_AXI:M03_AXI:M04_AXI:M05_AXI:M06_AXI:M07_AXI:M08_AXI:M09_AXI:M10_AXI:M11_AXI:M12_AXI:M13_AXI:M14_AXI:M15_AXI:S00_AXI:S01_AXI:S02_AXI:S03_AXI:S04_AXI:S05_AXI:S06_AXI:S07_AXI:S08_AXI:S09_AXI:S10_AXI:S11_AXI:S12_AXI:S13_AXI:S14_AXI:S15_AXI, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [24:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input [0:0]s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output [0:0]s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input [0:0]s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output [0:0]s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output [0:0]s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input [0:0]s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [24:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input [0:0]s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output [0:0]s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output [0:0]s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input [0:0]s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR [24:0] [24:0], xilinx.com:interface:aximm:1.0 M01_AXI AWADDR [24:0] [49:25], xilinx.com:interface:aximm:1.0 M02_AXI AWADDR [24:0] [74:50], xilinx.com:interface:aximm:1.0 M03_AXI AWADDR [24:0] [99:75]" *) (* X_INTERFACE_MODE = "master M03_AXI" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M03_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [99:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI AWPROT [2:0] [5:3], xilinx.com:interface:aximm:1.0 M02_AXI AWPROT [2:0] [8:6], xilinx.com:interface:aximm:1.0 M03_AXI AWPROT [2:0] [11:9]" *) output [11:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI AWVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 M03_AXI AWVALID [0:0] [3:3]" *) output [3:0]m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI AWREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 M03_AXI AWREADY [0:0] [3:3]" *) input [3:0]m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI WDATA [31:0] [63:32], xilinx.com:interface:aximm:1.0 M02_AXI WDATA [31:0] [95:64], xilinx.com:interface:aximm:1.0 M03_AXI WDATA [31:0] [127:96]" *) output [127:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI WSTRB [3:0] [7:4], xilinx.com:interface:aximm:1.0 M02_AXI WSTRB [3:0] [11:8], xilinx.com:interface:aximm:1.0 M03_AXI WSTRB [3:0] [15:12]" *) output [15:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI WVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 M03_AXI WVALID [0:0] [3:3]" *) output [3:0]m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI WREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 M03_AXI WREADY [0:0] [3:3]" *) input [3:0]m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI BRESP [1:0] [3:2], xilinx.com:interface:aximm:1.0 M02_AXI BRESP [1:0] [5:4], xilinx.com:interface:aximm:1.0 M03_AXI BRESP [1:0] [7:6]" *) input [7:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI BVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 M03_AXI BVALID [0:0] [3:3]" *) input [3:0]m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI BREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 M03_AXI BREADY [0:0] [3:3]" *) output [3:0]m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR [24:0] [24:0], xilinx.com:interface:aximm:1.0 M01_AXI ARADDR [24:0] [49:25], xilinx.com:interface:aximm:1.0 M02_AXI ARADDR [24:0] [74:50], xilinx.com:interface:aximm:1.0 M03_AXI ARADDR [24:0] [99:75]" *) output [99:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI ARPROT [2:0] [5:3], xilinx.com:interface:aximm:1.0 M02_AXI ARPROT [2:0] [8:6], xilinx.com:interface:aximm:1.0 M03_AXI ARPROT [2:0] [11:9]" *) output [11:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI ARVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 M03_AXI ARVALID [0:0] [3:3]" *) output [3:0]m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI ARREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 M03_AXI ARREADY [0:0] [3:3]" *) input [3:0]m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI RDATA [31:0] [63:32], xilinx.com:interface:aximm:1.0 M02_AXI RDATA [31:0] [95:64], xilinx.com:interface:aximm:1.0 M03_AXI RDATA [31:0] [127:96]" *) input [127:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI RRESP [1:0] [3:2], xilinx.com:interface:aximm:1.0 M02_AXI RRESP [1:0] [5:4], xilinx.com:interface:aximm:1.0 M03_AXI RRESP [1:0] [7:6]" *) input [7:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI RVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 M03_AXI RVALID [0:0] [3:3]" *) input [3:0]m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI RREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 M03_AXI RREADY [0:0] [3:3]" *) output [3:0]m_axi_rready;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_axi_ic_ctrl_mgmt_top_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [24:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [24:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [24:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [24:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [24:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [24:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [24:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [24:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [24:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [24:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [24:0]M05_AXI_araddr;
  output [2:0]M05_AXI_arprot;
  input [0:0]M05_AXI_arready;
  output [0:0]M05_AXI_arvalid;
  output [24:0]M05_AXI_awaddr;
  output [2:0]M05_AXI_awprot;
  input [0:0]M05_AXI_awready;
  output [0:0]M05_AXI_awvalid;
  output [0:0]M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input [0:0]M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output [0:0]M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input [0:0]M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input [0:0]M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output [0:0]M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [24:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [24:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [24:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [24:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire \<const0> ;
  wire ACLK;
  wire ARESETN;
  wire [10:0]\^M00_AXI_araddr ;
  wire M00_AXI_arready;
  wire M00_AXI_arvalid;
  wire [10:0]\^M00_AXI_awaddr ;
  wire M00_AXI_awready;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [31:0]M00_AXI_rdata;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [31:0]M00_AXI_wdata;
  wire M00_AXI_wready;
  wire [3:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire [10:0]\^M01_AXI_araddr ;
  wire M01_AXI_arready;
  wire M01_AXI_arvalid;
  wire [10:0]\^M01_AXI_awaddr ;
  wire M01_AXI_awready;
  wire M01_AXI_awvalid;
  wire M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire M01_AXI_bvalid;
  wire [31:0]M01_AXI_rdata;
  wire M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire M01_AXI_rvalid;
  wire [31:0]M01_AXI_wdata;
  wire M01_AXI_wready;
  wire [3:0]M01_AXI_wstrb;
  wire M01_AXI_wvalid;
  wire [4:0]\^M02_AXI_araddr ;
  wire M02_AXI_arready;
  wire M02_AXI_arvalid;
  wire [4:0]\^M02_AXI_awaddr ;
  wire M02_AXI_awready;
  wire M02_AXI_awvalid;
  wire M02_AXI_bready;
  wire [1:0]M02_AXI_bresp;
  wire M02_AXI_bvalid;
  wire [31:0]M02_AXI_rdata;
  wire M02_AXI_rready;
  wire [1:0]M02_AXI_rresp;
  wire M02_AXI_rvalid;
  wire [31:0]M02_AXI_wdata;
  wire M02_AXI_wready;
  wire [3:0]M02_AXI_wstrb;
  wire M02_AXI_wvalid;
  wire [8:0]\^M03_AXI_araddr ;
  wire M03_AXI_arready;
  wire M03_AXI_arvalid;
  wire [8:0]\^M03_AXI_awaddr ;
  wire M03_AXI_awready;
  wire M03_AXI_awvalid;
  wire M03_AXI_bready;
  wire [1:0]M03_AXI_bresp;
  wire M03_AXI_bvalid;
  wire [31:0]M03_AXI_rdata;
  wire M03_AXI_rready;
  wire [1:0]M03_AXI_rresp;
  wire M03_AXI_rvalid;
  wire [31:0]M03_AXI_wdata;
  wire M03_AXI_wready;
  wire [3:0]M03_AXI_wstrb;
  wire M03_AXI_wvalid;
  wire [8:0]\^M04_AXI_araddr ;
  wire M04_AXI_arready;
  wire M04_AXI_arvalid;
  wire [8:0]\^M04_AXI_awaddr ;
  wire M04_AXI_awready;
  wire M04_AXI_awvalid;
  wire M04_AXI_bready;
  wire [1:0]M04_AXI_bresp;
  wire M04_AXI_bvalid;
  wire [31:0]M04_AXI_rdata;
  wire M04_AXI_rready;
  wire [1:0]M04_AXI_rresp;
  wire M04_AXI_rvalid;
  wire [31:0]M04_AXI_wdata;
  wire M04_AXI_wready;
  wire [3:0]M04_AXI_wstrb;
  wire M04_AXI_wvalid;
  wire [24:0]M05_AXI_araddr;
  wire [2:0]M05_AXI_arprot;
  wire [0:0]M05_AXI_arready;
  wire [0:0]M05_AXI_arvalid;
  wire [24:0]M05_AXI_awaddr;
  wire [2:0]M05_AXI_awprot;
  wire [0:0]M05_AXI_awready;
  wire [0:0]M05_AXI_awvalid;
  wire [0:0]M05_AXI_bready;
  wire [1:0]M05_AXI_bresp;
  wire [0:0]M05_AXI_bvalid;
  wire [31:0]M05_AXI_rdata;
  wire [0:0]M05_AXI_rready;
  wire [1:0]M05_AXI_rresp;
  wire [0:0]M05_AXI_rvalid;
  wire [31:0]M05_AXI_wdata;
  wire [0:0]M05_AXI_wready;
  wire [3:0]M05_AXI_wstrb;
  wire [0:0]M05_AXI_wvalid;
  wire [10:0]\^M06_AXI_araddr ;
  wire M06_AXI_arready;
  wire M06_AXI_arvalid;
  wire [10:0]\^M06_AXI_awaddr ;
  wire M06_AXI_awready;
  wire M06_AXI_awvalid;
  wire M06_AXI_bready;
  wire [1:0]M06_AXI_bresp;
  wire M06_AXI_bvalid;
  wire [31:0]M06_AXI_rdata;
  wire M06_AXI_rready;
  wire [1:0]M06_AXI_rresp;
  wire M06_AXI_rvalid;
  wire [31:0]M06_AXI_wdata;
  wire M06_AXI_wready;
  wire [3:0]M06_AXI_wstrb;
  wire M06_AXI_wvalid;
  wire [24:0]S00_AXI_araddr;
  wire [2:0]S00_AXI_arprot;
  wire [0:0]S00_AXI_arready;
  wire [0:0]S00_AXI_arvalid;
  wire [24:0]S00_AXI_awaddr;
  wire [2:0]S00_AXI_awprot;
  wire [0:0]S00_AXI_awready;
  wire [0:0]S00_AXI_awvalid;
  wire [0:0]S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire [0:0]S00_AXI_bvalid;
  wire [31:0]S00_AXI_rdata;
  wire [0:0]S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire [0:0]S00_AXI_rvalid;
  wire [31:0]S00_AXI_wdata;
  wire [0:0]S00_AXI_wready;
  wire [3:0]S00_AXI_wstrb;
  wire [0:0]S00_AXI_wvalid;
  wire xbar_n_100;
  wire xbar_n_101;
  wire xbar_n_102;
  wire xbar_n_103;
  wire xbar_n_104;
  wire xbar_n_105;
  wire xbar_n_106;
  wire xbar_n_116;
  wire xbar_n_117;
  wire xbar_n_118;
  wire xbar_n_119;
  wire xbar_n_120;
  wire xbar_n_121;
  wire xbar_n_122;
  wire xbar_n_123;
  wire xbar_n_124;
  wire xbar_n_125;
  wire xbar_n_126;
  wire xbar_n_127;
  wire xbar_n_128;
  wire xbar_n_129;
  wire xbar_n_130;
  wire xbar_n_131;
  wire xbar_n_141;
  wire xbar_n_142;
  wire xbar_n_143;
  wire xbar_n_144;
  wire xbar_n_145;
  wire xbar_n_146;
  wire xbar_n_147;
  wire xbar_n_148;
  wire xbar_n_149;
  wire xbar_n_150;
  wire xbar_n_151;
  wire xbar_n_152;
  wire xbar_n_153;
  wire xbar_n_154;
  wire xbar_n_155;
  wire xbar_n_156;
  wire xbar_n_157;
  wire xbar_n_158;
  wire xbar_n_159;
  wire xbar_n_160;
  wire xbar_n_166;
  wire xbar_n_167;
  wire xbar_n_168;
  wire xbar_n_169;
  wire xbar_n_170;
  wire xbar_n_171;
  wire xbar_n_172;
  wire xbar_n_173;
  wire xbar_n_174;
  wire xbar_n_175;
  wire xbar_n_176;
  wire xbar_n_177;
  wire xbar_n_178;
  wire xbar_n_179;
  wire xbar_n_191;
  wire xbar_n_192;
  wire xbar_n_193;
  wire xbar_n_194;
  wire xbar_n_195;
  wire xbar_n_196;
  wire xbar_n_197;
  wire xbar_n_198;
  wire xbar_n_199;
  wire xbar_n_200;
  wire xbar_n_201;
  wire xbar_n_202;
  wire xbar_n_203;
  wire xbar_n_204;
  wire xbar_n_41;
  wire xbar_n_42;
  wire xbar_n_43;
  wire xbar_n_44;
  wire xbar_n_45;
  wire xbar_n_46;
  wire xbar_n_47;
  wire xbar_n_48;
  wire xbar_n_49;
  wire xbar_n_50;
  wire xbar_n_51;
  wire xbar_n_510;
  wire xbar_n_511;
  wire xbar_n_512;
  wire xbar_n_513;
  wire xbar_n_514;
  wire xbar_n_515;
  wire xbar_n_516;
  wire xbar_n_517;
  wire xbar_n_518;
  wire xbar_n_519;
  wire xbar_n_52;
  wire xbar_n_520;
  wire xbar_n_521;
  wire xbar_n_522;
  wire xbar_n_523;
  wire xbar_n_53;
  wire xbar_n_54;
  wire xbar_n_560;
  wire xbar_n_561;
  wire xbar_n_562;
  wire xbar_n_563;
  wire xbar_n_564;
  wire xbar_n_565;
  wire xbar_n_566;
  wire xbar_n_567;
  wire xbar_n_568;
  wire xbar_n_569;
  wire xbar_n_570;
  wire xbar_n_571;
  wire xbar_n_572;
  wire xbar_n_573;
  wire xbar_n_574;
  wire xbar_n_575;
  wire xbar_n_585;
  wire xbar_n_586;
  wire xbar_n_587;
  wire xbar_n_588;
  wire xbar_n_589;
  wire xbar_n_590;
  wire xbar_n_591;
  wire xbar_n_592;
  wire xbar_n_593;
  wire xbar_n_594;
  wire xbar_n_595;
  wire xbar_n_596;
  wire xbar_n_597;
  wire xbar_n_598;
  wire xbar_n_599;
  wire xbar_n_600;
  wire xbar_n_610;
  wire xbar_n_611;
  wire xbar_n_612;
  wire xbar_n_613;
  wire xbar_n_614;
  wire xbar_n_615;
  wire xbar_n_616;
  wire xbar_n_617;
  wire xbar_n_618;
  wire xbar_n_619;
  wire xbar_n_620;
  wire xbar_n_621;
  wire xbar_n_622;
  wire xbar_n_623;
  wire xbar_n_624;
  wire xbar_n_625;
  wire xbar_n_626;
  wire xbar_n_627;
  wire xbar_n_628;
  wire xbar_n_629;
  wire xbar_n_635;
  wire xbar_n_636;
  wire xbar_n_637;
  wire xbar_n_638;
  wire xbar_n_639;
  wire xbar_n_640;
  wire xbar_n_641;
  wire xbar_n_642;
  wire xbar_n_643;
  wire xbar_n_644;
  wire xbar_n_645;
  wire xbar_n_646;
  wire xbar_n_647;
  wire xbar_n_648;
  wire xbar_n_660;
  wire xbar_n_661;
  wire xbar_n_662;
  wire xbar_n_663;
  wire xbar_n_664;
  wire xbar_n_665;
  wire xbar_n_666;
  wire xbar_n_667;
  wire xbar_n_668;
  wire xbar_n_669;
  wire xbar_n_670;
  wire xbar_n_671;
  wire xbar_n_672;
  wire xbar_n_673;
  wire xbar_n_91;
  wire xbar_n_92;
  wire xbar_n_93;
  wire xbar_n_94;
  wire xbar_n_95;
  wire xbar_n_96;
  wire xbar_n_97;
  wire xbar_n_98;
  wire xbar_n_99;
  wire [20:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [20:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_AXI_araddr[24] = \<const0> ;
  assign M00_AXI_araddr[23] = \<const0> ;
  assign M00_AXI_araddr[22] = \<const0> ;
  assign M00_AXI_araddr[21] = \<const0> ;
  assign M00_AXI_araddr[20] = \<const0> ;
  assign M00_AXI_araddr[19] = \<const0> ;
  assign M00_AXI_araddr[18] = \<const0> ;
  assign M00_AXI_araddr[17] = \<const0> ;
  assign M00_AXI_araddr[16] = \<const0> ;
  assign M00_AXI_araddr[15] = \<const0> ;
  assign M00_AXI_araddr[14] = \<const0> ;
  assign M00_AXI_araddr[13] = \<const0> ;
  assign M00_AXI_araddr[12] = \<const0> ;
  assign M00_AXI_araddr[11] = \<const0> ;
  assign M00_AXI_araddr[10:0] = \^M00_AXI_araddr [10:0];
  assign M00_AXI_awaddr[24] = \<const0> ;
  assign M00_AXI_awaddr[23] = \<const0> ;
  assign M00_AXI_awaddr[22] = \<const0> ;
  assign M00_AXI_awaddr[21] = \<const0> ;
  assign M00_AXI_awaddr[20] = \<const0> ;
  assign M00_AXI_awaddr[19] = \<const0> ;
  assign M00_AXI_awaddr[18] = \<const0> ;
  assign M00_AXI_awaddr[17] = \<const0> ;
  assign M00_AXI_awaddr[16] = \<const0> ;
  assign M00_AXI_awaddr[15] = \<const0> ;
  assign M00_AXI_awaddr[14] = \<const0> ;
  assign M00_AXI_awaddr[13] = \<const0> ;
  assign M00_AXI_awaddr[12] = \<const0> ;
  assign M00_AXI_awaddr[11] = \<const0> ;
  assign M00_AXI_awaddr[10:0] = \^M00_AXI_awaddr [10:0];
  assign M01_AXI_araddr[24] = \<const0> ;
  assign M01_AXI_araddr[23] = \<const0> ;
  assign M01_AXI_araddr[22] = \<const0> ;
  assign M01_AXI_araddr[21] = \<const0> ;
  assign M01_AXI_araddr[20] = \<const0> ;
  assign M01_AXI_araddr[19] = \<const0> ;
  assign M01_AXI_araddr[18] = \<const0> ;
  assign M01_AXI_araddr[17] = \<const0> ;
  assign M01_AXI_araddr[16] = \<const0> ;
  assign M01_AXI_araddr[15] = \<const0> ;
  assign M01_AXI_araddr[14] = \<const0> ;
  assign M01_AXI_araddr[13] = \<const0> ;
  assign M01_AXI_araddr[12] = \<const0> ;
  assign M01_AXI_araddr[11] = \<const0> ;
  assign M01_AXI_araddr[10:0] = \^M01_AXI_araddr [10:0];
  assign M01_AXI_awaddr[24] = \<const0> ;
  assign M01_AXI_awaddr[23] = \<const0> ;
  assign M01_AXI_awaddr[22] = \<const0> ;
  assign M01_AXI_awaddr[21] = \<const0> ;
  assign M01_AXI_awaddr[20] = \<const0> ;
  assign M01_AXI_awaddr[19] = \<const0> ;
  assign M01_AXI_awaddr[18] = \<const0> ;
  assign M01_AXI_awaddr[17] = \<const0> ;
  assign M01_AXI_awaddr[16] = \<const0> ;
  assign M01_AXI_awaddr[15] = \<const0> ;
  assign M01_AXI_awaddr[14] = \<const0> ;
  assign M01_AXI_awaddr[13] = \<const0> ;
  assign M01_AXI_awaddr[12] = \<const0> ;
  assign M01_AXI_awaddr[11] = \<const0> ;
  assign M01_AXI_awaddr[10:0] = \^M01_AXI_awaddr [10:0];
  assign M02_AXI_araddr[24] = \<const0> ;
  assign M02_AXI_araddr[23] = \<const0> ;
  assign M02_AXI_araddr[22] = \<const0> ;
  assign M02_AXI_araddr[21] = \<const0> ;
  assign M02_AXI_araddr[20] = \<const0> ;
  assign M02_AXI_araddr[19] = \<const0> ;
  assign M02_AXI_araddr[18] = \<const0> ;
  assign M02_AXI_araddr[17] = \<const0> ;
  assign M02_AXI_araddr[16] = \<const0> ;
  assign M02_AXI_araddr[15] = \<const0> ;
  assign M02_AXI_araddr[14] = \<const0> ;
  assign M02_AXI_araddr[13] = \<const0> ;
  assign M02_AXI_araddr[12] = \<const0> ;
  assign M02_AXI_araddr[11] = \<const0> ;
  assign M02_AXI_araddr[10] = \<const0> ;
  assign M02_AXI_araddr[9] = \<const0> ;
  assign M02_AXI_araddr[8] = \<const0> ;
  assign M02_AXI_araddr[7] = \<const0> ;
  assign M02_AXI_araddr[6] = \<const0> ;
  assign M02_AXI_araddr[5] = \<const0> ;
  assign M02_AXI_araddr[4:0] = \^M02_AXI_araddr [4:0];
  assign M02_AXI_awaddr[24] = \<const0> ;
  assign M02_AXI_awaddr[23] = \<const0> ;
  assign M02_AXI_awaddr[22] = \<const0> ;
  assign M02_AXI_awaddr[21] = \<const0> ;
  assign M02_AXI_awaddr[20] = \<const0> ;
  assign M02_AXI_awaddr[19] = \<const0> ;
  assign M02_AXI_awaddr[18] = \<const0> ;
  assign M02_AXI_awaddr[17] = \<const0> ;
  assign M02_AXI_awaddr[16] = \<const0> ;
  assign M02_AXI_awaddr[15] = \<const0> ;
  assign M02_AXI_awaddr[14] = \<const0> ;
  assign M02_AXI_awaddr[13] = \<const0> ;
  assign M02_AXI_awaddr[12] = \<const0> ;
  assign M02_AXI_awaddr[11] = \<const0> ;
  assign M02_AXI_awaddr[10] = \<const0> ;
  assign M02_AXI_awaddr[9] = \<const0> ;
  assign M02_AXI_awaddr[8] = \<const0> ;
  assign M02_AXI_awaddr[7] = \<const0> ;
  assign M02_AXI_awaddr[6] = \<const0> ;
  assign M02_AXI_awaddr[5] = \<const0> ;
  assign M02_AXI_awaddr[4:0] = \^M02_AXI_awaddr [4:0];
  assign M03_AXI_araddr[24] = \<const0> ;
  assign M03_AXI_araddr[23] = \<const0> ;
  assign M03_AXI_araddr[22] = \<const0> ;
  assign M03_AXI_araddr[21] = \<const0> ;
  assign M03_AXI_araddr[20] = \<const0> ;
  assign M03_AXI_araddr[19] = \<const0> ;
  assign M03_AXI_araddr[18] = \<const0> ;
  assign M03_AXI_araddr[17] = \<const0> ;
  assign M03_AXI_araddr[16] = \<const0> ;
  assign M03_AXI_araddr[15] = \<const0> ;
  assign M03_AXI_araddr[14] = \<const0> ;
  assign M03_AXI_araddr[13] = \<const0> ;
  assign M03_AXI_araddr[12] = \<const0> ;
  assign M03_AXI_araddr[11] = \<const0> ;
  assign M03_AXI_araddr[10] = \<const0> ;
  assign M03_AXI_araddr[9] = \<const0> ;
  assign M03_AXI_araddr[8:0] = \^M03_AXI_araddr [8:0];
  assign M03_AXI_awaddr[24] = \<const0> ;
  assign M03_AXI_awaddr[23] = \<const0> ;
  assign M03_AXI_awaddr[22] = \<const0> ;
  assign M03_AXI_awaddr[21] = \<const0> ;
  assign M03_AXI_awaddr[20] = \<const0> ;
  assign M03_AXI_awaddr[19] = \<const0> ;
  assign M03_AXI_awaddr[18] = \<const0> ;
  assign M03_AXI_awaddr[17] = \<const0> ;
  assign M03_AXI_awaddr[16] = \<const0> ;
  assign M03_AXI_awaddr[15] = \<const0> ;
  assign M03_AXI_awaddr[14] = \<const0> ;
  assign M03_AXI_awaddr[13] = \<const0> ;
  assign M03_AXI_awaddr[12] = \<const0> ;
  assign M03_AXI_awaddr[11] = \<const0> ;
  assign M03_AXI_awaddr[10] = \<const0> ;
  assign M03_AXI_awaddr[9] = \<const0> ;
  assign M03_AXI_awaddr[8:0] = \^M03_AXI_awaddr [8:0];
  assign M04_AXI_araddr[24] = \<const0> ;
  assign M04_AXI_araddr[23] = \<const0> ;
  assign M04_AXI_araddr[22] = \<const0> ;
  assign M04_AXI_araddr[21] = \<const0> ;
  assign M04_AXI_araddr[20] = \<const0> ;
  assign M04_AXI_araddr[19] = \<const0> ;
  assign M04_AXI_araddr[18] = \<const0> ;
  assign M04_AXI_araddr[17] = \<const0> ;
  assign M04_AXI_araddr[16] = \<const0> ;
  assign M04_AXI_araddr[15] = \<const0> ;
  assign M04_AXI_araddr[14] = \<const0> ;
  assign M04_AXI_araddr[13] = \<const0> ;
  assign M04_AXI_araddr[12] = \<const0> ;
  assign M04_AXI_araddr[11] = \<const0> ;
  assign M04_AXI_araddr[10] = \<const0> ;
  assign M04_AXI_araddr[9] = \<const0> ;
  assign M04_AXI_araddr[8:0] = \^M04_AXI_araddr [8:0];
  assign M04_AXI_awaddr[24] = \<const0> ;
  assign M04_AXI_awaddr[23] = \<const0> ;
  assign M04_AXI_awaddr[22] = \<const0> ;
  assign M04_AXI_awaddr[21] = \<const0> ;
  assign M04_AXI_awaddr[20] = \<const0> ;
  assign M04_AXI_awaddr[19] = \<const0> ;
  assign M04_AXI_awaddr[18] = \<const0> ;
  assign M04_AXI_awaddr[17] = \<const0> ;
  assign M04_AXI_awaddr[16] = \<const0> ;
  assign M04_AXI_awaddr[15] = \<const0> ;
  assign M04_AXI_awaddr[14] = \<const0> ;
  assign M04_AXI_awaddr[13] = \<const0> ;
  assign M04_AXI_awaddr[12] = \<const0> ;
  assign M04_AXI_awaddr[11] = \<const0> ;
  assign M04_AXI_awaddr[10] = \<const0> ;
  assign M04_AXI_awaddr[9] = \<const0> ;
  assign M04_AXI_awaddr[8:0] = \^M04_AXI_awaddr [8:0];
  assign M06_AXI_araddr[24] = \<const0> ;
  assign M06_AXI_araddr[23] = \<const0> ;
  assign M06_AXI_araddr[22] = \<const0> ;
  assign M06_AXI_araddr[21] = \<const0> ;
  assign M06_AXI_araddr[20] = \<const0> ;
  assign M06_AXI_araddr[19] = \<const0> ;
  assign M06_AXI_araddr[18] = \<const0> ;
  assign M06_AXI_araddr[17] = \<const0> ;
  assign M06_AXI_araddr[16] = \<const0> ;
  assign M06_AXI_araddr[15] = \<const0> ;
  assign M06_AXI_araddr[14] = \<const0> ;
  assign M06_AXI_araddr[13] = \<const0> ;
  assign M06_AXI_araddr[12] = \<const0> ;
  assign M06_AXI_araddr[11] = \<const0> ;
  assign M06_AXI_araddr[10:0] = \^M06_AXI_araddr [10:0];
  assign M06_AXI_awaddr[24] = \<const0> ;
  assign M06_AXI_awaddr[23] = \<const0> ;
  assign M06_AXI_awaddr[22] = \<const0> ;
  assign M06_AXI_awaddr[21] = \<const0> ;
  assign M06_AXI_awaddr[20] = \<const0> ;
  assign M06_AXI_awaddr[19] = \<const0> ;
  assign M06_AXI_awaddr[18] = \<const0> ;
  assign M06_AXI_awaddr[17] = \<const0> ;
  assign M06_AXI_awaddr[16] = \<const0> ;
  assign M06_AXI_awaddr[15] = \<const0> ;
  assign M06_AXI_awaddr[14] = \<const0> ;
  assign M06_AXI_awaddr[13] = \<const0> ;
  assign M06_AXI_awaddr[12] = \<const0> ;
  assign M06_AXI_awaddr[11] = \<const0> ;
  assign M06_AXI_awaddr[10:0] = \^M06_AXI_awaddr [10:0];
  GND GND
       (.G(\<const0> ));
  (* CHECK_LICENSE_TYPE = "bd_22c0_axi_ic_ctrl_mgmt_top_imp_xbar_0,axi_crossbar_v2_1_37_axi_crossbar,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "axi_crossbar_v2_1_37_axi_crossbar,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_axi_ic_ctrl_mgmt_top_imp_xbar_0 xbar
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axi_araddr({xbar_n_510,xbar_n_511,xbar_n_512,xbar_n_513,xbar_n_514,xbar_n_515,xbar_n_516,xbar_n_517,xbar_n_518,xbar_n_519,xbar_n_520,xbar_n_521,xbar_n_522,xbar_n_523,\^M06_AXI_araddr ,M05_AXI_araddr,xbar_n_560,xbar_n_561,xbar_n_562,xbar_n_563,xbar_n_564,xbar_n_565,xbar_n_566,xbar_n_567,xbar_n_568,xbar_n_569,xbar_n_570,xbar_n_571,xbar_n_572,xbar_n_573,xbar_n_574,xbar_n_575,\^M04_AXI_araddr ,xbar_n_585,xbar_n_586,xbar_n_587,xbar_n_588,xbar_n_589,xbar_n_590,xbar_n_591,xbar_n_592,xbar_n_593,xbar_n_594,xbar_n_595,xbar_n_596,xbar_n_597,xbar_n_598,xbar_n_599,xbar_n_600,\^M03_AXI_araddr ,xbar_n_610,xbar_n_611,xbar_n_612,xbar_n_613,xbar_n_614,xbar_n_615,xbar_n_616,xbar_n_617,xbar_n_618,xbar_n_619,xbar_n_620,xbar_n_621,xbar_n_622,xbar_n_623,xbar_n_624,xbar_n_625,xbar_n_626,xbar_n_627,xbar_n_628,xbar_n_629,\^M02_AXI_araddr ,xbar_n_635,xbar_n_636,xbar_n_637,xbar_n_638,xbar_n_639,xbar_n_640,xbar_n_641,xbar_n_642,xbar_n_643,xbar_n_644,xbar_n_645,xbar_n_646,xbar_n_647,xbar_n_648,\^M01_AXI_araddr ,xbar_n_660,xbar_n_661,xbar_n_662,xbar_n_663,xbar_n_664,xbar_n_665,xbar_n_666,xbar_n_667,xbar_n_668,xbar_n_669,xbar_n_670,xbar_n_671,xbar_n_672,xbar_n_673,\^M00_AXI_araddr }),
        .m_axi_arprot({NLW_xbar_m_axi_arprot_UNCONNECTED[20:18],M05_AXI_arprot,NLW_xbar_m_axi_arprot_UNCONNECTED[14:0]}),
        .m_axi_arready({M06_AXI_arready,M05_AXI_arready,M04_AXI_arready,M03_AXI_arready,M02_AXI_arready,M01_AXI_arready,M00_AXI_arready}),
        .m_axi_arvalid({M06_AXI_arvalid,M05_AXI_arvalid,M04_AXI_arvalid,M03_AXI_arvalid,M02_AXI_arvalid,M01_AXI_arvalid,M00_AXI_arvalid}),
        .m_axi_awaddr({xbar_n_41,xbar_n_42,xbar_n_43,xbar_n_44,xbar_n_45,xbar_n_46,xbar_n_47,xbar_n_48,xbar_n_49,xbar_n_50,xbar_n_51,xbar_n_52,xbar_n_53,xbar_n_54,\^M06_AXI_awaddr ,M05_AXI_awaddr,xbar_n_91,xbar_n_92,xbar_n_93,xbar_n_94,xbar_n_95,xbar_n_96,xbar_n_97,xbar_n_98,xbar_n_99,xbar_n_100,xbar_n_101,xbar_n_102,xbar_n_103,xbar_n_104,xbar_n_105,xbar_n_106,\^M04_AXI_awaddr ,xbar_n_116,xbar_n_117,xbar_n_118,xbar_n_119,xbar_n_120,xbar_n_121,xbar_n_122,xbar_n_123,xbar_n_124,xbar_n_125,xbar_n_126,xbar_n_127,xbar_n_128,xbar_n_129,xbar_n_130,xbar_n_131,\^M03_AXI_awaddr ,xbar_n_141,xbar_n_142,xbar_n_143,xbar_n_144,xbar_n_145,xbar_n_146,xbar_n_147,xbar_n_148,xbar_n_149,xbar_n_150,xbar_n_151,xbar_n_152,xbar_n_153,xbar_n_154,xbar_n_155,xbar_n_156,xbar_n_157,xbar_n_158,xbar_n_159,xbar_n_160,\^M02_AXI_awaddr ,xbar_n_166,xbar_n_167,xbar_n_168,xbar_n_169,xbar_n_170,xbar_n_171,xbar_n_172,xbar_n_173,xbar_n_174,xbar_n_175,xbar_n_176,xbar_n_177,xbar_n_178,xbar_n_179,\^M01_AXI_awaddr ,xbar_n_191,xbar_n_192,xbar_n_193,xbar_n_194,xbar_n_195,xbar_n_196,xbar_n_197,xbar_n_198,xbar_n_199,xbar_n_200,xbar_n_201,xbar_n_202,xbar_n_203,xbar_n_204,\^M00_AXI_awaddr }),
        .m_axi_awprot({NLW_xbar_m_axi_awprot_UNCONNECTED[20:18],M05_AXI_awprot,NLW_xbar_m_axi_awprot_UNCONNECTED[14:0]}),
        .m_axi_awready({M06_AXI_awready,M05_AXI_awready,M04_AXI_awready,M03_AXI_awready,M02_AXI_awready,M01_AXI_awready,M00_AXI_awready}),
        .m_axi_awvalid({M06_AXI_awvalid,M05_AXI_awvalid,M04_AXI_awvalid,M03_AXI_awvalid,M02_AXI_awvalid,M01_AXI_awvalid,M00_AXI_awvalid}),
        .m_axi_bready({M06_AXI_bready,M05_AXI_bready,M04_AXI_bready,M03_AXI_bready,M02_AXI_bready,M01_AXI_bready,M00_AXI_bready}),
        .m_axi_bresp({M06_AXI_bresp,M05_AXI_bresp,M04_AXI_bresp,M03_AXI_bresp,M02_AXI_bresp,M01_AXI_bresp,M00_AXI_bresp}),
        .m_axi_bvalid({M06_AXI_bvalid,M05_AXI_bvalid,M04_AXI_bvalid,M03_AXI_bvalid,M02_AXI_bvalid,M01_AXI_bvalid,M00_AXI_bvalid}),
        .m_axi_rdata({M06_AXI_rdata,M05_AXI_rdata,M04_AXI_rdata,M03_AXI_rdata,M02_AXI_rdata,M01_AXI_rdata,M00_AXI_rdata}),
        .m_axi_rready({M06_AXI_rready,M05_AXI_rready,M04_AXI_rready,M03_AXI_rready,M02_AXI_rready,M01_AXI_rready,M00_AXI_rready}),
        .m_axi_rresp({M06_AXI_rresp,M05_AXI_rresp,M04_AXI_rresp,M03_AXI_rresp,M02_AXI_rresp,M01_AXI_rresp,M00_AXI_rresp}),
        .m_axi_rvalid({M06_AXI_rvalid,M05_AXI_rvalid,M04_AXI_rvalid,M03_AXI_rvalid,M02_AXI_rvalid,M01_AXI_rvalid,M00_AXI_rvalid}),
        .m_axi_wdata({M06_AXI_wdata,M05_AXI_wdata,M04_AXI_wdata,M03_AXI_wdata,M02_AXI_wdata,M01_AXI_wdata,M00_AXI_wdata}),
        .m_axi_wready({M06_AXI_wready,M05_AXI_wready,M04_AXI_wready,M03_AXI_wready,M02_AXI_wready,M01_AXI_wready,M00_AXI_wready}),
        .m_axi_wstrb({M06_AXI_wstrb,M05_AXI_wstrb,M04_AXI_wstrb,M03_AXI_wstrb,M02_AXI_wstrb,M01_AXI_wstrb,M00_AXI_wstrb}),
        .m_axi_wvalid({M06_AXI_wvalid,M05_AXI_wvalid,M04_AXI_wvalid,M03_AXI_wvalid,M02_AXI_wvalid,M01_AXI_wvalid,M00_AXI_wvalid}),
        .s_axi_araddr(S00_AXI_araddr),
        .s_axi_arprot(S00_AXI_arprot),
        .s_axi_arready(S00_AXI_arready),
        .s_axi_arvalid(S00_AXI_arvalid),
        .s_axi_awaddr(S00_AXI_awaddr),
        .s_axi_awprot(S00_AXI_awprot),
        .s_axi_awready(S00_AXI_awready),
        .s_axi_awvalid(S00_AXI_awvalid),
        .s_axi_bready(S00_AXI_bready),
        .s_axi_bresp(S00_AXI_bresp),
        .s_axi_bvalid(S00_AXI_bvalid),
        .s_axi_rdata(S00_AXI_rdata),
        .s_axi_rready(S00_AXI_rready),
        .s_axi_rresp(S00_AXI_rresp),
        .s_axi_rvalid(S00_AXI_rvalid),
        .s_axi_wdata(S00_AXI_wdata),
        .s_axi_wready(S00_AXI_wready),
        .s_axi_wstrb(S00_AXI_wstrb),
        .s_axi_wvalid(S00_AXI_wvalid));
endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_axi_ic_ctrl_mgmt_top_imp_xbar_0,axi_crossbar_v2_1_37_axi_crossbar,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_crossbar_v2_1_37_axi_crossbar,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_axi_ic_ctrl_mgmt_top_imp_xbar_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF M00_AXI:M01_AXI:M02_AXI:M03_AXI:M04_AXI:M05_AXI:M06_AXI:M07_AXI:M08_AXI:M09_AXI:M10_AXI:M11_AXI:M12_AXI:M13_AXI:M14_AXI:M15_AXI:S00_AXI:S01_AXI:S02_AXI:S03_AXI:S04_AXI:S05_AXI:S06_AXI:S07_AXI:S08_AXI:S09_AXI:S10_AXI:S11_AXI:S12_AXI:S13_AXI:S14_AXI:S15_AXI, ASSOCIATED_RESET aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [24:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input [0:0]s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output [0:0]s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input [0:0]s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output [0:0]s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output [0:0]s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input [0:0]s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [24:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input [0:0]s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output [0:0]s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output [0:0]s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input [0:0]s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR [24:0] [24:0], xilinx.com:interface:aximm:1.0 M01_AXI AWADDR [24:0] [49:25], xilinx.com:interface:aximm:1.0 M02_AXI AWADDR [24:0] [74:50], xilinx.com:interface:aximm:1.0 M03_AXI AWADDR [24:0] [99:75], xilinx.com:interface:aximm:1.0 M04_AXI AWADDR [24:0] [124:100], xilinx.com:interface:aximm:1.0 M05_AXI AWADDR [24:0] [149:125], xilinx.com:interface:aximm:1.0 M06_AXI AWADDR [24:0] [174:150]" *) (* X_INTERFACE_MODE = "master M06_AXI" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M06_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [174:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI AWPROT [2:0] [5:3], xilinx.com:interface:aximm:1.0 M02_AXI AWPROT [2:0] [8:6], xilinx.com:interface:aximm:1.0 M03_AXI AWPROT [2:0] [11:9], xilinx.com:interface:aximm:1.0 M04_AXI AWPROT [2:0] [14:12], xilinx.com:interface:aximm:1.0 M05_AXI AWPROT [2:0] [17:15], xilinx.com:interface:aximm:1.0 M06_AXI AWPROT [2:0] [20:18]" *) output [20:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI AWVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 M03_AXI AWVALID [0:0] [3:3], xilinx.com:interface:aximm:1.0 M04_AXI AWVALID [0:0] [4:4], xilinx.com:interface:aximm:1.0 M05_AXI AWVALID [0:0] [5:5], xilinx.com:interface:aximm:1.0 M06_AXI AWVALID [0:0] [6:6]" *) output [6:0]m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI AWREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 M03_AXI AWREADY [0:0] [3:3], xilinx.com:interface:aximm:1.0 M04_AXI AWREADY [0:0] [4:4], xilinx.com:interface:aximm:1.0 M05_AXI AWREADY [0:0] [5:5], xilinx.com:interface:aximm:1.0 M06_AXI AWREADY [0:0] [6:6]" *) input [6:0]m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI WDATA [31:0] [63:32], xilinx.com:interface:aximm:1.0 M02_AXI WDATA [31:0] [95:64], xilinx.com:interface:aximm:1.0 M03_AXI WDATA [31:0] [127:96], xilinx.com:interface:aximm:1.0 M04_AXI WDATA [31:0] [159:128], xilinx.com:interface:aximm:1.0 M05_AXI WDATA [31:0] [191:160], xilinx.com:interface:aximm:1.0 M06_AXI WDATA [31:0] [223:192]" *) output [223:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI WSTRB [3:0] [7:4], xilinx.com:interface:aximm:1.0 M02_AXI WSTRB [3:0] [11:8], xilinx.com:interface:aximm:1.0 M03_AXI WSTRB [3:0] [15:12], xilinx.com:interface:aximm:1.0 M04_AXI WSTRB [3:0] [19:16], xilinx.com:interface:aximm:1.0 M05_AXI WSTRB [3:0] [23:20], xilinx.com:interface:aximm:1.0 M06_AXI WSTRB [3:0] [27:24]" *) output [27:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI WVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 M03_AXI WVALID [0:0] [3:3], xilinx.com:interface:aximm:1.0 M04_AXI WVALID [0:0] [4:4], xilinx.com:interface:aximm:1.0 M05_AXI WVALID [0:0] [5:5], xilinx.com:interface:aximm:1.0 M06_AXI WVALID [0:0] [6:6]" *) output [6:0]m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI WREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 M03_AXI WREADY [0:0] [3:3], xilinx.com:interface:aximm:1.0 M04_AXI WREADY [0:0] [4:4], xilinx.com:interface:aximm:1.0 M05_AXI WREADY [0:0] [5:5], xilinx.com:interface:aximm:1.0 M06_AXI WREADY [0:0] [6:6]" *) input [6:0]m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI BRESP [1:0] [3:2], xilinx.com:interface:aximm:1.0 M02_AXI BRESP [1:0] [5:4], xilinx.com:interface:aximm:1.0 M03_AXI BRESP [1:0] [7:6], xilinx.com:interface:aximm:1.0 M04_AXI BRESP [1:0] [9:8], xilinx.com:interface:aximm:1.0 M05_AXI BRESP [1:0] [11:10], xilinx.com:interface:aximm:1.0 M06_AXI BRESP [1:0] [13:12]" *) input [13:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI BVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 M03_AXI BVALID [0:0] [3:3], xilinx.com:interface:aximm:1.0 M04_AXI BVALID [0:0] [4:4], xilinx.com:interface:aximm:1.0 M05_AXI BVALID [0:0] [5:5], xilinx.com:interface:aximm:1.0 M06_AXI BVALID [0:0] [6:6]" *) input [6:0]m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI BREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 M03_AXI BREADY [0:0] [3:3], xilinx.com:interface:aximm:1.0 M04_AXI BREADY [0:0] [4:4], xilinx.com:interface:aximm:1.0 M05_AXI BREADY [0:0] [5:5], xilinx.com:interface:aximm:1.0 M06_AXI BREADY [0:0] [6:6]" *) output [6:0]m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR [24:0] [24:0], xilinx.com:interface:aximm:1.0 M01_AXI ARADDR [24:0] [49:25], xilinx.com:interface:aximm:1.0 M02_AXI ARADDR [24:0] [74:50], xilinx.com:interface:aximm:1.0 M03_AXI ARADDR [24:0] [99:75], xilinx.com:interface:aximm:1.0 M04_AXI ARADDR [24:0] [124:100], xilinx.com:interface:aximm:1.0 M05_AXI ARADDR [24:0] [149:125], xilinx.com:interface:aximm:1.0 M06_AXI ARADDR [24:0] [174:150]" *) output [174:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI ARPROT [2:0] [5:3], xilinx.com:interface:aximm:1.0 M02_AXI ARPROT [2:0] [8:6], xilinx.com:interface:aximm:1.0 M03_AXI ARPROT [2:0] [11:9], xilinx.com:interface:aximm:1.0 M04_AXI ARPROT [2:0] [14:12], xilinx.com:interface:aximm:1.0 M05_AXI ARPROT [2:0] [17:15], xilinx.com:interface:aximm:1.0 M06_AXI ARPROT [2:0] [20:18]" *) output [20:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI ARVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 M03_AXI ARVALID [0:0] [3:3], xilinx.com:interface:aximm:1.0 M04_AXI ARVALID [0:0] [4:4], xilinx.com:interface:aximm:1.0 M05_AXI ARVALID [0:0] [5:5], xilinx.com:interface:aximm:1.0 M06_AXI ARVALID [0:0] [6:6]" *) output [6:0]m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI ARREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 M03_AXI ARREADY [0:0] [3:3], xilinx.com:interface:aximm:1.0 M04_AXI ARREADY [0:0] [4:4], xilinx.com:interface:aximm:1.0 M05_AXI ARREADY [0:0] [5:5], xilinx.com:interface:aximm:1.0 M06_AXI ARREADY [0:0] [6:6]" *) input [6:0]m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI RDATA [31:0] [63:32], xilinx.com:interface:aximm:1.0 M02_AXI RDATA [31:0] [95:64], xilinx.com:interface:aximm:1.0 M03_AXI RDATA [31:0] [127:96], xilinx.com:interface:aximm:1.0 M04_AXI RDATA [31:0] [159:128], xilinx.com:interface:aximm:1.0 M05_AXI RDATA [31:0] [191:160], xilinx.com:interface:aximm:1.0 M06_AXI RDATA [31:0] [223:192]" *) input [223:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI RRESP [1:0] [3:2], xilinx.com:interface:aximm:1.0 M02_AXI RRESP [1:0] [5:4], xilinx.com:interface:aximm:1.0 M03_AXI RRESP [1:0] [7:6], xilinx.com:interface:aximm:1.0 M04_AXI RRESP [1:0] [9:8], xilinx.com:interface:aximm:1.0 M05_AXI RRESP [1:0] [11:10], xilinx.com:interface:aximm:1.0 M06_AXI RRESP [1:0] [13:12]" *) input [13:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI RVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 M03_AXI RVALID [0:0] [3:3], xilinx.com:interface:aximm:1.0 M04_AXI RVALID [0:0] [4:4], xilinx.com:interface:aximm:1.0 M05_AXI RVALID [0:0] [5:5], xilinx.com:interface:aximm:1.0 M06_AXI RVALID [0:0] [6:6]" *) input [6:0]m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI RREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 M03_AXI RREADY [0:0] [3:3], xilinx.com:interface:aximm:1.0 M04_AXI RREADY [0:0] [4:4], xilinx.com:interface:aximm:1.0 M05_AXI RREADY [0:0] [5:5], xilinx.com:interface:aximm:1.0 M06_AXI RREADY [0:0] [6:6]" *) output [6:0]m_axi_rready;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_build_info_0,shell_utils_build_info_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "shell_utils_build_info_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_build_info_0
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_MODE = "slave S_AXI_ACLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_MODE = "slave S_AXI_ARESETN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave S_AXI" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [4:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_clk_hbm_adapt_0,clk_metadata_adapter_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_hbm_adapt_0
   (clk_in,
    clk_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK_IN CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK_IN, FREQ_HZ 450000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_hbm_0_clk_out1, INSERT_VIP 0" *) input clk_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK_OUT CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK_OUT, FREQ_HZ 450000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_hbm_00, INSERT_VIP 0" *) output clk_out;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clkwiz_aclk_kernel_00_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    clk_out1,
    power_down,
    locked,
    clk_in1);
  (* syn_isclock = "1" *) input s_axi_aclk;
  input s_axi_aresetn;
  input [10:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [10:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output clk_out1;
  input power_down;
  output locked;
  input clk_in1;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clkwiz_aclk_kernel_01_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    clk_out1,
    power_down,
    locked,
    clk_in1);
  (* syn_isclock = "1" *) input s_axi_aclk;
  input s_axi_aresetn;
  input [10:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [10:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output clk_out1;
  input power_down;
  output locked;
  input clk_in1;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clkwiz_hbm_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    clk_out1_ce,
    clk_out1,
    power_down,
    locked,
    clk_in1);
  (* syn_isclock = "1" *) input s_axi_aclk;
  input s_axi_aresetn;
  input [10:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [10:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input clk_out1_ce;
  (* syn_isclock = "1" *) output clk_out1;
  input power_down;
  output locked;
  input clk_in1;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_clock_shutdown_latch_0,shell_utils_clock_shutdown_latch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "shell_utils_clock_shutdown_latch,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_shutdown_latch_0
   (Clk,
    Rst,
    Request_SC,
    Request_SW,
    Request_Gate_En,
    Request_Ack,
    Request_Latch,
    Shutdown_Latch);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* X_INTERFACE_MODE = "slave Clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input Clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Rst RST" *) (* X_INTERFACE_MODE = "slave Rst" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Rst;
  input Request_SC;
  input [15:0]Request_SW;
  input Request_Gate_En;
  input Request_Ack;
  output Request_Latch;
  output Shutdown_Latch;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_clock_throttling_aclk_kernel_00_0,shell_utils_clock_throttling,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "shell_utils_clock_throttling,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_throttling_aclk_kernel_00_0
   (Clk_In,
    Rst_In,
    Locked,
    Startup_Done,
    Shutdown_Latch,
    Rate_Upd_Tog,
    Rate_In,
    Rst_Async,
    Clk_Out,
    Clk_Out_Cont);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk_In CLK" *) (* X_INTERFACE_MODE = "slave Clk_In" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk_In, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_aclk_kernel_00_0_clk_out1, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input Clk_In;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Rst_In RST" *) (* X_INTERFACE_MODE = "slave Rst_In" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Rst_In, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Rst_In;
  input Locked;
  input Startup_Done;
  input Shutdown_Latch;
  input Rate_Upd_Tog;
  input [7:0]Rate_In;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Rst_Async RST" *) (* X_INTERFACE_MODE = "slave Rst_Async" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Rst_Async, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output Rst_Async;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk_Out CLK" *) (* X_INTERFACE_MODE = "master Clk_Out" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk_Out, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_aclk_kernel_00_0_clk_out1_buf, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) output Clk_Out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk_Out_Cont CLK" *) (* X_INTERFACE_MODE = "master Clk_Out_Cont" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk_Out_Cont, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_aclk_kernel_00_0_clk_out1_buf, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) output Clk_Out_Cont;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_clock_throttling_aclk_kernel_01_0,shell_utils_clock_throttling,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "shell_utils_clock_throttling,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_throttling_aclk_kernel_01_0
   (Clk_In,
    Rst_In,
    Locked,
    Startup_Done,
    Shutdown_Latch,
    Rate_Upd_Tog,
    Rate_In,
    Rst_Async,
    Clk_Out,
    Clk_Out_Cont);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk_In CLK" *) (* X_INTERFACE_MODE = "slave Clk_In" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk_In, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_aclk_kernel_01_0_clk_out1, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input Clk_In;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Rst_In RST" *) (* X_INTERFACE_MODE = "slave Rst_In" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Rst_In, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Rst_In;
  input Locked;
  input Startup_Done;
  input Shutdown_Latch;
  input Rate_Upd_Tog;
  input [7:0]Rate_In;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Rst_Async RST" *) (* X_INTERFACE_MODE = "slave Rst_Async" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Rst_Async, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output Rst_Async;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk_Out CLK" *) (* X_INTERFACE_MODE = "master Clk_Out" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk_Out, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_aclk_kernel_01_0_clk_out1_buf, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) output Clk_Out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk_Out_Cont CLK" *) (* X_INTERFACE_MODE = "master Clk_Out_Cont" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk_Out_Cont, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_aclk_kernel_01_0_clk_out1_buf, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) output Clk_Out_Cont;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_clock_throttling_avg_0,shell_utils_clock_throttling_avg,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "shell_utils_clock_throttling_avg,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_throttling_avg_0
   (Clk,
    Rst,
    Rate_Upd_Tog,
    Rate,
    Rate_Avg);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* X_INTERFACE_MODE = "slave Clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input Clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Rst RST" *) (* X_INTERFACE_MODE = "slave Rst" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Rst;
  input Rate_Upd_Tog;
  input [7:0]Rate;
  output [13:0]Rate_Avg;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_ctrl_slr0_1_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr0_1_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_ctrl_slr0_2_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr0_2_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_ctrl_slr0_3_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr0_3_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_ctrl_slr0_4_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr0_4_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_ctrl_slr1_1_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr1_1_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_ctrl_slr1_2_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr1_2_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_ctrl_slr1_3_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr1_3_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_ctrl_slr1_4_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr1_4_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_hbm_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_hbm_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 450000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_hbm_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_00_slr0_1_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_00_slr0_1_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_00_slr0_2_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_00_slr0_2_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_00_slr0_3_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_00_slr0_3_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_00_slr0_4_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_00_slr0_4_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_00_slr1_1_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_00_slr1_1_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_00_slr1_2_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_00_slr1_2_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_00_slr1_3_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_00_slr1_3_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_00_slr1_4_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_00_slr1_4_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_01_slr0_1_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_01_slr0_1_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_01, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_01_slr0_2_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_01_slr0_2_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_01, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_01_slr0_3_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_01_slr0_3_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_01, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_01_slr0_4_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_01_slr0_4_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_01, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_01_slr1_1_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_01_slr1_1_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_01, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_01_slr1_2_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_01_slr1_2_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_01, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_01_slr1_3_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_01_slr1_3_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_01, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_01_slr1_4_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_01_slr1_4_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_01, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_pcie_slr0_1_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr0_1_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_pcie_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_pcie_slr0_2_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr0_2_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_pcie_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_pcie_slr0_3_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr0_3_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_pcie_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_pcie_slr0_4_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr0_4_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_pcie_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_pcie_slr1_1_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr1_1_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_pcie_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_pcie_slr1_2_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr1_2_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_pcie_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_pcie_slr1_3_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr1_3_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_pcie_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_pcie_slr1_4_0,pipeline_reg_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr1_4_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_pcie_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_frequency_counter_aclk_0,shell_utils_frequency_counter_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "shell_utils_frequency_counter_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_aclk_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    test_clk0,
    test_clk1);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_signal_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_signal_clock, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_signal_reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_signal_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* syn_isclock = "1" *) input test_clk0;
  (* syn_isclock = "1" *) input test_clk1;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_frequency_counter_aclk_hbm_0,shell_utils_frequency_counter_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "shell_utils_frequency_counter_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_aclk_hbm_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    test_clk0,
    test_clk3);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_signal_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_signal_clock, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_signal_reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_signal_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* syn_isclock = "1" *) input test_clk0;
  (* syn_isclock = "1" *) input test_clk3;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_frequency_counter_aclk_kernel_00_0,shell_utils_frequency_counter_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "shell_utils_frequency_counter_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_aclk_kernel_00_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    test_clk0,
    test_clk1);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_signal_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_signal_clock, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_signal_reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_signal_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* syn_isclock = "1" *) input test_clk0;
  (* syn_isclock = "1" *) input test_clk1;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_frequency_counter_aclk_kernel_01_0,shell_utils_frequency_counter_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "shell_utils_frequency_counter_v1_0_0,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_aclk_kernel_01_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    test_clk0,
    test_clk1);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_signal_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_signal_clock, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_signal_reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_signal_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* syn_isclock = "1" *) input test_clk0;
  (* syn_isclock = "1" *) input test_clk1;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_gapping_demand_toggle_0,c_counter_binary_v12_0_21,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "c_counter_binary_v12_0_21,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gapping_demand_toggle_0
   (CLK,
    CE,
    Q);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* X_INTERFACE_MODE = "slave clk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* X_INTERFACE_MODE = "slave ce_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* X_INTERFACE_MODE = "master q_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 1}" *) output [0:0]Q;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_gapping_demand_update_0,util_vector_logic_v2_0_5_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_5_util_vector_logic,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gapping_demand_update_0
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_gpio_gapping_demand_0,axi_gpio,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_gpio,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_gapping_demand_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    gpio_io_o,
    gpio2_io_i);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_MODE = "slave S_AXI_ACLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_MODE = "slave S_AXI_ARESETN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave S_AXI" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [8:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [8:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO TRI_O" *) (* X_INTERFACE_MODE = "master GPIO" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GPIO, BOARD.ASSOCIATED_PARAM GPIO_BOARD_INTERFACE" *) output [31:0]gpio_io_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO2 TRI_I" *) (* X_INTERFACE_MODE = "master GPIO2" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GPIO2, BOARD.ASSOCIATED_PARAM GPIO2_BOARD_INTERFACE" *) input [31:0]gpio2_io_i;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_gpio_gapping_demand_concat_0,xlconcat_v2_1_7_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlconcat_v2_1_7_xlconcat,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_gapping_demand_concat_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [30:0]In1;
  output [31:0]dout;

  wire \<const0> ;
  wire [0:0]In0;

  assign dout[31] = \<const0> ;
  assign dout[30] = \<const0> ;
  assign dout[29] = \<const0> ;
  assign dout[28] = \<const0> ;
  assign dout[27] = \<const0> ;
  assign dout[26] = \<const0> ;
  assign dout[25] = \<const0> ;
  assign dout[24] = \<const0> ;
  assign dout[23] = \<const0> ;
  assign dout[22] = \<const0> ;
  assign dout[21] = \<const0> ;
  assign dout[20] = \<const0> ;
  assign dout[19] = \<const0> ;
  assign dout[18] = \<const0> ;
  assign dout[17] = \<const0> ;
  assign dout[16] = \<const0> ;
  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const0> ;
  assign dout[0] = In0;
  GND GND
       (.G(\<const0> ));
endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_gpio_ucs_control_status_0,axi_gpio,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_gpio,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_ucs_control_status_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    gpio_io_i,
    gpio2_io_o);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_MODE = "slave S_AXI_ACLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_MODE = "slave S_AXI_ARESETN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave S_AXI" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [8:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [8:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO TRI_I" *) (* X_INTERFACE_MODE = "master GPIO" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GPIO, BOARD.ASSOCIATED_PARAM GPIO_BOARD_INTERFACE" *) input [31:0]gpio_io_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO2 TRI_O" *) (* X_INTERFACE_MODE = "master GPIO2" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GPIO2, BOARD.ASSOCIATED_PARAM GPIO2_BOARD_INTERFACE" *) output [31:0]gpio2_io_o;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_gpio_ucs_status_concat_0,xlconcat_v2_1_7_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlconcat_v2_1_7_xlconcat,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_ucs_status_concat_0
   (In0,
    In1,
    In2,
    In3,
    dout);
  input [0:0]In0;
  input [14:0]In1;
  input [13:0]In2;
  input [1:0]In3;
  output [31:0]dout;

  wire \<const0> ;
  wire [0:0]In0;
  wire [13:0]In2;

  assign dout[31] = \<const0> ;
  assign dout[30] = \<const0> ;
  assign dout[29:16] = In2;
  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const0> ;
  assign dout[0] = In0;
  GND GND
       (.G(\<const0> ));
endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_psreset_aclk_freerun_0,proc_sys_reset,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "proc_sys_reset,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_aclk_freerun_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *) (* X_INTERFACE_MODE = "slave clock" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, ASSOCIATED_RESET mb_reset:bus_struct_reset:interconnect_aresetn:peripheral_aresetn:peripheral_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input slowest_sync_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ext_reset RST" *) (* X_INTERFACE_MODE = "slave ext_reset" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ext_reset, BOARD.ASSOCIATED_PARAM RESET_BOARD_INTERFACE, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ext_reset_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aux_reset RST" *) (* X_INTERFACE_MODE = "slave aux_reset" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aux_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aux_reset_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 dbg_reset RST" *) (* X_INTERFACE_MODE = "slave dbg_reset" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input mb_debug_sys_rst;
  input dcm_locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 mb_rst RST" *) (* X_INTERFACE_MODE = "master mb_rst" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mb_rst, POLARITY ACTIVE_HIGH, TYPE PROCESSOR, INSERT_VIP 0" *) output mb_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 bus_struct_reset RST" *) (* X_INTERFACE_MODE = "master bus_struct_reset" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bus_struct_reset, POLARITY ACTIVE_HIGH, TYPE INTERCONNECT, INSERT_VIP 0" *) output [0:0]bus_struct_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 peripheral_high_rst RST" *) (* X_INTERFACE_MODE = "master peripheral_high_rst" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME peripheral_high_rst, POLARITY ACTIVE_HIGH, TYPE PERIPHERAL, INSERT_VIP 0" *) output [0:0]peripheral_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 interconnect_low_rst RST" *) (* X_INTERFACE_MODE = "master interconnect_low_rst" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interconnect_low_rst, POLARITY ACTIVE_LOW, TYPE INTERCONNECT, INSERT_VIP 0" *) output [0:0]interconnect_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 peripheral_low_rst RST" *) (* X_INTERFACE_MODE = "master peripheral_low_rst" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME peripheral_low_rst, POLARITY ACTIVE_LOW, TYPE PERIPHERAL, INSERT_VIP 0" *) output [0:0]peripheral_aresetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_psreset_hbm_0,proc_sys_reset,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "proc_sys_reset,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_hbm_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *) (* X_INTERFACE_MODE = "slave clock" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, ASSOCIATED_RESET mb_reset:bus_struct_reset:interconnect_aresetn:peripheral_aresetn:peripheral_reset, FREQ_HZ 450000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_hbm_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input slowest_sync_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ext_reset RST" *) (* X_INTERFACE_MODE = "slave ext_reset" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ext_reset, BOARD.ASSOCIATED_PARAM RESET_BOARD_INTERFACE, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ext_reset_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aux_reset RST" *) (* X_INTERFACE_MODE = "slave aux_reset" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aux_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aux_reset_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 dbg_reset RST" *) (* X_INTERFACE_MODE = "slave dbg_reset" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input mb_debug_sys_rst;
  input dcm_locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 mb_rst RST" *) (* X_INTERFACE_MODE = "master mb_rst" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mb_rst, POLARITY ACTIVE_HIGH, TYPE PROCESSOR, INSERT_VIP 0" *) output mb_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 bus_struct_reset RST" *) (* X_INTERFACE_MODE = "master bus_struct_reset" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bus_struct_reset, POLARITY ACTIVE_HIGH, TYPE INTERCONNECT, INSERT_VIP 0" *) output [0:0]bus_struct_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 peripheral_high_rst RST" *) (* X_INTERFACE_MODE = "master peripheral_high_rst" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME peripheral_high_rst, POLARITY ACTIVE_HIGH, TYPE PERIPHERAL, INSERT_VIP 0" *) output [0:0]peripheral_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 interconnect_low_rst RST" *) (* X_INTERFACE_MODE = "master interconnect_low_rst" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interconnect_low_rst, POLARITY ACTIVE_LOW, TYPE INTERCONNECT, INSERT_VIP 0" *) output [0:0]interconnect_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 peripheral_low_rst RST" *) (* X_INTERFACE_MODE = "master peripheral_low_rst" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME peripheral_low_rst, POLARITY ACTIVE_LOW, TYPE PERIPHERAL, INSERT_VIP 0" *) output [0:0]peripheral_aresetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_psreset_kernel_00_0,proc_sys_reset,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "proc_sys_reset,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_kernel_00_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *) (* X_INTERFACE_MODE = "slave clock" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, ASSOCIATED_RESET mb_reset:bus_struct_reset:interconnect_aresetn:peripheral_aresetn:peripheral_reset, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input slowest_sync_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ext_reset RST" *) (* X_INTERFACE_MODE = "slave ext_reset" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ext_reset, BOARD.ASSOCIATED_PARAM RESET_BOARD_INTERFACE, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ext_reset_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aux_reset RST" *) (* X_INTERFACE_MODE = "slave aux_reset" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aux_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aux_reset_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 dbg_reset RST" *) (* X_INTERFACE_MODE = "slave dbg_reset" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input mb_debug_sys_rst;
  input dcm_locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 mb_rst RST" *) (* X_INTERFACE_MODE = "master mb_rst" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mb_rst, POLARITY ACTIVE_HIGH, TYPE PROCESSOR, INSERT_VIP 0" *) output mb_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 bus_struct_reset RST" *) (* X_INTERFACE_MODE = "master bus_struct_reset" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bus_struct_reset, POLARITY ACTIVE_HIGH, TYPE INTERCONNECT, INSERT_VIP 0" *) output [0:0]bus_struct_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 peripheral_high_rst RST" *) (* X_INTERFACE_MODE = "master peripheral_high_rst" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME peripheral_high_rst, POLARITY ACTIVE_HIGH, TYPE PERIPHERAL, INSERT_VIP 0" *) output [0:0]peripheral_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 interconnect_low_rst RST" *) (* X_INTERFACE_MODE = "master interconnect_low_rst" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interconnect_low_rst, POLARITY ACTIVE_LOW, TYPE INTERCONNECT, INSERT_VIP 0" *) output [0:0]interconnect_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 peripheral_low_rst RST" *) (* X_INTERFACE_MODE = "master peripheral_low_rst" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME peripheral_low_rst, POLARITY ACTIVE_LOW, TYPE PERIPHERAL, INSERT_VIP 0" *) output [0:0]peripheral_aresetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_psreset_kernel_01_0,proc_sys_reset,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "proc_sys_reset,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_kernel_01_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *) (* X_INTERFACE_MODE = "slave clock" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, ASSOCIATED_RESET mb_reset:bus_struct_reset:interconnect_aresetn:peripheral_aresetn:peripheral_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_01, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input slowest_sync_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ext_reset RST" *) (* X_INTERFACE_MODE = "slave ext_reset" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ext_reset, BOARD.ASSOCIATED_PARAM RESET_BOARD_INTERFACE, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ext_reset_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aux_reset RST" *) (* X_INTERFACE_MODE = "slave aux_reset" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aux_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aux_reset_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 dbg_reset RST" *) (* X_INTERFACE_MODE = "slave dbg_reset" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input mb_debug_sys_rst;
  input dcm_locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 mb_rst RST" *) (* X_INTERFACE_MODE = "master mb_rst" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mb_rst, POLARITY ACTIVE_HIGH, TYPE PROCESSOR, INSERT_VIP 0" *) output mb_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 bus_struct_reset RST" *) (* X_INTERFACE_MODE = "master bus_struct_reset" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bus_struct_reset, POLARITY ACTIVE_HIGH, TYPE INTERCONNECT, INSERT_VIP 0" *) output [0:0]bus_struct_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 peripheral_high_rst RST" *) (* X_INTERFACE_MODE = "master peripheral_high_rst" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME peripheral_high_rst, POLARITY ACTIVE_HIGH, TYPE PERIPHERAL, INSERT_VIP 0" *) output [0:0]peripheral_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 interconnect_low_rst RST" *) (* X_INTERFACE_MODE = "master interconnect_low_rst" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interconnect_low_rst, POLARITY ACTIVE_LOW, TYPE INTERCONNECT, INSERT_VIP 0" *) output [0:0]interconnect_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 peripheral_low_rst RST" *) (* X_INTERFACE_MODE = "master peripheral_low_rst" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME peripheral_low_rst, POLARITY ACTIVE_LOW, TYPE PERIPHERAL, INSERT_VIP 0" *) output [0:0]peripheral_aresetn;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_slice_gapping_demand_ack_0,xlslice_v1_0_5_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_5_xlslice,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_gapping_demand_ack_0
   (Din,
    Dout);
  input [31:0]Din;
  output [0:0]Dout;

  wire [31:0]Din;

  assign Dout[0] = Din[16];
endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_slice_gapping_demand_enable_0,xlslice_v1_0_5_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_5_xlslice,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_gapping_demand_enable_0
   (Din,
    Dout);
  input [31:0]Din;
  output [0:0]Dout;

  wire [31:0]Din;

  assign Dout[0] = Din[20];
endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_slice_gapping_demand_rate_0,xlslice_v1_0_5_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_5_xlslice,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_gapping_demand_rate_0
   (Din,
    Dout);
  input [31:0]Din;
  output [7:0]Dout;

  wire [31:0]Din;

  assign Dout[7:0] = Din[7:0];
endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_slice_ucs_control_status_done_0,xlslice_v1_0_5_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_5_xlslice,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_ucs_control_status_done_0
   (Din,
    Dout);
  input [31:0]Din;
  output [0:0]Dout;

  wire [31:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_slice_ucs_control_status_force_shutdown_0,xlslice_v1_0_5_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_5_xlslice,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_ucs_control_status_force_shutdown_0
   (Din,
    Dout);
  input [31:0]Din;
  output [15:0]Dout;

  wire [31:0]Din;

  assign Dout[15:0] = Din[20:5];
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fanout_aresetn_ctrl_imp_1QSDUUK
   (aresetn_ctrl_slr0,
    aresetn_ctrl_slr1,
    aresetn_ctrl,
    aclk_ctrl);
  output [0:0]aresetn_ctrl_slr0;
  output [0:0]aresetn_ctrl_slr1;
  input aresetn_ctrl;
  input aclk_ctrl;

  wire aclk_ctrl;
  wire aresetn_ctrl;
  wire [0:0]aresetn_ctrl_slr0;
  wire aresetn_ctrl_slr0_2;
  wire aresetn_ctrl_slr0_3;
  wire aresetn_ctrl_slr0_4;
  wire [0:0]aresetn_ctrl_slr1;
  wire aresetn_ctrl_slr1_2;
  wire aresetn_ctrl_slr1_3;
  wire aresetn_ctrl_slr1_4;

  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_ctrl_slr0_1_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr0_1_0 fanout_aresetn_ctrl_slr0_1
       (.clk(aclk_ctrl),
        .d(aresetn_ctrl),
        .q(aresetn_ctrl_slr0_2),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_ctrl_slr0_2_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr0_2_0 fanout_aresetn_ctrl_slr0_2
       (.clk(aclk_ctrl),
        .d(aresetn_ctrl_slr0_2),
        .q(aresetn_ctrl_slr0_3),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_ctrl_slr0_3_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr0_3_0 fanout_aresetn_ctrl_slr0_3
       (.clk(aclk_ctrl),
        .d(aresetn_ctrl_slr0_3),
        .q(aresetn_ctrl_slr0_4),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_ctrl_slr0_4_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr0_4_0 fanout_aresetn_ctrl_slr0_4
       (.clk(aclk_ctrl),
        .d(aresetn_ctrl_slr0_4),
        .q(aresetn_ctrl_slr0),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_ctrl_slr1_1_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr1_1_0 fanout_aresetn_ctrl_slr1_1
       (.clk(aclk_ctrl),
        .d(aresetn_ctrl),
        .q(aresetn_ctrl_slr1_2),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_ctrl_slr1_2_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr1_2_0 fanout_aresetn_ctrl_slr1_2
       (.clk(aclk_ctrl),
        .d(aresetn_ctrl_slr1_2),
        .q(aresetn_ctrl_slr1_3),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_ctrl_slr1_3_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr1_3_0 fanout_aresetn_ctrl_slr1_3
       (.clk(aclk_ctrl),
        .d(aresetn_ctrl_slr1_3),
        .q(aresetn_ctrl_slr1_4),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_ctrl_slr1_4_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr1_4_0 fanout_aresetn_ctrl_slr1_4
       (.clk(aclk_ctrl),
        .d(aresetn_ctrl_slr1_4),
        .q(aresetn_ctrl_slr1),
        .resetn(1'b1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fanout_aresetn_kernel_00_imp_17RTXXN
   (aresetn_kernel_00_slr0,
    aresetn_kernel_00_slr1,
    aresetn_kernel_00,
    aclk_kernel_00_cont);
  output [0:0]aresetn_kernel_00_slr0;
  output [0:0]aresetn_kernel_00_slr1;
  input [0:0]aresetn_kernel_00;
  input aclk_kernel_00_cont;

  wire aclk_kernel_00_cont;
  wire [0:0]aresetn_kernel_00;
  wire [0:0]aresetn_kernel_00_slr0;
  wire aresetn_kernel_00_slr0_2;
  wire aresetn_kernel_00_slr0_3;
  wire aresetn_kernel_00_slr0_4;
  wire [0:0]aresetn_kernel_00_slr1;
  wire aresetn_kernel_00_slr1_2;
  wire aresetn_kernel_00_slr1_3;
  wire aresetn_kernel_00_slr1_4;

  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_00_slr0_1_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_00_slr0_1_0 fanout_aresetn_kernel_00_slr0_1
       (.clk(aclk_kernel_00_cont),
        .d(aresetn_kernel_00),
        .q(aresetn_kernel_00_slr0_2),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_00_slr0_2_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_00_slr0_2_0 fanout_aresetn_kernel_00_slr0_2
       (.clk(aclk_kernel_00_cont),
        .d(aresetn_kernel_00_slr0_2),
        .q(aresetn_kernel_00_slr0_3),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_00_slr0_3_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_00_slr0_3_0 fanout_aresetn_kernel_00_slr0_3
       (.clk(aclk_kernel_00_cont),
        .d(aresetn_kernel_00_slr0_3),
        .q(aresetn_kernel_00_slr0_4),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_00_slr0_4_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_00_slr0_4_0 fanout_aresetn_kernel_00_slr0_4
       (.clk(aclk_kernel_00_cont),
        .d(aresetn_kernel_00_slr0_4),
        .q(aresetn_kernel_00_slr0),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_00_slr1_1_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_00_slr1_1_0 fanout_aresetn_kernel_00_slr1_1
       (.clk(aclk_kernel_00_cont),
        .d(aresetn_kernel_00),
        .q(aresetn_kernel_00_slr1_2),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_00_slr1_2_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_00_slr1_2_0 fanout_aresetn_kernel_00_slr1_2
       (.clk(aclk_kernel_00_cont),
        .d(aresetn_kernel_00_slr1_2),
        .q(aresetn_kernel_00_slr1_3),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_00_slr1_3_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_00_slr1_3_0 fanout_aresetn_kernel_00_slr1_3
       (.clk(aclk_kernel_00_cont),
        .d(aresetn_kernel_00_slr1_3),
        .q(aresetn_kernel_00_slr1_4),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_00_slr1_4_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_00_slr1_4_0 fanout_aresetn_kernel_00_slr1_4
       (.clk(aclk_kernel_00_cont),
        .d(aresetn_kernel_00_slr1_4),
        .q(aresetn_kernel_00_slr1),
        .resetn(1'b1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fanout_aresetn_kernel_01_imp_68K3FY
   (aresetn_kernel_01_slr0,
    aresetn_kernel_01_slr1,
    aresetn_kernel_01,
    aclk_kernel_01_cont);
  output [0:0]aresetn_kernel_01_slr0;
  output [0:0]aresetn_kernel_01_slr1;
  input [0:0]aresetn_kernel_01;
  input aclk_kernel_01_cont;

  wire aclk_kernel_01_cont;
  wire [0:0]aresetn_kernel_01;
  wire [0:0]aresetn_kernel_01_slr0;
  wire aresetn_kernel_01_slr0_2;
  wire aresetn_kernel_01_slr0_3;
  wire aresetn_kernel_01_slr0_4;
  wire [0:0]aresetn_kernel_01_slr1;
  wire aresetn_kernel_01_slr1_2;
  wire aresetn_kernel_01_slr1_3;
  wire aresetn_kernel_01_slr1_4;

  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_01_slr0_1_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_01_slr0_1_0 fanout_aresetn_kernel_01_slr0_1
       (.clk(aclk_kernel_01_cont),
        .d(aresetn_kernel_01),
        .q(aresetn_kernel_01_slr0_2),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_01_slr0_2_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_01_slr0_2_0 fanout_aresetn_kernel_01_slr0_2
       (.clk(aclk_kernel_01_cont),
        .d(aresetn_kernel_01_slr0_2),
        .q(aresetn_kernel_01_slr0_3),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_01_slr0_3_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_01_slr0_3_0 fanout_aresetn_kernel_01_slr0_3
       (.clk(aclk_kernel_01_cont),
        .d(aresetn_kernel_01_slr0_3),
        .q(aresetn_kernel_01_slr0_4),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_01_slr0_4_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_01_slr0_4_0 fanout_aresetn_kernel_01_slr0_4
       (.clk(aclk_kernel_01_cont),
        .d(aresetn_kernel_01_slr0_4),
        .q(aresetn_kernel_01_slr0),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_01_slr1_1_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_01_slr1_1_0 fanout_aresetn_kernel_01_slr1_1
       (.clk(aclk_kernel_01_cont),
        .d(aresetn_kernel_01),
        .q(aresetn_kernel_01_slr1_2),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_01_slr1_2_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_01_slr1_2_0 fanout_aresetn_kernel_01_slr1_2
       (.clk(aclk_kernel_01_cont),
        .d(aresetn_kernel_01_slr1_2),
        .q(aresetn_kernel_01_slr1_3),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_01_slr1_3_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_01_slr1_3_0 fanout_aresetn_kernel_01_slr1_3
       (.clk(aclk_kernel_01_cont),
        .d(aresetn_kernel_01_slr1_3),
        .q(aresetn_kernel_01_slr1_4),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_kernel_01_slr1_4_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_01_slr1_4_0 fanout_aresetn_kernel_01_slr1_4
       (.clk(aclk_kernel_01_cont),
        .d(aresetn_kernel_01_slr1_4),
        .q(aresetn_kernel_01_slr1),
        .resetn(1'b1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fanout_aresetn_pcie_imp_9FAOQ8
   (aresetn_pcie_slr0,
    aresetn_pcie_slr1,
    aresetn_pcie,
    aclk_pcie);
  output [0:0]aresetn_pcie_slr0;
  output [0:0]aresetn_pcie_slr1;
  input aresetn_pcie;
  input aclk_pcie;

  wire aclk_pcie;
  wire aresetn_pcie;
  wire [0:0]aresetn_pcie_slr0;
  wire aresetn_pcie_slr0_2;
  wire aresetn_pcie_slr0_3;
  wire aresetn_pcie_slr0_4;
  wire [0:0]aresetn_pcie_slr1;
  wire aresetn_pcie_slr1_2;
  wire aresetn_pcie_slr1_3;
  wire aresetn_pcie_slr1_4;

  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_pcie_slr0_1_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr0_1_0 fanout_aresetn_pcie_slr0_1
       (.clk(aclk_pcie),
        .d(aresetn_pcie),
        .q(aresetn_pcie_slr0_2),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_pcie_slr0_2_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr0_2_0 fanout_aresetn_pcie_slr0_2
       (.clk(aclk_pcie),
        .d(aresetn_pcie_slr0_2),
        .q(aresetn_pcie_slr0_3),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_pcie_slr0_3_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr0_3_0 fanout_aresetn_pcie_slr0_3
       (.clk(aclk_pcie),
        .d(aresetn_pcie_slr0_3),
        .q(aresetn_pcie_slr0_4),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_pcie_slr0_4_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr0_4_0 fanout_aresetn_pcie_slr0_4
       (.clk(aclk_pcie),
        .d(aresetn_pcie_slr0_4),
        .q(aresetn_pcie_slr0),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_pcie_slr1_1_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr1_1_0 fanout_aresetn_pcie_slr1_1
       (.clk(aclk_pcie),
        .d(aresetn_pcie),
        .q(aresetn_pcie_slr1_2),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_pcie_slr1_2_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr1_2_0 fanout_aresetn_pcie_slr1_2
       (.clk(aclk_pcie),
        .d(aresetn_pcie_slr1_2),
        .q(aresetn_pcie_slr1_3),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_pcie_slr1_3_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr1_3_0 fanout_aresetn_pcie_slr1_3
       (.clk(aclk_pcie),
        .d(aresetn_pcie_slr1_3),
        .q(aresetn_pcie_slr1_4),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "bd_22c0_fanout_aresetn_pcie_slr1_4_0,pipeline_reg_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr1_4_0 fanout_aresetn_pcie_slr1_4
       (.clk(aclk_pcie),
        .d(aresetn_pcie_slr1_4),
        .q(aresetn_pcie_slr1),
        .resetn(1'b1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_frequency_counters_imp_129ZTEO
   (S_AXI_arready,
    S_AXI_awready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wready,
    aclk_freerun,
    aclk_ctrl,
    aresetn_ctrl,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_rready,
    S_AXI_wdata,
    S_AXI_wstrb,
    S_AXI_wvalid,
    aclk_pcie,
    aclk_hbm,
    aclk_hbm_refclk,
    aclk_kernel_00_cont,
    aclk_kernel_00,
    aclk_kernel_01_cont,
    aclk_kernel_01);
  output [0:0]S_AXI_arready;
  output [0:0]S_AXI_awready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  output [0:0]S_AXI_wready;
  input aclk_freerun;
  input aclk_ctrl;
  input aresetn_ctrl;
  input [24:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  input [0:0]S_AXI_arvalid;
  input [24:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  input [0:0]S_AXI_rready;
  input [31:0]S_AXI_wdata;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input aclk_pcie;
  input aclk_hbm;
  input aclk_hbm_refclk;
  input aclk_kernel_00_cont;
  input aclk_kernel_00;
  input aclk_kernel_01_cont;
  input aclk_kernel_01;

  wire [24:0]S_AXI_araddr;
  wire [2:0]S_AXI_arprot;
  wire [0:0]S_AXI_arready;
  wire [0:0]S_AXI_arvalid;
  wire [24:0]S_AXI_awaddr;
  wire [2:0]S_AXI_awprot;
  wire [0:0]S_AXI_awready;
  wire [0:0]S_AXI_awvalid;
  wire [0:0]S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire [0:0]S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [0:0]S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire [0:0]S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire [0:0]S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire [0:0]S_AXI_wvalid;
  wire aclk_ctrl;
  wire aclk_freerun;
  wire aclk_hbm;
  wire aclk_hbm_refclk;
  wire aclk_kernel_00;
  wire aclk_kernel_00_cont;
  wire aclk_kernel_01;
  wire aclk_kernel_01_cont;
  wire aclk_pcie;
  wire aresetn_aclk_freerun_net;
  wire aresetn_ctrl;
  wire [24:0]axi_ic_ctrl_mgmt_freq_M00_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_freq_M00_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_freq_M00_AXI_ARVALID;
  wire [24:0]axi_ic_ctrl_mgmt_freq_M00_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_freq_M00_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_freq_M00_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_freq_M00_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_freq_M00_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_freq_M00_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_freq_M00_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_freq_M00_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_freq_M00_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_freq_M00_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_freq_M00_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_freq_M00_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_freq_M00_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_freq_M00_AXI_WVALID;
  wire [24:0]axi_ic_ctrl_mgmt_freq_M01_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_freq_M01_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_freq_M01_AXI_ARVALID;
  wire [24:0]axi_ic_ctrl_mgmt_freq_M01_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_freq_M01_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_freq_M01_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_freq_M01_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_freq_M01_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_freq_M01_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_freq_M01_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_freq_M01_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_freq_M01_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_freq_M01_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_freq_M01_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_freq_M01_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_freq_M01_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_freq_M01_AXI_WVALID;
  wire [24:0]axi_ic_ctrl_mgmt_freq_M02_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_freq_M02_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_freq_M02_AXI_ARVALID;
  wire [24:0]axi_ic_ctrl_mgmt_freq_M02_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_freq_M02_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_freq_M02_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_freq_M02_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_freq_M02_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_freq_M02_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_freq_M02_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_freq_M02_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_freq_M02_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_freq_M02_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_freq_M02_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_freq_M02_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_freq_M02_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_freq_M02_AXI_WVALID;
  wire [24:0]axi_ic_ctrl_mgmt_freq_M03_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_freq_M03_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_freq_M03_AXI_ARVALID;
  wire [24:0]axi_ic_ctrl_mgmt_freq_M03_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_freq_M03_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_freq_M03_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_freq_M03_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_freq_M03_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_freq_M03_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_freq_M03_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_freq_M03_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_freq_M03_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_freq_M03_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_freq_M03_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_freq_M03_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_freq_M03_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_freq_M03_AXI_WVALID;
  wire NLW_psreset_aclk_freerun_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_aclk_freerun_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_aclk_freerun_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psreset_aclk_freerun_peripheral_reset_UNCONNECTED;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_axi_ic_ctrl_mgmt_freq_0 axi_ic_ctrl_mgmt_freq
       (.ACLK(aclk_freerun),
        .ARESETN(aresetn_aclk_freerun_net),
        .M00_ACLK(1'b0),
        .M00_ARESETN(1'b0),
        .M00_AXI_araddr(axi_ic_ctrl_mgmt_freq_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_ic_ctrl_mgmt_freq_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_ic_ctrl_mgmt_freq_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_ic_ctrl_mgmt_freq_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_ic_ctrl_mgmt_freq_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_ic_ctrl_mgmt_freq_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_ic_ctrl_mgmt_freq_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_ic_ctrl_mgmt_freq_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_ic_ctrl_mgmt_freq_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_ic_ctrl_mgmt_freq_M00_AXI_RDATA),
        .M00_AXI_rready(axi_ic_ctrl_mgmt_freq_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_ic_ctrl_mgmt_freq_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_ic_ctrl_mgmt_freq_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_ic_ctrl_mgmt_freq_M00_AXI_WDATA),
        .M00_AXI_wready(axi_ic_ctrl_mgmt_freq_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_ic_ctrl_mgmt_freq_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_ic_ctrl_mgmt_freq_M00_AXI_WVALID),
        .M01_ACLK(1'b0),
        .M01_ARESETN(1'b0),
        .M01_AXI_araddr(axi_ic_ctrl_mgmt_freq_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_ic_ctrl_mgmt_freq_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_ic_ctrl_mgmt_freq_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_ic_ctrl_mgmt_freq_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_ic_ctrl_mgmt_freq_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_ic_ctrl_mgmt_freq_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_ic_ctrl_mgmt_freq_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_ic_ctrl_mgmt_freq_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_ic_ctrl_mgmt_freq_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_ic_ctrl_mgmt_freq_M01_AXI_RDATA),
        .M01_AXI_rready(axi_ic_ctrl_mgmt_freq_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_ic_ctrl_mgmt_freq_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_ic_ctrl_mgmt_freq_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_ic_ctrl_mgmt_freq_M01_AXI_WDATA),
        .M01_AXI_wready(axi_ic_ctrl_mgmt_freq_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_ic_ctrl_mgmt_freq_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_ic_ctrl_mgmt_freq_M01_AXI_WVALID),
        .M02_ACLK(1'b0),
        .M02_ARESETN(1'b0),
        .M02_AXI_araddr(axi_ic_ctrl_mgmt_freq_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_ic_ctrl_mgmt_freq_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_ic_ctrl_mgmt_freq_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_ic_ctrl_mgmt_freq_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_ic_ctrl_mgmt_freq_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_ic_ctrl_mgmt_freq_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_ic_ctrl_mgmt_freq_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_ic_ctrl_mgmt_freq_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_ic_ctrl_mgmt_freq_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_ic_ctrl_mgmt_freq_M02_AXI_RDATA),
        .M02_AXI_rready(axi_ic_ctrl_mgmt_freq_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_ic_ctrl_mgmt_freq_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_ic_ctrl_mgmt_freq_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_ic_ctrl_mgmt_freq_M02_AXI_WDATA),
        .M02_AXI_wready(axi_ic_ctrl_mgmt_freq_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_ic_ctrl_mgmt_freq_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_ic_ctrl_mgmt_freq_M02_AXI_WVALID),
        .M03_ACLK(1'b0),
        .M03_ARESETN(1'b0),
        .M03_AXI_araddr(axi_ic_ctrl_mgmt_freq_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_ic_ctrl_mgmt_freq_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_ic_ctrl_mgmt_freq_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_ic_ctrl_mgmt_freq_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_ic_ctrl_mgmt_freq_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_ic_ctrl_mgmt_freq_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_ic_ctrl_mgmt_freq_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_ic_ctrl_mgmt_freq_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_ic_ctrl_mgmt_freq_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_ic_ctrl_mgmt_freq_M03_AXI_RDATA),
        .M03_AXI_rready(axi_ic_ctrl_mgmt_freq_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_ic_ctrl_mgmt_freq_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_ic_ctrl_mgmt_freq_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_ic_ctrl_mgmt_freq_M03_AXI_WDATA),
        .M03_AXI_wready(axi_ic_ctrl_mgmt_freq_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_ic_ctrl_mgmt_freq_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_ic_ctrl_mgmt_freq_M03_AXI_WVALID),
        .S00_ACLK(aclk_ctrl),
        .S00_ARESETN(aresetn_ctrl),
        .S00_AXI_araddr(S_AXI_araddr),
        .S00_AXI_arprot(S_AXI_arprot),
        .S00_AXI_arready(S_AXI_arready),
        .S00_AXI_arvalid(S_AXI_arvalid),
        .S00_AXI_awaddr(S_AXI_awaddr),
        .S00_AXI_awprot(S_AXI_awprot),
        .S00_AXI_awready(S_AXI_awready),
        .S00_AXI_awvalid(S_AXI_awvalid),
        .S00_AXI_bready(S_AXI_bready),
        .S00_AXI_bresp(S_AXI_bresp),
        .S00_AXI_bvalid(S_AXI_bvalid),
        .S00_AXI_rdata(S_AXI_rdata),
        .S00_AXI_rready(S_AXI_rready),
        .S00_AXI_rresp(S_AXI_rresp),
        .S00_AXI_rvalid(S_AXI_rvalid),
        .S00_AXI_wdata(S_AXI_wdata),
        .S00_AXI_wready(S_AXI_wready),
        .S00_AXI_wstrb(S_AXI_wstrb),
        .S00_AXI_wvalid(S_AXI_wvalid));
  (* CHECK_LICENSE_TYPE = "bd_22c0_frequency_counter_aclk_0,shell_utils_frequency_counter_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "shell_utils_frequency_counter_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_aclk_0 frequency_counter_aclk
       (.s_axi_aclk(aclk_freerun),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_freq_M02_AXI_ARADDR}),
        .s_axi_aresetn(aresetn_aclk_freerun_net),
        .s_axi_arready(axi_ic_ctrl_mgmt_freq_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_freq_M02_AXI_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_freq_M02_AXI_AWADDR}),
        .s_axi_awready(axi_ic_ctrl_mgmt_freq_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_freq_M02_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_freq_M02_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_freq_M02_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_freq_M02_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_freq_M02_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_freq_M02_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_freq_M02_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_freq_M02_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_freq_M02_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_freq_M02_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_freq_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_freq_M02_AXI_WVALID),
        .test_clk0(aclk_ctrl),
        .test_clk1(aclk_pcie));
  (* CHECK_LICENSE_TYPE = "bd_22c0_frequency_counter_aclk_hbm_0,shell_utils_frequency_counter_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "shell_utils_frequency_counter_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_aclk_hbm_0 frequency_counter_aclk_hbm
       (.s_axi_aclk(aclk_freerun),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_freq_M03_AXI_ARADDR}),
        .s_axi_aresetn(aresetn_aclk_freerun_net),
        .s_axi_arready(axi_ic_ctrl_mgmt_freq_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_freq_M03_AXI_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_freq_M03_AXI_AWADDR}),
        .s_axi_awready(axi_ic_ctrl_mgmt_freq_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_freq_M03_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_freq_M03_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_freq_M03_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_freq_M03_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_freq_M03_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_freq_M03_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_freq_M03_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_freq_M03_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_freq_M03_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_freq_M03_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_freq_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_freq_M03_AXI_WVALID),
        .test_clk0(aclk_hbm),
        .test_clk3(aclk_hbm_refclk));
  (* CHECK_LICENSE_TYPE = "bd_22c0_frequency_counter_aclk_kernel_00_0,shell_utils_frequency_counter_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "shell_utils_frequency_counter_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_aclk_kernel_00_0 frequency_counter_aclk_kernel_00
       (.s_axi_aclk(aclk_freerun),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_freq_M00_AXI_ARADDR}),
        .s_axi_aresetn(aresetn_aclk_freerun_net),
        .s_axi_arready(axi_ic_ctrl_mgmt_freq_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_freq_M00_AXI_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_freq_M00_AXI_AWADDR}),
        .s_axi_awready(axi_ic_ctrl_mgmt_freq_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_freq_M00_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_freq_M00_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_freq_M00_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_freq_M00_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_freq_M00_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_freq_M00_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_freq_M00_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_freq_M00_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_freq_M00_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_freq_M00_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_freq_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_freq_M00_AXI_WVALID),
        .test_clk0(aclk_kernel_00_cont),
        .test_clk1(aclk_kernel_00));
  (* CHECK_LICENSE_TYPE = "bd_22c0_frequency_counter_aclk_kernel_01_0,shell_utils_frequency_counter_v1_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "shell_utils_frequency_counter_v1_0_0,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_aclk_kernel_01_0 frequency_counter_aclk_kernel_01
       (.s_axi_aclk(aclk_freerun),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_freq_M01_AXI_ARADDR}),
        .s_axi_aresetn(aresetn_aclk_freerun_net),
        .s_axi_arready(axi_ic_ctrl_mgmt_freq_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_freq_M01_AXI_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_freq_M01_AXI_AWADDR}),
        .s_axi_awready(axi_ic_ctrl_mgmt_freq_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_freq_M01_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_freq_M01_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_freq_M01_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_freq_M01_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_freq_M01_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_freq_M01_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_freq_M01_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_freq_M01_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_freq_M01_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_freq_M01_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_freq_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_freq_M01_AXI_WVALID),
        .test_clk0(aclk_kernel_01_cont),
        .test_clk1(aclk_kernel_01));
  (* CHECK_LICENSE_TYPE = "bd_22c0_psreset_aclk_freerun_0,proc_sys_reset,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_aclk_freerun_0 psreset_aclk_freerun
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_psreset_aclk_freerun_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn_ctrl),
        .interconnect_aresetn(aresetn_aclk_freerun_net),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psreset_aclk_freerun_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psreset_aclk_freerun_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psreset_aclk_freerun_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(aclk_freerun));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gapping_demand_imp_15CEGP6
   (clock_throttling_average,
    gapping_demand_toggle,
    requested_gapping_demand_rate,
    s_axi_bvalid,
    S_AXI_awready,
    S_AXI_wready,
    S_AXI_bresp,
    S_AXI_arready,
    S_AXI_rdata,
    S_AXI_rresp,
    S_AXI_rvalid,
    shutdown_request_ack,
    throttling_enabled,
    aclk_ctrl,
    aresetn_ctrl,
    s_axi_bready,
    S_AXI_awaddr,
    S_AXI_awvalid,
    S_AXI_wdata,
    S_AXI_wstrb,
    S_AXI_wvalid,
    S_AXI_araddr,
    S_AXI_arvalid,
    S_AXI_rready,
    shutdown_request_latch);
  output [13:0]clock_throttling_average;
  output [0:0]gapping_demand_toggle;
  output [7:0]requested_gapping_demand_rate;
  output s_axi_bvalid;
  output S_AXI_awready;
  output S_AXI_wready;
  output [1:0]S_AXI_bresp;
  output S_AXI_arready;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  output [0:0]shutdown_request_ack;
  output [0:0]throttling_enabled;
  input aclk_ctrl;
  input aresetn_ctrl;
  input s_axi_bready;
  input [8:0]S_AXI_awaddr;
  input S_AXI_awvalid;
  input [31:0]S_AXI_wdata;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input [8:0]S_AXI_araddr;
  input S_AXI_arvalid;
  input S_AXI_rready;
  input shutdown_request_latch;

  wire [8:0]S_AXI_araddr;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [8:0]S_AXI_awaddr;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire [1:0]S_AXI_bresp;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire aclk_ctrl;
  wire aresetn_ctrl;
  wire [13:0]clock_throttling_average;
  wire [0:0]gapping_demand_toggle;
  wire gapping_demand_update_net;
  wire [0:0]gpio_gapping_demand_conc_net;
  wire [31:0]gpio_gapping_demand_gpio_net;
  wire [7:0]requested_gapping_demand_rate;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [0:0]shutdown_request_ack;
  wire shutdown_request_latch;
  wire [0:0]throttling_enabled;
  wire [31:1]NLW_gpio_gapping_demand_concat_dout_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "bd_22c0_clock_throttling_avg_0,shell_utils_clock_throttling_avg,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "shell_utils_clock_throttling_avg,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_throttling_avg_0 clock_throttling_avg
       (.Clk(aclk_ctrl),
        .Rate(requested_gapping_demand_rate),
        .Rate_Avg(clock_throttling_average),
        .Rate_Upd_Tog(gapping_demand_toggle),
        .Rst(aresetn_ctrl));
  (* CHECK_LICENSE_TYPE = "bd_22c0_gapping_demand_toggle_0,c_counter_binary_v12_0_21,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "c_counter_binary_v12_0_21,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gapping_demand_toggle_0 gapping_demand_toggle_RnM
       (.CE(gapping_demand_update_net),
        .CLK(aclk_ctrl),
        .Q(gapping_demand_toggle));
  (* CHECK_LICENSE_TYPE = "bd_22c0_gapping_demand_update_0,util_vector_logic_v2_0_5_util_vector_logic,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "util_vector_logic_v2_0_5_util_vector_logic,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gapping_demand_update_0 gapping_demand_update
       (.Op1(s_axi_bvalid),
        .Op2(s_axi_bready),
        .Res(gapping_demand_update_net));
  (* CHECK_LICENSE_TYPE = "bd_22c0_gpio_gapping_demand_0,axi_gpio,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "axi_gpio,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_gapping_demand_0 gpio_gapping_demand
       (.gpio2_io_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,gpio_gapping_demand_conc_net}),
        .gpio_io_o(gpio_gapping_demand_gpio_net),
        .s_axi_aclk(aclk_ctrl),
        .s_axi_araddr(S_AXI_araddr),
        .s_axi_aresetn(aresetn_ctrl),
        .s_axi_arready(S_AXI_arready),
        .s_axi_arvalid(S_AXI_arvalid),
        .s_axi_awaddr(S_AXI_awaddr),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(S_AXI_rdata),
        .s_axi_rready(S_AXI_rready),
        .s_axi_rresp(S_AXI_rresp),
        .s_axi_rvalid(S_AXI_rvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
  (* CHECK_LICENSE_TYPE = "bd_22c0_gpio_gapping_demand_concat_0,xlconcat_v2_1_7_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_7_xlconcat,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_gapping_demand_concat_0 gpio_gapping_demand_concat
       (.In0(shutdown_request_latch),
        .In1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .dout({NLW_gpio_gapping_demand_concat_dout_UNCONNECTED[31:1],gpio_gapping_demand_conc_net}));
  (* CHECK_LICENSE_TYPE = "bd_22c0_slice_gapping_demand_ack_0,xlslice_v1_0_5_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_5_xlslice,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_gapping_demand_ack_0 slice_gapping_demand_ack
       (.Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gpio_gapping_demand_gpio_net[16],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Dout(shutdown_request_ack));
  (* CHECK_LICENSE_TYPE = "bd_22c0_slice_gapping_demand_enable_0,xlslice_v1_0_5_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_5_xlslice,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_gapping_demand_enable_0 slice_gapping_demand_enable
       (.Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gpio_gapping_demand_gpio_net[20],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Dout(throttling_enabled));
  (* CHECK_LICENSE_TYPE = "bd_22c0_slice_gapping_demand_rate_0,xlslice_v1_0_5_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_5_xlslice,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_gapping_demand_rate_0 slice_gapping_demand_rate
       (.Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gpio_gapping_demand_gpio_net[7:0]}),
        .Dout(requested_gapping_demand_rate));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s00_couplers_imp_WZP98J
   (S00_AXI_awready,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_rready,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awvalid,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arvalid,
    S00_AXI_rready,
    ACLK,
    ARESETN,
    s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid);
  output [0:0]S00_AXI_awready;
  output [0:0]S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [0:0]S00_AXI_arready;
  output [31:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  output [24:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  output m_axi_bready;
  output [24:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  output m_axi_rready;
  input S00_ACLK;
  input S00_ARESETN;
  input [24:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  input [0:0]S00_AXI_awvalid;
  input [31:0]S00_AXI_wdata;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;
  input [0:0]S00_AXI_bready;
  input [24:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  input [0:0]S00_AXI_arvalid;
  input [0:0]S00_AXI_rready;
  input ACLK;
  input ARESETN;
  input [0:0]s_axi_awready;
  input [0:0]s_axi_wready;
  input [1:0]s_axi_bresp;
  input [0:0]s_axi_bvalid;
  input [0:0]s_axi_arready;
  input [31:0]s_axi_rdata;
  input [1:0]s_axi_rresp;
  input [0:0]s_axi_rvalid;

  wire ACLK;
  wire ARESETN;
  wire S00_ACLK;
  wire S00_ARESETN;
  wire [24:0]S00_AXI_araddr;
  wire [2:0]S00_AXI_arprot;
  wire [0:0]S00_AXI_arready;
  wire [0:0]S00_AXI_arvalid;
  wire [24:0]S00_AXI_awaddr;
  wire [2:0]S00_AXI_awprot;
  wire [0:0]S00_AXI_awready;
  wire [0:0]S00_AXI_awvalid;
  wire [0:0]S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire [0:0]S00_AXI_bvalid;
  wire [31:0]S00_AXI_rdata;
  wire [0:0]S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire [0:0]S00_AXI_rvalid;
  wire [31:0]S00_AXI_wdata;
  wire [0:0]S00_AXI_wready;
  wire [3:0]S00_AXI_wstrb;
  wire [0:0]S00_AXI_wvalid;
  wire [24:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arvalid;
  wire [24:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire m_axi_rready;
  wire [31:0]m_axi_wdata;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [0:0]s_axi_arready;
  wire [0:0]s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [0:0]s_axi_wready;

  (* CHECK_LICENSE_TYPE = "bd_22c0_axi_ic_ctrl_mgmt_freq_imp_auto_cc_0,axi_clock_converter_v2_1_34_axi_clock_converter,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "axi_clock_converter_v2_1_34_axi_clock_converter,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_axi_ic_ctrl_mgmt_freq_imp_auto_cc_0 auto_cc
       (.m_axi_aclk(ACLK),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_aresetn(ARESETN),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arready(s_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awready(s_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(s_axi_bresp),
        .m_axi_bvalid(s_axi_bvalid),
        .m_axi_rdata(s_axi_rdata),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(s_axi_rresp),
        .m_axi_rvalid(s_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wready(s_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_aclk(S00_ACLK),
        .s_axi_araddr(S00_AXI_araddr),
        .s_axi_aresetn(S00_ARESETN),
        .s_axi_arprot(S00_AXI_arprot),
        .s_axi_arready(S00_AXI_arready),
        .s_axi_arvalid(S00_AXI_arvalid),
        .s_axi_awaddr(S00_AXI_awaddr),
        .s_axi_awprot(S00_AXI_awprot),
        .s_axi_awready(S00_AXI_awready),
        .s_axi_awvalid(S00_AXI_awvalid),
        .s_axi_bready(S00_AXI_bready),
        .s_axi_bresp(S00_AXI_bresp),
        .s_axi_bvalid(S00_AXI_bvalid),
        .s_axi_rdata(S00_AXI_rdata),
        .s_axi_rready(S00_AXI_rready),
        .s_axi_rresp(S00_AXI_rresp),
        .s_axi_rvalid(S00_AXI_rvalid),
        .s_axi_wdata(S00_AXI_wdata),
        .s_axi_wready(S00_AXI_wready),
        .s_axi_wstrb(S00_AXI_wstrb),
        .s_axi_wvalid(S00_AXI_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ucs_control_status_imp_8E30KC
   (shutdown_request_latch,
    power_down,
    S_AXI_awready,
    S_AXI_wready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_arready,
    S_AXI_rdata,
    S_AXI_rresp,
    S_AXI_rvalid,
    clock_program_done,
    aclk_ctrl,
    aresetn_ctrl,
    shutdown_clocks,
    throttling_enabled,
    shutdown_request_ack,
    S_AXI_awaddr,
    S_AXI_awvalid,
    S_AXI_wdata,
    S_AXI_wstrb,
    S_AXI_wvalid,
    S_AXI_bready,
    S_AXI_araddr,
    S_AXI_arvalid,
    S_AXI_rready,
    clock_throttling_average);
  output shutdown_request_latch;
  output power_down;
  output S_AXI_awready;
  output S_AXI_wready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_arready;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  output [0:0]clock_program_done;
  input aclk_ctrl;
  input aresetn_ctrl;
  input shutdown_clocks;
  input throttling_enabled;
  input shutdown_request_ack;
  input [8:0]S_AXI_awaddr;
  input S_AXI_awvalid;
  input [31:0]S_AXI_wdata;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input S_AXI_bready;
  input [8:0]S_AXI_araddr;
  input S_AXI_arvalid;
  input S_AXI_rready;
  input [13:0]clock_throttling_average;

  wire [15:0]Request_SW_net;
  wire [8:0]S_AXI_araddr;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [8:0]S_AXI_awaddr;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire aclk_ctrl;
  wire aresetn_ctrl;
  wire [0:0]clock_program_done;
  wire [13:0]clock_throttling_average;
  wire [31:0]gpio_ucs_control_status_net;
  wire [29:0]gpio_ucs_status_concat_net;
  wire power_down;
  wire shutdown_clocks;
  wire shutdown_request_ack;
  wire shutdown_request_latch;
  wire throttling_enabled;
  wire [31:1]NLW_gpio_ucs_status_concat_dout_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "bd_22c0_clock_shutdown_latch_0,shell_utils_clock_shutdown_latch,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "shell_utils_clock_shutdown_latch,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_shutdown_latch_0 clock_shutdown_latch
       (.Clk(aclk_ctrl),
        .Request_Ack(shutdown_request_ack),
        .Request_Gate_En(throttling_enabled),
        .Request_Latch(shutdown_request_latch),
        .Request_SC(shutdown_clocks),
        .Request_SW(Request_SW_net),
        .Rst(aresetn_ctrl),
        .Shutdown_Latch(power_down));
  (* CHECK_LICENSE_TYPE = "bd_22c0_gpio_ucs_control_status_0,axi_gpio,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "axi_gpio,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_ucs_control_status_0 gpio_ucs_control_status
       (.gpio2_io_o(gpio_ucs_control_status_net),
        .gpio_io_i({1'b0,1'b0,gpio_ucs_status_concat_net[29:16],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gpio_ucs_status_concat_net[0]}),
        .s_axi_aclk(aclk_ctrl),
        .s_axi_araddr(S_AXI_araddr),
        .s_axi_aresetn(aresetn_ctrl),
        .s_axi_arready(S_AXI_arready),
        .s_axi_arvalid(S_AXI_arvalid),
        .s_axi_awaddr(S_AXI_awaddr),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_rdata(S_AXI_rdata),
        .s_axi_rready(S_AXI_rready),
        .s_axi_rresp(S_AXI_rresp),
        .s_axi_rvalid(S_AXI_rvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
  (* CHECK_LICENSE_TYPE = "bd_22c0_gpio_ucs_status_concat_0,xlconcat_v2_1_7_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_7_xlconcat,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_ucs_status_concat_0 gpio_ucs_status_concat
       (.In0(power_down),
        .In1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .In2(clock_throttling_average),
        .In3({1'b0,1'b0}),
        .dout({NLW_gpio_ucs_status_concat_dout_UNCONNECTED[31:30],gpio_ucs_status_concat_net}));
  (* CHECK_LICENSE_TYPE = "bd_22c0_slice_ucs_control_status_done_0,xlslice_v1_0_5_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_5_xlslice,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_ucs_control_status_done_0 slice_ucs_control_status_done
       (.Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gpio_ucs_control_status_net[0]}),
        .Dout(clock_program_done));
  (* CHECK_LICENSE_TYPE = "bd_22c0_slice_ucs_control_status_force_shutdown_0,xlslice_v1_0_5_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_5_xlslice,Vivado 2025.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_ucs_control_status_force_shutdown_0 slice_ucs_control_status_force_shutdown
       (.Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gpio_ucs_control_status_net[20:5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Dout(Request_SW_net));
endmodule

(* CHECK_LICENSE_TYPE = "ulp_ulp_ucs_0,bd_22c0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_22c0,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk_freerun,
    aclk_ctrl,
    aclk_pcie,
    aclk_kernel_00,
    aclk_kernel_01,
    aclk_hbm,
    aclk_hbm_refclk,
    aresetn_ctrl,
    aresetn_pcie,
    aresetn_ctrl_slr0,
    aresetn_ctrl_slr1,
    aresetn_pcie_slr0,
    aresetn_pcie_slr1,
    aresetn_kernel_00_slr0,
    aresetn_kernel_00_slr1,
    aresetn_kernel_01_slr0,
    aresetn_kernel_01_slr1,
    aresetn_hbm,
    shutdown_clocks,
    s_axi_ctrl_mgmt_awaddr,
    s_axi_ctrl_mgmt_awprot,
    s_axi_ctrl_mgmt_awvalid,
    s_axi_ctrl_mgmt_awready,
    s_axi_ctrl_mgmt_wdata,
    s_axi_ctrl_mgmt_wstrb,
    s_axi_ctrl_mgmt_wvalid,
    s_axi_ctrl_mgmt_wready,
    s_axi_ctrl_mgmt_bresp,
    s_axi_ctrl_mgmt_bvalid,
    s_axi_ctrl_mgmt_bready,
    s_axi_ctrl_mgmt_araddr,
    s_axi_ctrl_mgmt_arprot,
    s_axi_ctrl_mgmt_arvalid,
    s_axi_ctrl_mgmt_arready,
    s_axi_ctrl_mgmt_rdata,
    s_axi_ctrl_mgmt_rresp,
    s_axi_ctrl_mgmt_rvalid,
    s_axi_ctrl_mgmt_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_freerun CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_freerun, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, INSERT_VIP 0" *) input aclk_freerun;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_ctrl CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_ctrl, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, ASSOCIATED_BUSIF s_axi_ctrl_mgmt, ASSOCIATED_RESET aresetn_ctrl:aresetn_ctrl_slr0:aresetn_ctrl_slr1, INSERT_VIP 0, ASSOCIATED_CLKEN CE" *) input aclk_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_pcie CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_pcie, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_pcie_00, ASSOCIATED_RESET aresetn_pcie:aresetn_pcie_slr0:aresetn_pcie_slr1, INSERT_VIP 0" *) input aclk_pcie;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_kernel_00 CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_kernel_00, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, ASSOCIATED_RESET aresetn_kernel_00_slr0:aresetn_kernel_00_slr1, INSERT_VIP 0" *) output aclk_kernel_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_kernel_01 CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_kernel_01, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_01, ASSOCIATED_RESET aresetn_kernel_01_slr0:aresetn_kernel_01_slr1, INSERT_VIP 0" *) output aclk_kernel_01;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_hbm CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_hbm, FREQ_HZ 450000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_hbm_00, ASSOCIATED_RESET aresetn_hbm, INSERT_VIP 0" *) output aclk_hbm;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_hbm_refclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_hbm_refclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, INSERT_VIP 0" *) input aclk_hbm_refclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_ctrl, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_pcie RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_pcie, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn_pcie;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl_slr0 RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_ctrl_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [0:0]aresetn_ctrl_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl_slr1 RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_ctrl_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [0:0]aresetn_ctrl_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_pcie_slr0 RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_pcie_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [0:0]aresetn_pcie_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_pcie_slr1 RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_pcie_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [0:0]aresetn_pcie_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_kernel_00_slr0 RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_kernel_00_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [0:0]aresetn_kernel_00_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_kernel_00_slr1 RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_kernel_00_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [0:0]aresetn_kernel_00_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_kernel_01_slr0 RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_kernel_01_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [0:0]aresetn_kernel_01_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_kernel_01_slr1 RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_kernel_01_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [0:0]aresetn_kernel_01_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_hbm RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_hbm, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [0:0]aresetn_hbm;
  input shutdown_clocks;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_mgmt, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 1" *) input [24:0]s_axi_ctrl_mgmt_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWPROT" *) input [2:0]s_axi_ctrl_mgmt_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWVALID" *) input [0:0]s_axi_ctrl_mgmt_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWREADY" *) output [0:0]s_axi_ctrl_mgmt_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WDATA" *) input [31:0]s_axi_ctrl_mgmt_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WSTRB" *) input [3:0]s_axi_ctrl_mgmt_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WVALID" *) input [0:0]s_axi_ctrl_mgmt_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WREADY" *) output [0:0]s_axi_ctrl_mgmt_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BRESP" *) output [1:0]s_axi_ctrl_mgmt_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BVALID" *) output [0:0]s_axi_ctrl_mgmt_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BREADY" *) input [0:0]s_axi_ctrl_mgmt_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARADDR" *) input [24:0]s_axi_ctrl_mgmt_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARPROT" *) input [2:0]s_axi_ctrl_mgmt_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARVALID" *) input [0:0]s_axi_ctrl_mgmt_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARREADY" *) output [0:0]s_axi_ctrl_mgmt_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RDATA" *) output [31:0]s_axi_ctrl_mgmt_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RRESP" *) output [1:0]s_axi_ctrl_mgmt_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RVALID" *) output [0:0]s_axi_ctrl_mgmt_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RREADY" *) input [0:0]s_axi_ctrl_mgmt_rready;

  wire aclk_ctrl;
  wire aclk_freerun;
  wire aclk_hbm;
  wire aclk_hbm_refclk;
  wire aclk_kernel_00;
  wire aclk_kernel_01;
  wire aclk_pcie;
  wire aresetn_ctrl;
  wire [0:0]aresetn_ctrl_slr0;
  wire [0:0]aresetn_ctrl_slr1;
  wire [0:0]aresetn_hbm;
  wire [0:0]aresetn_kernel_00_slr0;
  wire [0:0]aresetn_kernel_00_slr1;
  wire [0:0]aresetn_kernel_01_slr0;
  wire [0:0]aresetn_kernel_01_slr1;
  wire aresetn_pcie;
  wire [0:0]aresetn_pcie_slr0;
  wire [0:0]aresetn_pcie_slr1;
  wire [24:0]s_axi_ctrl_mgmt_araddr;
  wire [2:0]s_axi_ctrl_mgmt_arprot;
  wire [0:0]s_axi_ctrl_mgmt_arready;
  wire [0:0]s_axi_ctrl_mgmt_arvalid;
  wire [24:0]s_axi_ctrl_mgmt_awaddr;
  wire [2:0]s_axi_ctrl_mgmt_awprot;
  wire [0:0]s_axi_ctrl_mgmt_awready;
  wire [0:0]s_axi_ctrl_mgmt_awvalid;
  wire [0:0]s_axi_ctrl_mgmt_bready;
  wire [1:0]s_axi_ctrl_mgmt_bresp;
  wire [0:0]s_axi_ctrl_mgmt_bvalid;
  wire [31:0]s_axi_ctrl_mgmt_rdata;
  wire [0:0]s_axi_ctrl_mgmt_rready;
  wire [1:0]s_axi_ctrl_mgmt_rresp;
  wire [0:0]s_axi_ctrl_mgmt_rvalid;
  wire [31:0]s_axi_ctrl_mgmt_wdata;
  wire [0:0]s_axi_ctrl_mgmt_wready;
  wire [3:0]s_axi_ctrl_mgmt_wstrb;
  wire [0:0]s_axi_ctrl_mgmt_wvalid;
  wire shutdown_clocks;

  (* HW_HANDOFF = "ulp_ulp_ucs_0.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0 inst
       (.aclk_ctrl(aclk_ctrl),
        .aclk_freerun(aclk_freerun),
        .aclk_hbm(aclk_hbm),
        .aclk_hbm_refclk(aclk_hbm_refclk),
        .aclk_kernel_00(aclk_kernel_00),
        .aclk_kernel_01(aclk_kernel_01),
        .aclk_pcie(aclk_pcie),
        .aresetn_ctrl(aresetn_ctrl),
        .aresetn_ctrl_slr0(aresetn_ctrl_slr0),
        .aresetn_ctrl_slr1(aresetn_ctrl_slr1),
        .aresetn_hbm(aresetn_hbm),
        .aresetn_kernel_00_slr0(aresetn_kernel_00_slr0),
        .aresetn_kernel_00_slr1(aresetn_kernel_00_slr1),
        .aresetn_kernel_01_slr0(aresetn_kernel_01_slr0),
        .aresetn_kernel_01_slr1(aresetn_kernel_01_slr1),
        .aresetn_pcie(aresetn_pcie),
        .aresetn_pcie_slr0(aresetn_pcie_slr0),
        .aresetn_pcie_slr1(aresetn_pcie_slr1),
        .s_axi_ctrl_mgmt_araddr(s_axi_ctrl_mgmt_araddr),
        .s_axi_ctrl_mgmt_arprot(s_axi_ctrl_mgmt_arprot),
        .s_axi_ctrl_mgmt_arready(s_axi_ctrl_mgmt_arready),
        .s_axi_ctrl_mgmt_arvalid(s_axi_ctrl_mgmt_arvalid),
        .s_axi_ctrl_mgmt_awaddr(s_axi_ctrl_mgmt_awaddr),
        .s_axi_ctrl_mgmt_awprot(s_axi_ctrl_mgmt_awprot),
        .s_axi_ctrl_mgmt_awready(s_axi_ctrl_mgmt_awready),
        .s_axi_ctrl_mgmt_awvalid(s_axi_ctrl_mgmt_awvalid),
        .s_axi_ctrl_mgmt_bready(s_axi_ctrl_mgmt_bready),
        .s_axi_ctrl_mgmt_bresp(s_axi_ctrl_mgmt_bresp),
        .s_axi_ctrl_mgmt_bvalid(s_axi_ctrl_mgmt_bvalid),
        .s_axi_ctrl_mgmt_rdata(s_axi_ctrl_mgmt_rdata),
        .s_axi_ctrl_mgmt_rready(s_axi_ctrl_mgmt_rready),
        .s_axi_ctrl_mgmt_rresp(s_axi_ctrl_mgmt_rresp),
        .s_axi_ctrl_mgmt_rvalid(s_axi_ctrl_mgmt_rvalid),
        .s_axi_ctrl_mgmt_wdata(s_axi_ctrl_mgmt_wdata),
        .s_axi_ctrl_mgmt_wready(s_axi_ctrl_mgmt_wready),
        .s_axi_ctrl_mgmt_wstrb(s_axi_ctrl_mgmt_wstrb),
        .s_axi_ctrl_mgmt_wvalid(s_axi_ctrl_mgmt_wvalid),
        .shutdown_clocks(shutdown_clocks));
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
