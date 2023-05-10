from os.path import abspath, join
from cocotb_test.simulator import run


##########################################
##           TEST SETUP                 ##
##########################################

hdl_dir = abspath('../hdl')
top_level = ["eth_preamble", "eth_header"]
module = ["test_preamble", "test_header"]

def test(top, test):
    run(
        verilog_sources=[
            # join(hdl_dir,"mii_rx_fsm.sv")],
            join(hdl_dir,"crc32.sv"),
            join(hdl_dir,"mdio.sv"),
            join(hdl_dir,"axil_slave.sv"),
            join(hdl_dir,"mii_rx.sv"),
            join(hdl_dir,"mii_axil_wrapper.v")],
            # join(hdl_dir,"eth_preamble.sv"),
            # join(hdl_dir,"eth_header.sv")],
        toplevel=top,
        module=test
    )


##########################################
##              RUN TEST                ##
##########################################


if __name__ == "__main__":
    # for top in top_level:
    # test("eth_preamble", "test_preamble")
    # test("eth_header","test_header")
    # test("mdio","test_mdio")
    test("mii_axil_wrapper","test_mii_axil_wrapper")
    # test("crc32_byte","test_crc32_byte")
    # test("crc32","test_crc_generated")
    # test("mii_rx_fsm", "test_mii_rx_fsm")

