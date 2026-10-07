set ModuleHierarchy {[{
"Name" : "gemm", "RefName" : "gemm","ID" : "0","Type" : "sequential",
"SubLoops" : [
	{"Name" : "VITIS_LOOP_30_1","RefName" : "VITIS_LOOP_30_1","ID" : "1","Type" : "no",
	"SubLoops" : [
	{"Name" : "VITIS_LOOP_31_2","RefName" : "VITIS_LOOP_31_2","ID" : "2","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_gemm_Pipeline_VITIS_LOOP_33_3_fu_205", "RefName" : "gemm_Pipeline_VITIS_LOOP_33_3","ID" : "3","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_33_3","RefName" : "VITIS_LOOP_33_3","ID" : "4","Type" : "pipeline"},]},]},]},]
}]}