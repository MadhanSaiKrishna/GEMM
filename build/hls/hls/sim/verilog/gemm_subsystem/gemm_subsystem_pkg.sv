//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`timescale 1ns/1ps 

`ifndef GEMM_SUBSYSTEM_PKG__SV          
    `define GEMM_SUBSYSTEM_PKG__SV      
                                                     
    package gemm_subsystem_pkg;               
                                                     
        import uvm_pkg::*;                           
        import file_agent_pkg::*;                    
        import axi_pkg::*;
                                                     
        `include "uvm_macros.svh"                  
                                                     
        `include "gemm_config.sv"           
        `include "gemm_reference_model.sv"  
        `include "gemm_scoreboard.sv"       
        `include "gemm_subsystem_monitor.sv"
        `include "gemm_virtual_sequencer.sv"
        `include "gemm_pkg_sequence_lib.sv" 
        `include "gemm_env.sv"              
                                                     
    endpackage                                       
                                                     
`endif                                               
