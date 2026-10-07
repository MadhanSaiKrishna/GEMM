-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu Oct  1 03:00:58 2026
-- Host        : node06.local running 64-bit Rocky Linux release 8.9 (Green Obsidian)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_clock_throttling_aclk_kernel_01_0_stub.vhdl
-- Design      : bd_22c0_clock_throttling_aclk_kernel_01_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu50-fsvh2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    Clk_In : in STD_LOGIC;
    Rst_In : in STD_LOGIC;
    Locked : in STD_LOGIC;
    Startup_Done : in STD_LOGIC;
    Shutdown_Latch : in STD_LOGIC;
    Rate_Upd_Tog : in STD_LOGIC;
    Rate_In : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rst_Async : out STD_LOGIC;
    Clk_Out : out STD_LOGIC;
    Clk_Out_Cont : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_22c0_clock_throttling_aclk_kernel_01_0,shell_utils_clock_throttling,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_22c0_clock_throttling_aclk_kernel_01_0,shell_utils_clock_throttling,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=shell_utils_clock_throttling,x_ipVersion=2.0,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,CLK_SLOW_DIV=1,SYNTH_SIZE=8,IS_VERSAL=false,SIM_DEVICE=ULTRASCALE_PLUS}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "Clk_In,Rst_In,Locked,Startup_Done,Shutdown_Latch,Rate_Upd_Tog,Rate_In[7:0],Rst_Async,Clk_Out,Clk_Out_Cont";
  attribute x_interface_info : string;
  attribute x_interface_info of Clk_In : signal is "xilinx.com:signal:clock:1.0 Clk_In CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of Clk_In : signal is "slave Clk_In";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clk_In : signal is "XIL_INTERFACENAME Clk_In, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_aclk_kernel_01_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of Rst_In : signal is "xilinx.com:signal:reset:1.0 Rst_In RST";
  attribute x_interface_mode of Rst_In : signal is "slave Rst_In";
  attribute x_interface_parameter of Rst_In : signal is "XIL_INTERFACENAME Rst_In, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of Rst_Async : signal is "xilinx.com:signal:reset:1.0 Rst_Async RST";
  attribute x_interface_mode of Rst_Async : signal is "slave Rst_Async";
  attribute x_interface_parameter of Rst_Async : signal is "XIL_INTERFACENAME Rst_Async, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of Clk_Out : signal is "xilinx.com:signal:clock:1.0 Clk_Out CLK";
  attribute x_interface_mode of Clk_Out : signal is "master Clk_Out";
  attribute x_interface_parameter of Clk_Out : signal is "XIL_INTERFACENAME Clk_Out, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_aclk_kernel_01_0_clk_out1_buf, INSERT_VIP 0";
  attribute x_interface_info of Clk_Out_Cont : signal is "xilinx.com:signal:clock:1.0 Clk_Out_Cont CLK";
  attribute x_interface_mode of Clk_Out_Cont : signal is "master Clk_Out_Cont";
  attribute x_interface_parameter of Clk_Out_Cont : signal is "XIL_INTERFACENAME Clk_Out_Cont, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_aclk_kernel_01_0_clk_out1_buf, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "shell_utils_clock_throttling,Vivado 2025.1";
begin
end;
