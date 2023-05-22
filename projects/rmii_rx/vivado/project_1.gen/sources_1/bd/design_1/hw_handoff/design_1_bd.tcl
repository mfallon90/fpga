
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# eth_rx_wrapper, rmii_rx, uart_wrapper

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35ticsg324-1L
   set_property BOARD_PART digilentinc.com:arty-a7-35:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set data [ create_bd_port -dir O -from 7 -to 0 data ]
  set data_vld [ create_bd_port -dir O data_vld ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset
  set rmii_col [ create_bd_port -dir I rmii_col ]
  set rmii_crs [ create_bd_port -dir I rmii_crs ]
  set rmii_ref_clk [ create_bd_port -dir O -type clk rmii_ref_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {25000000} \
 ] $rmii_ref_clk
  set rmii_rx_clk [ create_bd_port -dir I -type clk rmii_rx_clk ]
  set rmii_rx_data [ create_bd_port -dir I -from 3 -to 0 rmii_rx_data ]
  set rmii_rx_dv [ create_bd_port -dir I rmii_rx_dv ]
  set rmii_rx_er [ create_bd_port -dir I rmii_rx_er ]
  set rmii_rx_rstn [ create_bd_port -dir O -from 0 -to 0 -type rst rmii_rx_rstn ]
  set sys_clk [ create_bd_port -dir I -type clk -freq_hz 100000000 sys_clk ]
  set_property -dict [ list \
   CONFIG.PHASE {0.000} \
 ] $sys_clk
  set uart_tx [ create_bd_port -dir O uart_tx ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {181.828} \
   CONFIG.CLKOUT1_PHASE_ERROR {104.359} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {25} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {9.125} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {36.500} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz_0

  # Create instance: eth_rx_wrapper_0, and set properties
  set block_name eth_rx_wrapper
  set block_cell_name eth_rx_wrapper_0
  if { [catch {set eth_rx_wrapper_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $eth_rx_wrapper_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_1, and set properties
  set proc_sys_reset_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1 ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $proc_sys_reset_1

  # Create instance: proc_sys_reset_2, and set properties
  set proc_sys_reset_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_2 ]

  # Create instance: rmii_rx, and set properties
  set block_name rmii_rx
  set block_cell_name rmii_rx
  if { [catch {set rmii_rx [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $rmii_rx eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: uart_wrapper_0, and set properties
  set block_name uart_wrapper
  set block_cell_name uart_wrapper_0
  if { [catch {set uart_wrapper_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $uart_wrapper_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.P_DEPTH {8192} \
 ] $uart_wrapper_0

  # Create port connections
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_ports rmii_ref_clk] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins eth_rx_wrapper_0/sys_clk] [get_bd_pins proc_sys_reset_2/slowest_sync_clk] [get_bd_pins uart_wrapper_0/clk]
  connect_bd_net -net eth_rx_wrapper_0_data_for_me [get_bd_pins eth_rx_wrapper_0/data_for_me] [get_bd_pins uart_wrapper_0/data_in]
  connect_bd_net -net eth_rx_wrapper_0_data_for_me_vld [get_bd_ports data] [get_bd_ports data_vld] [get_bd_pins eth_rx_wrapper_0/data_for_me_vld] [get_bd_pins uart_wrapper_0/data_in_vld]
  connect_bd_net -net proc_sys_reset_1_peripheral_aresetn [get_bd_pins eth_rx_wrapper_0/phy_rst_n] [get_bd_pins proc_sys_reset_1/peripheral_aresetn] [get_bd_pins rmii_rx/rx_rst_n]
  connect_bd_net -net proc_sys_reset_2_peripheral_aresetn [get_bd_ports rmii_rx_rstn] [get_bd_pins eth_rx_wrapper_0/sys_rst_n] [get_bd_pins proc_sys_reset_2/peripheral_aresetn] [get_bd_pins uart_wrapper_0/rst_n]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins clk_wiz_0/resetn] [get_bd_pins proc_sys_reset_1/ext_reset_in] [get_bd_pins proc_sys_reset_2/ext_reset_in]
  connect_bd_net -net rmii_col_0_1 [get_bd_ports rmii_col] [get_bd_pins rmii_rx/col]
  connect_bd_net -net rmii_crs_0_1 [get_bd_ports rmii_crs] [get_bd_pins rmii_rx/crs]
  connect_bd_net -net rmii_rx_clk_0_1 [get_bd_ports rmii_rx_clk] [get_bd_pins eth_rx_wrapper_0/phy_clk] [get_bd_pins proc_sys_reset_1/slowest_sync_clk] [get_bd_pins rmii_rx/rx_clk]
  connect_bd_net -net rmii_rx_data_0_1 [get_bd_ports rmii_rx_data] [get_bd_pins rmii_rx/rx_data]
  connect_bd_net -net rmii_rx_dv_0_1 [get_bd_ports rmii_rx_dv] [get_bd_pins rmii_rx/rx_dv]
  connect_bd_net -net rmii_rx_er_0_1 [get_bd_ports rmii_rx_er] [get_bd_pins rmii_rx/rx_er]
  connect_bd_net -net rmii_rx_rx_byte [get_bd_pins eth_rx_wrapper_0/phy_data_in] [get_bd_pins rmii_rx/rx_byte]
  connect_bd_net -net rmii_rx_rx_byte_vld [get_bd_pins eth_rx_wrapper_0/phy_data_in_vld] [get_bd_pins rmii_rx/rx_byte_vld]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clk] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net uart_wrapper_0_uart_tx [get_bd_ports uart_tx] [get_bd_pins uart_wrapper_0/uart_tx]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


