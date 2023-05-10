from os.path import abspath, join
from cocotb_test.simulator import run


##########################################
##           TEST SETUP                 ##
##########################################

hdl_dir = abspath('../../hdl/good')
top = "mii_wrapper"
modules = ["test_mii_wrapper"]

def test(top, test):
    run(
        verilog_sources=[
            join(hdl_dir,"mii_wrapper.v"),
            join(hdl_dir,"mii_rx_wrapper.v"),
            join(hdl_dir,"mii_tx_wrapper.v"),
            join(hdl_dir,"mii_rx.sv"),
            join(hdl_dir,"mii_tx.sv"),
            join(hdl_dir,"tx_fifo_wrapper.sv"),
            join(hdl_dir,"rx_fifo_wrapper.sv"),
            join(hdl_dir,"tx_fifo_ctrl.sv"),
            join(hdl_dir,"rx_fifo_ctrl.sv"),
            join(hdl_dir,"fifo_bram.sv"),
            join(hdl_dir,"sync_pulse.sv"),
            join(hdl_dir,"crc32_4bit.sv")],
        toplevel=top,
        module=test
    )


##########################################
##              RUN TEST                ##
##########################################


if __name__ == "__main__":
    for module in modules:
        test(top, module)


