# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "FREQ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VERSION_HI" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VERSION_LO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VERSION_SUB" -parent ${Page_0}


}

proc update_PARAM_VALUE.FREQ { PARAM_VALUE.FREQ } {
	# Procedure called to update FREQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FREQ { PARAM_VALUE.FREQ } {
	# Procedure called to validate FREQ
	return true
}

proc update_PARAM_VALUE.VERSION_HI { PARAM_VALUE.VERSION_HI } {
	# Procedure called to update VERSION_HI when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VERSION_HI { PARAM_VALUE.VERSION_HI } {
	# Procedure called to validate VERSION_HI
	return true
}

proc update_PARAM_VALUE.VERSION_LO { PARAM_VALUE.VERSION_LO } {
	# Procedure called to update VERSION_LO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VERSION_LO { PARAM_VALUE.VERSION_LO } {
	# Procedure called to validate VERSION_LO
	return true
}

proc update_PARAM_VALUE.VERSION_SUB { PARAM_VALUE.VERSION_SUB } {
	# Procedure called to update VERSION_SUB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VERSION_SUB { PARAM_VALUE.VERSION_SUB } {
	# Procedure called to validate VERSION_SUB
	return true
}


proc update_MODELPARAM_VALUE.VERSION_HI { MODELPARAM_VALUE.VERSION_HI PARAM_VALUE.VERSION_HI } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VERSION_HI}] ${MODELPARAM_VALUE.VERSION_HI}
}

proc update_MODELPARAM_VALUE.VERSION_LO { MODELPARAM_VALUE.VERSION_LO PARAM_VALUE.VERSION_LO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VERSION_LO}] ${MODELPARAM_VALUE.VERSION_LO}
}

proc update_MODELPARAM_VALUE.VERSION_SUB { MODELPARAM_VALUE.VERSION_SUB PARAM_VALUE.VERSION_SUB } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VERSION_SUB}] ${MODELPARAM_VALUE.VERSION_SUB}
}

proc update_MODELPARAM_VALUE.FREQ { MODELPARAM_VALUE.FREQ PARAM_VALUE.FREQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FREQ}] ${MODELPARAM_VALUE.FREQ}
}

