cd ../
set project [file tail [pwd]]
cd vivado/

set target xc7a35ticsg324-1L

create_project $project -part $target -force
set_property BOARD_PART digilentinc.com:arty-a7-35:part0:1.1 [current_project]

add_files -fileset sources_1 ../hdl/

add_files -fileset constrs_1 ../constraints/

update_compile_order -fileset sources_1 -quiet

source ../scripts/block_design.tcl

make_wrapper -files [get_files C:/Users/mfall/Documents/network_stack/vivado/network_stack.srcs/sources_1/bd/block_design/block_design.bd] -top
add_files -norecurse C:/Users/mfall/Documents/network_stack/vivado/network_stack.gen/sources_1/bd/block_design/hdl/block_design_wrapper.v
update_compile_order -fileset sources_1
set_property top block_design_wrapper [current_fileset]

