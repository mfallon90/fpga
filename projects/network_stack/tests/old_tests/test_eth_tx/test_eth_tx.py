
import random
import cocotb
from cocotb.triggers import Timer, Edge, RisingEdge, FallingEdge
from cocotb.clock import Clock
from functions import *


##########################################
##              TEST BENCH              ##
##########################################

DEST = "FFFFFFFFFFFF"
SRC  = "047BCB62BF3E"
TYPE = "0806"
DATA = "0001080006040001047BCB62BF3EA9FE7EAC000000000000A9FE7EFF"

CRC  = "CA87D6D7"

frame = DATA

@cocotb.test()
async def test_eth_tx(dut):
    """Test eth TX FSM"""

    init_eth_tx(dut)

    cocotb.start_soon(Clock(dut.tx_clk, 10, units='step').start())

    await resetn_dut(dut.tx_rst_n, dut.tx_clk, 10)

    dest_mac = int(DEST,16)
    tx_pkt_type = int(TYPE,16)

    dut.tx_dst_mac.value = dest_mac
    dut.tx_pkt_type.value = tx_pkt_type

    # dut.tx_byte_vld.value = 1
    i = 0
    while i < len(frame):
        await cocotb.triggers.RisingEdge(dut.tx_clk)
        dut.tx_byte_vld.value = 1
        byte = frame[i:i+2]
        int_val = int(byte,16)
        dut.tx_byte.value = int_val
        i = i+2
        
    await RisingEdge(dut.tx_clk)
    dut.tx_byte.value = 0
    dut.tx_byte_vld.value = 0


    await ClockCycles(dut.tx_clk, 250)
    
    dut._log.info('Test done')
