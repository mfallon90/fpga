
import random
import zlib
import cocotb
from cocotb.triggers import Timer, Edge, RisingEdge, FallingEdge
from cocotb.clock import Clock
from functions import *


##########################################
##              TEST BENCH              ##
##########################################

NUM_FRAMES = 3

@cocotb.test()
async def test_mii(dut):
    """Test MII"""

    init_mii(dut)

    ## Start system and recieve clocks
    await cocotb.start(Clock(dut.eth_rx_clk, 14, units='step').start())
    await cocotb.start(Clock(dut.eth_tx_clk, 14, units='step').start())
    cocotb.start_soon(Clock(dut.sys_clk, 8, units='step').start())
 
    # reset system and recieve domains
    await cocotb.start(resetn_dut(dut.eth_rx_rst_n, dut.eth_rx_clk, 10))
    await cocotb.start(resetn_dut(dut.eth_tx_rst_n, dut.eth_tx_clk, 10))
    cocotb.start_soon(resetn_dut(dut.sys_rst_n, dut.sys_clk, 10))

    # send frames and 
    dut.eth_tx_byte_rdy.value = 1
    for i in range(NUM_FRAMES):
        frame = gen_frame()
        await send_frame(dut.eth_rx_clk, dut.eth_rx_data, dut.eth_rx_dv, frame)
        await RisingEdge(dut.eth_tx_sof)

        # await ClockCycles(dut.eth_rx_clk, 100)
        await rand_delay(dut.eth_rx_clk, 1, 10)


    await ClockCycles(dut.sys_clk, 3000)
    dut._log.info('Test done')
