// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xgemm.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XGemm_CfgInitialize(XGemm *InstancePtr, XGemm_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XGemm_Start(XGemm *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_AP_CTRL) & 0x80;
    XGemm_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XGemm_IsDone(XGemm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XGemm_IsIdle(XGemm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XGemm_IsReady(XGemm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XGemm_Continue(XGemm *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_AP_CTRL) & 0x80;
    XGemm_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XGemm_EnableAutoRestart(XGemm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XGemm_DisableAutoRestart(XGemm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_AP_CTRL, 0);
}

void XGemm_Set_A(XGemm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_A_DATA, (u32)(Data));
    XGemm_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_A_DATA + 4, (u32)(Data >> 32));
}

u64 XGemm_Get_A(XGemm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_A_DATA);
    Data += (u64)XGemm_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_A_DATA + 4) << 32;
    return Data;
}

void XGemm_Set_B(XGemm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_B_DATA, (u32)(Data));
    XGemm_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_B_DATA + 4, (u32)(Data >> 32));
}

u64 XGemm_Get_B(XGemm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_B_DATA);
    Data += (u64)XGemm_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_B_DATA + 4) << 32;
    return Data;
}

void XGemm_Set_C(XGemm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_C_DATA, (u32)(Data));
    XGemm_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_C_DATA + 4, (u32)(Data >> 32));
}

u64 XGemm_Get_C(XGemm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_C_DATA);
    Data += (u64)XGemm_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_C_DATA + 4) << 32;
    return Data;
}

void XGemm_Set_M(XGemm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_M_DATA, Data);
}

u32 XGemm_Get_M(XGemm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_M_DATA);
    return Data;
}

void XGemm_Set_K(XGemm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_K_DATA, Data);
}

u32 XGemm_Get_K(XGemm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_K_DATA);
    return Data;
}

void XGemm_Set_N(XGemm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_N_DATA, Data);
}

u32 XGemm_Get_N(XGemm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_N_DATA);
    return Data;
}

void XGemm_InterruptGlobalEnable(XGemm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_GIE, 1);
}

void XGemm_InterruptGlobalDisable(XGemm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_GIE, 0);
}

void XGemm_InterruptEnable(XGemm *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XGemm_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_IER);
    XGemm_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_IER, Register | Mask);
}

void XGemm_InterruptDisable(XGemm *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XGemm_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_IER);
    XGemm_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_IER, Register & (~Mask));
}

void XGemm_InterruptClear(XGemm *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_ISR, Mask);
}

u32 XGemm_InterruptGetEnabled(XGemm *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGemm_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_IER);
}

u32 XGemm_InterruptGetStatus(XGemm *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGemm_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_CONTROL_ADDR_ISR);
}

