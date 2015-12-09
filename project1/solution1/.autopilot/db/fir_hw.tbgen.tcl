set C_TypeInfoList {{ 
"fir_hw" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"input": [[],{ "pointer": "0"}] }, {"res": [[],{ "pointer": "1"}] }],[],""], 
"0": [ "din_t", {"typedef": [[[],"2"],""]}], 
"2": [ "ap_fixed<18, 1, 6, 3, 0>", {"hls_type": {"ap_fixed": [[[[], {"scalar": { "int": 18}}],[[], {"scalar": { "int": 1}}],[[], {"scalar": { "3": 6}}],[[], {"scalar": { "4": 3}}],[[], {"scalar": { "int": 0}}]],""]}}], 
"3": [ "ap_q_mode", {"enum": [[],[],[],""]}], 
"4": [ "ap_o_mode", {"enum": [[],[],[],""]}], 
"1": [ "dout_t", {"typedef": [[[],"5"],""]}], 
"5": [ "ap_fixed<18, 1, 4, 2, 0>", {"hls_type": {"ap_fixed": [[[[], {"scalar": { "int": 18}}],[[], {"scalar": { "int": 1}}],[[], {"scalar": { "3": 4}}],[[], {"scalar": { "4": 2}}],[[], {"scalar": { "int": 0}}]],""]}}]
}}
set moduleName fir_hw
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {fir_hw}
set C_modelType { void 0 }
set C_modelArgList { 
	{ input_V int 18 regular {pointer 0}  }
	{ res_V int 18 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_V", "interface" : "wire", "bitwidth" : 18 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":17,"cElement": [{"cName": "input.V","cData": "int18","bit_use": { "low": 0,"up": 17},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "res_V", "interface" : "wire", "bitwidth" : 18 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":17,"cElement": [{"cName": "res.V","cData": "int18","bit_use": { "low": 0,"up": 17},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 9
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_V sc_in sc_lv 18 signal 0 } 
	{ res_V sc_out sc_lv 18 signal 1 } 
	{ res_V_ap_vld sc_out sc_logic 1 outvld 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_V", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "input_V", "role": "default" }} , 
 	{ "name": "res_V", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "res_V", "role": "default" }} , 
 	{ "name": "res_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_V", "role": "ap_vld" }}  ]}
set Spec2ImplPortList { 
	input_V { ap_none {  { input_V in_data 0 18 } } }
	res_V { ap_vld {  { res_V out_data 1 18 }  { res_V_ap_vld out_vld 1 1 } } }
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
