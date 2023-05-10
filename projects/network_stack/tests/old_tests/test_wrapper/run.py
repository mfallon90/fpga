from os.path import abspath, join
from cocotb_test.simulator import run


##########################################
##           TEST SETUP                 ##
##########################################

hdl_dir = abspath('../../hdl')
top = "mii_axil_wrapper"
modules = ["test_mii_axil_wrapper"]

def test(top, test):
    run(
        verilog_sources=[
            join(hdl_dir,"mii_axil_wrapper.v"),
            join(hdl_dir,"mdio.sv"),
            join(hdl_dir,"axil_slave.sv"),
            join(hdl_dir,"mii_rx.sv"),
            join(hdl_dir,"crc32.sv")],
        toplevel=top,
        module=test
    )


##########################################
##              RUN TEST                ##
##########################################


if __name__ == "__main__":
    for module in modules:
        test(top, module)
