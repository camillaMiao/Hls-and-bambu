set moduleName myproject_axi
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {myproject_axi}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_data float 32 regular {axi_s 0 volatile  { in_r Data } }  }
	{ in_last_V int 1 regular {axi_s 0 volatile  { in_r Last } }  }
	{ out_data float 32 regular {axi_s 1 volatile  { out_r Data } }  }
	{ out_last_V int 1 regular {axi_s 1 volatile  { out_r Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_data", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in.data","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}]} , 
 	{ "Name" : "in_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}]} , 
 	{ "Name" : "out_data", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out.data","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "out_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_r_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_r_TVALID sc_in sc_logic 1 invld 1 } 
	{ in_r_TREADY sc_out sc_logic 1 inacc 1 } 
	{ in_r_TLAST sc_in sc_lv 1 signal 1 } 
	{ out_r_TDATA sc_out sc_lv 32 signal 2 } 
	{ out_r_TVALID sc_out sc_logic 1 outvld 3 } 
	{ out_r_TREADY sc_in sc_logic 1 outacc 3 } 
	{ out_r_TLAST sc_out sc_lv 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_r_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_data", "role": "TA" }} , 
 	{ "name": "in_r_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_last_V", "role": "D" }} , 
 	{ "name": "in_r_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_last_V", "role": "Y" }} , 
 	{ "name": "in_r_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_last_V", "role": "" }} , 
 	{ "name": "out_r_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_data", "role": "TA" }} , 
 	{ "name": "out_r_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_last_V", "role": "D" }} , 
 	{ "name": "out_r_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_last_V", "role": "Y" }} , 
 	{ "name": "out_r_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_last_V", "role": "" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "53", "54", "55", "56", "57", "58", "59", "60", "61"],
		"CDFG" : "myproject_axi",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "45", "EstimateLatencyMax" : "45",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_data", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "out_data", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_last_V", "Type" : "Axis", "Direction" : "O"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_myproject_fu_230", "SubBlockPort" : ["dense_input_V_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "dense_input_V", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dense_input_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52"],
		"CDFG" : "dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_11ns_16s_26_2_0_U1", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U2", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_8ns_16s_24_2_0_U3", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U4", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_7ns_16s_23_2_0_U5", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U6", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9ns_16s_25_2_0_U7", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_8ns_16s_24_2_0_U8", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U9", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9s_16s_25_2_0_U10", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U11", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_11ns_16s_26_2_0_U12", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U13", "Parent" : "2"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U14", "Parent" : "2"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_8ns_16s_24_2_0_U15", "Parent" : "2"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U16", "Parent" : "2"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U17", "Parent" : "2"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9ns_16s_25_2_0_U18", "Parent" : "2"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U19", "Parent" : "2"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U20", "Parent" : "2"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_8ns_16s_24_2_0_U21", "Parent" : "2"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U22", "Parent" : "2"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U23", "Parent" : "2"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9s_16s_25_2_0_U24", "Parent" : "2"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U25", "Parent" : "2"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U26", "Parent" : "2"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U27", "Parent" : "2"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9s_16s_25_2_0_U28", "Parent" : "2"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9ns_16s_25_2_0_U29", "Parent" : "2"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U30", "Parent" : "2"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9ns_16s_25_2_0_U31", "Parent" : "2"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9ns_16s_25_2_0_U32", "Parent" : "2"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9s_16s_25_2_0_U33", "Parent" : "2"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U34", "Parent" : "2"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U35", "Parent" : "2"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U36", "Parent" : "2"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U37", "Parent" : "2"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_8ns_16s_24_2_0_U38", "Parent" : "2"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_7ns_16s_23_2_0_U39", "Parent" : "2"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9s_16s_25_2_0_U40", "Parent" : "2"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9ns_16s_25_2_0_U41", "Parent" : "2"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_8s_16s_24_2_0_U42", "Parent" : "2"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U43", "Parent" : "2"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U44", "Parent" : "2"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_11ns_16s_26_2_0_U45", "Parent" : "2"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9ns_16s_25_2_0_U46", "Parent" : "2"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U47", "Parent" : "2"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_8s_16s_24_2_0_U48", "Parent" : "2"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U49", "Parent" : "2"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U50", "Parent" : "2"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_fpext_32ns_64_3_1_U61", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_ashr_54ns_32ns_54_2_1_U62", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mux_42_16_1_1_U63", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_lshr_32ns_32ns_32_2_1_U64", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_shl_64ns_32ns_64_2_1_U65", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_data_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_last_V_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_data_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	myproject_axi {
		in_data {Type I LastRead 1 FirstWrite -1}
		in_last_V {Type I LastRead 1 FirstWrite -1}
		out_data {Type O LastRead -1 FirstWrite 17}
		out_last_V {Type O LastRead -1 FirstWrite 17}}
	myproject {
		dense_input_V {Type I LastRead 0 FirstWrite -1}}
	dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0 {
		data_V_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "45", "Max" : "45"}
	, {"Name" : "Interval", "Min" : "46", "Max" : "46"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	in_data { axis {  { in_r_TDATA in_data 0 32 } } }
	in_last_V { axis {  { in_r_TVALID in_vld 0 1 }  { in_r_TREADY in_acc 1 1 }  { in_r_TLAST in_data 0 1 } } }
	out_data { axis {  { out_r_TDATA out_data 1 32 } } }
	out_last_V { axis {  { out_r_TVALID out_vld 1 1 }  { out_r_TREADY out_acc 0 1 }  { out_r_TLAST out_data 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName myproject_axi
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {myproject_axi}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_data float 32 regular {axi_s 0 volatile  { in_r Data } }  }
	{ in_last_V int 1 regular {axi_s 0 volatile  { in_r Last } }  }
	{ out_data float 32 regular {axi_s 1 volatile  { out_r Data } }  }
	{ out_last_V int 1 regular {axi_s 1 volatile  { out_r Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_data", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in.data","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}]} , 
 	{ "Name" : "in_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}]} , 
 	{ "Name" : "out_data", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out.data","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "out_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_r_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_r_TVALID sc_in sc_logic 1 invld 1 } 
	{ in_r_TREADY sc_out sc_logic 1 inacc 1 } 
	{ in_r_TLAST sc_in sc_lv 1 signal 1 } 
	{ out_r_TDATA sc_out sc_lv 32 signal 2 } 
	{ out_r_TVALID sc_out sc_logic 1 outvld 3 } 
	{ out_r_TREADY sc_in sc_logic 1 outacc 3 } 
	{ out_r_TLAST sc_out sc_lv 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_r_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_data", "role": "TA" }} , 
 	{ "name": "in_r_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_last_V", "role": "D" }} , 
 	{ "name": "in_r_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_last_V", "role": "Y" }} , 
 	{ "name": "in_r_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_last_V", "role": "" }} , 
 	{ "name": "out_r_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_data", "role": "TA" }} , 
 	{ "name": "out_r_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_last_V", "role": "D" }} , 
 	{ "name": "out_r_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_last_V", "role": "Y" }} , 
 	{ "name": "out_r_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_last_V", "role": "" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "53", "54", "55", "56", "57", "58", "59", "60", "61"],
		"CDFG" : "myproject_axi",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "45", "EstimateLatencyMax" : "45",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_data", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "out_data", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_last_V", "Type" : "Axis", "Direction" : "O"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_myproject_fu_230", "SubBlockPort" : ["dense_input_V_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "dense_input_V", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dense_input_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52"],
		"CDFG" : "dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_11ns_16s_26_2_0_U1", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U2", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_8ns_16s_24_2_0_U3", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U4", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_7ns_16s_23_2_0_U5", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U6", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9ns_16s_25_2_0_U7", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_8ns_16s_24_2_0_U8", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U9", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9s_16s_25_2_0_U10", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U11", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_11ns_16s_26_2_0_U12", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U13", "Parent" : "2"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U14", "Parent" : "2"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_8ns_16s_24_2_0_U15", "Parent" : "2"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U16", "Parent" : "2"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U17", "Parent" : "2"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9ns_16s_25_2_0_U18", "Parent" : "2"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U19", "Parent" : "2"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U20", "Parent" : "2"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_8ns_16s_24_2_0_U21", "Parent" : "2"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U22", "Parent" : "2"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U23", "Parent" : "2"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9s_16s_25_2_0_U24", "Parent" : "2"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U25", "Parent" : "2"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U26", "Parent" : "2"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U27", "Parent" : "2"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9s_16s_25_2_0_U28", "Parent" : "2"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9ns_16s_25_2_0_U29", "Parent" : "2"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U30", "Parent" : "2"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9ns_16s_25_2_0_U31", "Parent" : "2"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9ns_16s_25_2_0_U32", "Parent" : "2"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9s_16s_25_2_0_U33", "Parent" : "2"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U34", "Parent" : "2"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U35", "Parent" : "2"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U36", "Parent" : "2"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U37", "Parent" : "2"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_8ns_16s_24_2_0_U38", "Parent" : "2"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_7ns_16s_23_2_0_U39", "Parent" : "2"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9s_16s_25_2_0_U40", "Parent" : "2"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9ns_16s_25_2_0_U41", "Parent" : "2"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_8s_16s_24_2_0_U42", "Parent" : "2"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U43", "Parent" : "2"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U44", "Parent" : "2"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_11ns_16s_26_2_0_U45", "Parent" : "2"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9ns_16s_25_2_0_U46", "Parent" : "2"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U47", "Parent" : "2"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_8s_16s_24_2_0_U48", "Parent" : "2"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U49", "Parent" : "2"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U50", "Parent" : "2"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_fpext_32ns_64_3_1_U61", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_ashr_54ns_32ns_54_2_1_U62", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mux_42_16_1_1_U63", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_lshr_32ns_32ns_32_2_1_U64", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_shl_64ns_32ns_64_2_1_U65", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_data_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_last_V_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_data_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	myproject_axi {
		in_data {Type I LastRead 1 FirstWrite -1}
		in_last_V {Type I LastRead 1 FirstWrite -1}
		out_data {Type O LastRead -1 FirstWrite 17}
		out_last_V {Type O LastRead -1 FirstWrite 17}}
	myproject {
		dense_input_V {Type I LastRead 0 FirstWrite -1}}
	dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0 {
		data_V_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "45", "Max" : "45"}
	, {"Name" : "Interval", "Min" : "46", "Max" : "46"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	in_data { axis {  { in_r_TDATA in_data 0 32 } } }
	in_last_V { axis {  { in_r_TVALID in_vld 0 1 }  { in_r_TREADY in_acc 1 1 }  { in_r_TLAST in_data 0 1 } } }
	out_data { axis {  { out_r_TDATA out_data 1 32 } } }
	out_last_V { axis {  { out_r_TVALID out_vld 1 1 }  { out_r_TREADY out_acc 0 1 }  { out_r_TLAST out_data 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName myproject_axi
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {myproject_axi}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_data float 32 regular {axi_s 0 volatile  { in_r Data } }  }
	{ in_last_V int 1 regular {axi_s 0 volatile  { in_r Last } }  }
	{ out_data float 32 regular {axi_s 1 volatile  { out_r Data } }  }
	{ out_last_V int 1 regular {axi_s 1 volatile  { out_r Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_data", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in.data","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}]} , 
 	{ "Name" : "in_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}]} , 
 	{ "Name" : "out_data", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out.data","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "out_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_r_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_r_TVALID sc_in sc_logic 1 invld 1 } 
	{ in_r_TREADY sc_out sc_logic 1 inacc 1 } 
	{ in_r_TLAST sc_in sc_lv 1 signal 1 } 
	{ out_r_TDATA sc_out sc_lv 32 signal 2 } 
	{ out_r_TVALID sc_out sc_logic 1 outvld 3 } 
	{ out_r_TREADY sc_in sc_logic 1 outacc 3 } 
	{ out_r_TLAST sc_out sc_lv 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_r_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_data", "role": "TA" }} , 
 	{ "name": "in_r_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_last_V", "role": "D" }} , 
 	{ "name": "in_r_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_last_V", "role": "Y" }} , 
 	{ "name": "in_r_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_last_V", "role": "" }} , 
 	{ "name": "out_r_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_data", "role": "TA" }} , 
 	{ "name": "out_r_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_last_V", "role": "D" }} , 
 	{ "name": "out_r_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_last_V", "role": "Y" }} , 
 	{ "name": "out_r_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_last_V", "role": "" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "53", "54", "55", "56", "57", "58", "59", "60", "61"],
		"CDFG" : "myproject_axi",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "45", "EstimateLatencyMax" : "45",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_data", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "out_data", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_last_V", "Type" : "Axis", "Direction" : "O"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_myproject_fu_230", "SubBlockPort" : ["dense_input_V_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "dense_input_V", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dense_input_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52"],
		"CDFG" : "dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_11ns_16s_26_2_0_U1", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U2", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_8ns_16s_24_2_0_U3", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U4", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_7ns_16s_23_2_0_U5", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U6", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9ns_16s_25_2_0_U7", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_8ns_16s_24_2_0_U8", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U9", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9s_16s_25_2_0_U10", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U11", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_11ns_16s_26_2_0_U12", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U13", "Parent" : "2"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U14", "Parent" : "2"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_8ns_16s_24_2_0_U15", "Parent" : "2"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U16", "Parent" : "2"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U17", "Parent" : "2"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9ns_16s_25_2_0_U18", "Parent" : "2"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U19", "Parent" : "2"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U20", "Parent" : "2"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_8ns_16s_24_2_0_U21", "Parent" : "2"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U22", "Parent" : "2"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U23", "Parent" : "2"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9s_16s_25_2_0_U24", "Parent" : "2"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U25", "Parent" : "2"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U26", "Parent" : "2"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U27", "Parent" : "2"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9s_16s_25_2_0_U28", "Parent" : "2"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9ns_16s_25_2_0_U29", "Parent" : "2"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U30", "Parent" : "2"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9ns_16s_25_2_0_U31", "Parent" : "2"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9ns_16s_25_2_0_U32", "Parent" : "2"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9s_16s_25_2_0_U33", "Parent" : "2"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U34", "Parent" : "2"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U35", "Parent" : "2"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U36", "Parent" : "2"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U37", "Parent" : "2"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_8ns_16s_24_2_0_U38", "Parent" : "2"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_7ns_16s_23_2_0_U39", "Parent" : "2"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9s_16s_25_2_0_U40", "Parent" : "2"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9ns_16s_25_2_0_U41", "Parent" : "2"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_8s_16s_24_2_0_U42", "Parent" : "2"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U43", "Parent" : "2"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U44", "Parent" : "2"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_11ns_16s_26_2_0_U45", "Parent" : "2"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_9ns_16s_25_2_0_U46", "Parent" : "2"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U47", "Parent" : "2"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_8s_16s_24_2_0_U48", "Parent" : "2"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10ns_16s_26_2_0_U49", "Parent" : "2"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_myproject_fu_230.grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26.myproject_axi_mul_10s_16s_26_2_0_U50", "Parent" : "2"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_fpext_32ns_64_3_1_U61", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_ashr_54ns_32ns_54_2_1_U62", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mux_42_16_1_1_U63", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_lshr_32ns_32ns_32_2_1_U64", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_shl_64ns_32ns_64_2_1_U65", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_data_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_last_V_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_data_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	myproject_axi {
		in_data {Type I LastRead 1 FirstWrite -1}
		in_last_V {Type I LastRead 1 FirstWrite -1}
		out_data {Type O LastRead -1 FirstWrite 17}
		out_last_V {Type O LastRead -1 FirstWrite 17}}
	myproject {
		dense_input_V {Type I LastRead 0 FirstWrite -1}}
	dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0 {
		data_V_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "45", "Max" : "45"}
	, {"Name" : "Interval", "Min" : "46", "Max" : "46"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	in_data { axis {  { in_r_TDATA in_data 0 32 } } }
	in_last_V { axis {  { in_r_TVALID in_vld 0 1 }  { in_r_TREADY in_acc 1 1 }  { in_r_TLAST in_data 0 1 } } }
	out_data { axis {  { out_r_TDATA out_data 1 32 } } }
	out_last_V { axis {  { out_r_TVALID out_vld 1 1 }  { out_r_TREADY out_acc 0 1 }  { out_r_TLAST out_data 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
