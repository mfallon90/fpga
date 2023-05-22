# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "P_DEPTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "P_MY_MAC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "P_RESIDUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "P_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.P_DEPTH { PARAM_VALUE.P_DEPTH } {
	# Procedure called to update P_DEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_DEPTH { PARAM_VALUE.P_DEPTH } {
	# Procedure called to validate P_DEPTH
	return true
}

proc update_PARAM_VALUE.P_MY_MAC { PARAM_VALUE.P_MY_MAC } {
	# Procedure called to update P_MY_MAC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_MY_MAC { PARAM_VALUE.P_MY_MAC } {
	# Procedure called to validate P_MY_MAC
	return true
}

proc update_PARAM_VALUE.P_RESIDUE { PARAM_VALUE.P_RESIDUE } {
	# Procedure called to update P_RESIDUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_RESIDUE { PARAM_VALUE.P_RESIDUE } {
	# Procedure called to validate P_RESIDUE
	return true
}

proc update_PARAM_VALUE.P_WIDTH { PARAM_VALUE.P_WIDTH } {
	# Procedure called to update P_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_WIDTH { PARAM_VALUE.P_WIDTH } {
	# Procedure called to validate P_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.P_MY_MAC { MODELPARAM_VALUE.P_MY_MAC PARAM_VALUE.P_MY_MAC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_MY_MAC}] ${MODELPARAM_VALUE.P_MY_MAC}
}

proc update_MODELPARAM_VALUE.P_DEPTH { MODELPARAM_VALUE.P_DEPTH PARAM_VALUE.P_DEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_DEPTH}] ${MODELPARAM_VALUE.P_DEPTH}
}

proc update_MODELPARAM_VALUE.P_WIDTH { MODELPARAM_VALUE.P_WIDTH PARAM_VALUE.P_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_WIDTH}] ${MODELPARAM_VALUE.P_WIDTH}
}

proc update_MODELPARAM_VALUE.P_RESIDUE { MODELPARAM_VALUE.P_RESIDUE PARAM_VALUE.P_RESIDUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_RESIDUE}] ${MODELPARAM_VALUE.P_RESIDUE}
}

