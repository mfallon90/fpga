# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "P_BAUD_RATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "P_CLK_FREQ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "P_DEPTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "P_NUM_STOP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "P_PARITY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "P_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.P_BAUD_RATE { PARAM_VALUE.P_BAUD_RATE } {
	# Procedure called to update P_BAUD_RATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_BAUD_RATE { PARAM_VALUE.P_BAUD_RATE } {
	# Procedure called to validate P_BAUD_RATE
	return true
}

proc update_PARAM_VALUE.P_CLK_FREQ { PARAM_VALUE.P_CLK_FREQ } {
	# Procedure called to update P_CLK_FREQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_CLK_FREQ { PARAM_VALUE.P_CLK_FREQ } {
	# Procedure called to validate P_CLK_FREQ
	return true
}

proc update_PARAM_VALUE.P_DEPTH { PARAM_VALUE.P_DEPTH } {
	# Procedure called to update P_DEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_DEPTH { PARAM_VALUE.P_DEPTH } {
	# Procedure called to validate P_DEPTH
	return true
}

proc update_PARAM_VALUE.P_NUM_STOP { PARAM_VALUE.P_NUM_STOP } {
	# Procedure called to update P_NUM_STOP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_NUM_STOP { PARAM_VALUE.P_NUM_STOP } {
	# Procedure called to validate P_NUM_STOP
	return true
}

proc update_PARAM_VALUE.P_PARITY { PARAM_VALUE.P_PARITY } {
	# Procedure called to update P_PARITY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_PARITY { PARAM_VALUE.P_PARITY } {
	# Procedure called to validate P_PARITY
	return true
}

proc update_PARAM_VALUE.P_WIDTH { PARAM_VALUE.P_WIDTH } {
	# Procedure called to update P_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_WIDTH { PARAM_VALUE.P_WIDTH } {
	# Procedure called to validate P_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.P_DEPTH { MODELPARAM_VALUE.P_DEPTH PARAM_VALUE.P_DEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_DEPTH}] ${MODELPARAM_VALUE.P_DEPTH}
}

proc update_MODELPARAM_VALUE.P_WIDTH { MODELPARAM_VALUE.P_WIDTH PARAM_VALUE.P_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_WIDTH}] ${MODELPARAM_VALUE.P_WIDTH}
}

proc update_MODELPARAM_VALUE.P_CLK_FREQ { MODELPARAM_VALUE.P_CLK_FREQ PARAM_VALUE.P_CLK_FREQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_CLK_FREQ}] ${MODELPARAM_VALUE.P_CLK_FREQ}
}

proc update_MODELPARAM_VALUE.P_BAUD_RATE { MODELPARAM_VALUE.P_BAUD_RATE PARAM_VALUE.P_BAUD_RATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_BAUD_RATE}] ${MODELPARAM_VALUE.P_BAUD_RATE}
}

proc update_MODELPARAM_VALUE.P_NUM_STOP { MODELPARAM_VALUE.P_NUM_STOP PARAM_VALUE.P_NUM_STOP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_NUM_STOP}] ${MODELPARAM_VALUE.P_NUM_STOP}
}

proc update_MODELPARAM_VALUE.P_PARITY { MODELPARAM_VALUE.P_PARITY PARAM_VALUE.P_PARITY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_PARITY}] ${MODELPARAM_VALUE.P_PARITY}
}

