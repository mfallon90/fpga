from os.path import abspath, join
from cocotb_test.simulator import run


##########################################
##           TEST SETUP                 ##
##########################################

curr_dir = abspath('../hdl')
rmii_rx_dir = abspath('../../../primitives/rmii/hdl')
async_fifo_dir = abspath('../../../primitives/async_fifo/hdl')
crc_8_dir = abspath('../../../primitives/crc_8/hdl')
eth_rx_fsm_dir = abspath('../../../primitives/eth_rx_fsm/hdl')
fifo_dir = abspath('../../../primitives/fifo/hdl')

top = "wrapper"
modules = ["test_wrapper"]

def test(top, test):
    run(
        verilog_sources=[
            # project directory
            join(curr_dir,"wrapper.v"),
            join(curr_dir,"fifo_ctrl.sv"),
            join(curr_dir,"buffer.v"),
            join(curr_dir,"eth_decoder.v"),

            # rmii rx directory
            join(rmii_rx_dir,"rmii_rx.sv"),

            # async fifo directory
            join(async_fifo_dir,"async_fifo.v"),
            join(async_fifo_dir,"bin_gry_ctr.v"),
            join(async_fifo_dir,"fifo_bram.v"),

            # crc32 directory
            join(crc_8_dir,"crc_8.sv"),

            # rx fsm directory
            join(eth_rx_fsm_dir,"eth_rx_fsm.sv"),

            # rx fifo directory
            join(fifo_dir,"fifo.v"),
            join(fifo_dir,"modn_counter.v")],

        toplevel=top,
        module=test
    )


##########################################
##              RUN TEST                ##
##########################################


if __name__ == "__main__":
    for module in modules:
        test(top, module)


