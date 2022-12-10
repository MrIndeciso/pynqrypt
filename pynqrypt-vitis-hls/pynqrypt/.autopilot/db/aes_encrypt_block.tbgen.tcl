set moduleName aes_encrypt_block
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {aes_encrypt_block}
set C_modelType { int 128 }
set C_modelArgList {
	{ this_round_keys int 128 regular {array 11 { 1 3 } 1 1 }  }
	{ p_read int 128 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "this_round_keys", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ this_round_keys_address0 sc_out sc_lv 4 signal 0 } 
	{ this_round_keys_ce0 sc_out sc_logic 1 signal 0 } 
	{ this_round_keys_q0 sc_in sc_lv 128 signal 0 } 
	{ p_read sc_in sc_lv 128 signal 1 } 
	{ ap_return sc_out sc_lv 128 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "this_round_keys_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "this_round_keys", "role": "address0" }} , 
 	{ "name": "this_round_keys_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_round_keys", "role": "ce0" }} , 
 	{ "name": "this_round_keys_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "this_round_keys", "role": "q0" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6"],
		"CDFG" : "aes_encrypt_block",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "148", "EstimateLatencyMax" : "148",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_round_keys", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123", "Port" : "this_round_keys", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "crypto_aes_sbox_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137", "Port" : "crypto_aes_sbox_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "1", "SubInstance" : "grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123", "Port" : "crypto_aes_sbox_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "crypto_aes_mul2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123", "Port" : "crypto_aes_mul2_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "crypto_aes_mul3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123", "Port" : "crypto_aes_mul3_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123", "Parent" : "0", "Child" : ["2", "3", "4", "5"],
		"CDFG" : "aes_encrypt_block_Pipeline_loop_aes_encrypt_block",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "92", "EstimateLatencyMax" : "92",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "xor_ln859", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_round_keys", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "state_promoted_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "crypto_aes_sbox_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "crypto_aes_mul2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "crypto_aes_mul3_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "loop_aes_encrypt_block", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123.crypto_aes_sbox_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123.crypto_aes_mul2_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123.crypto_aes_mul3_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "aes_encrypt_block_Pipeline_loop_aes_sub_bytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state_promoted_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "crypto_aes_sbox_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "loop_aes_sub_bytes", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137.crypto_aes_sbox_V_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"}]}


set ArgLastReadFirstWriteLatency {
	aes_encrypt_block {
		this_round_keys {Type I LastRead 5 FirstWrite -1}
		p_read {Type I LastRead 2 FirstWrite -1}
		crypto_aes_sbox_V {Type I LastRead -1 FirstWrite -1}
		crypto_aes_mul2_V {Type I LastRead -1 FirstWrite -1}
		crypto_aes_mul3_V {Type I LastRead -1 FirstWrite -1}}
	aes_encrypt_block_Pipeline_loop_aes_encrypt_block {
		xor_ln859 {Type I LastRead 0 FirstWrite -1}
		this_round_keys {Type I LastRead 1 FirstWrite -1}
		state_promoted_i_out {Type O LastRead -1 FirstWrite 1}
		crypto_aes_sbox_V {Type I LastRead -1 FirstWrite -1}
		crypto_aes_mul2_V {Type I LastRead -1 FirstWrite -1}
		crypto_aes_mul3_V {Type I LastRead -1 FirstWrite -1}}
	aes_encrypt_block_Pipeline_loop_aes_sub_bytes {
		state_promoted_i_reload {Type I LastRead 0 FirstWrite -1}
		t_out {Type O LastRead -1 FirstWrite 1}
		crypto_aes_sbox_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "148", "Max" : "148"}
	, {"Name" : "Interval", "Min" : "148", "Max" : "148"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	this_round_keys { ap_memory {  { this_round_keys_address0 mem_address 1 4 }  { this_round_keys_ce0 mem_ce 1 1 }  { this_round_keys_q0 in_data 0 128 } } }
	p_read { ap_none {  { p_read in_data 0 128 } } }
}
