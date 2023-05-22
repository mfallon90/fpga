cd ../
set project [file tail [pwd]]
cd vivado/

set target xc7z007sclg225-1

create_project $project -part $target -force
set_property BOARD_PART em.avnet.com:minized:part0:1.2 [current_project]

# add files from working directory
add_files -fileset sources_1 ../hdl/

# add async fifo files
add_files -fileset sources_1 ../../../primitives/async_fifo/hdl
add_files -fileset sources_1 ../../../primitives/rmii/hdl
add_files -fileset sources_1 ../../../primitives/crc_8/hdl
add_files -fileset sources_1 ../../../primitives/eth_rx_fsm/hdl
add_files -fileset sources_1 ../../../primitives/fifo/hdl

add_files -fileset constrs_1 ../constraints/

update_compile_order -fileset sources_1 -quiet

source ../scripts/block_design.tcl

# make_wrapper -files [get_files C:/Users/mfall/Documents/School/year_4/senior_design/synth_git/vivado/synth_git.srcs/sources_1/bd/block_design/block_design.bd] -top
make_wrapper -files [get_files C:/Users/mfall/Desktop/sandbox/projects/rmii_rx/vivado/project_1.srcs/sources_1/bd/design_1/design_1.bd] -top
# add_files -norecurse c:/Users/mfall/Documents/School/year_4/senior_design/synth_git/vivado/synth_git.gen/sources_1/bd/block_design/hdl/block_design_wrapper.v
add_files -norecurse C:/Users/mfall/Desktop/sandbox/projects/rmii_rx/vivado/project_1.gen/sources_1/bd/design_1/hdl/design_1_wrapper.v
update_compile_order -fileset sources_1
set_property top block_design_wrapper [current_fileset]