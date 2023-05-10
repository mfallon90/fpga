from os.path import abspath, join
from cocotb_test.simulator import run


##########################################
##           TEST SETUP                 ##
##########################################

hdl_dir = abspath('../../hdl')
top = "mii_tx"
modules = ["test_mii_tx"]

def test(top, test):
    run(
        verilog_sources=[
            join(hdl_dir,"mii_tx.sv"),
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


