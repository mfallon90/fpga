from os.path import abspath, join
from cocotb_test.simulator import run


##########################################
##           TEST SETUP                 ##
##########################################

hdl_dir = abspath('../../hdl')
top = "eth_tx"
modules = ["test_eth_tx"]

def test(top, test):
    run(
        verilog_sources=[
            join(hdl_dir,"eth_tx.sv"),
            join(hdl_dir,"tx_send_fsm.sv"),
            join(hdl_dir,"tx_get_fsm.sv"),
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


