// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xgemm.h"

extern XGemm_Config XGemm_ConfigTable[];

#ifdef SDT
XGemm_Config *XGemm_LookupConfig(UINTPTR BaseAddress) {
	XGemm_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XGemm_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XGemm_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XGemm_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XGemm_Initialize(XGemm *InstancePtr, UINTPTR BaseAddress) {
	XGemm_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XGemm_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XGemm_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XGemm_Config *XGemm_LookupConfig(u16 DeviceId) {
	XGemm_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XGEMM_NUM_INSTANCES; Index++) {
		if (XGemm_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XGemm_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XGemm_Initialize(XGemm *InstancePtr, u16 DeviceId) {
	XGemm_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XGemm_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XGemm_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

