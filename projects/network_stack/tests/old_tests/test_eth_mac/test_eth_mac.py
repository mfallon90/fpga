
import random
import cocotb
from cocotbext.axi import AxiLiteBus, AxiLiteMaster
from cocotb.clock import Clock
from cocotb.triggers import Timer, RisingEdge, ClockCycles, FallingEdge
from functions import *
import zlib

MAX_PKT_BYTES   = 1500
MIN_PKT_BYTES   = 46

PRE  = '55555555555555D5'
DEST = "FFFFFFFFFFFF"
SRC  = "047BCB62BF3E"
TYPE = "0806"
DATA =  "0001080006040001047BCB62BF3EA9FE7EAC000000000000A9FE7EFF"
PAD  = "000000000000000000000000000000000000"
CRC  = "CA87D6D7"

arp = PRE+DEST+SRC+TYPE+DATA+PAD+CRC
 
##########################################
##              TEST BENCH              ##
##########################################

@cocotb.test()
async def test_eth_mac(dut):
    """Test eth_mac"""

    init_eth_wrapper(dut)

    cocotb.start_soon(Clock(dut.s_axi_aclk, 10, units='step').start())
    cocotb.start_soon(Clock(dut.eth_rx_clk, 10, units='step').start())
    cocotb.start_soon(Clock(dut.eth_tx_clk, 10, units='step').start())

    # Declare axi lite master
    axi_master = AxiLiteMaster(AxiLiteBus.from_prefix(dut, "s_axi"), dut.s_axi_aclk, 
                                dut.s_axi_aresetn, reset_active_level=False)

    await cocotb.start(resetn_dut(dut.eth_rx_rst_n, dut.eth_rx_clk, 10))
    await cocotb.start(resetn_dut(dut.eth_tx_rst_n, dut.eth_tx_clk, 10))
    cocotb.start_soon(resetn_dut(dut.s_axi_aresetn, dut.s_axi_aclk, 10))
    
    length = random.randint(MIN_PKT_BYTES, MAX_PKT_BYTES-1)
    len_hex = f'{length:0>4x}'

    pkt_bits = length*8
    max_int = 2**pkt_bits-1
    min_int = 2**(MIN_PKT_BYTES*8)-1

    pkt_int = random.randint(min_int, max_int)
    pkt_hex = hex(pkt_int)[2:]
    if (len(pkt_hex) != 2*length):
        pkt_hex = '0'+pkt_hex

    await ClockCycles(dut.s_axi_aclk, 15)

    i = 0
    frame = arp
    dut.eth_rx_dv.value = 1
    while i < len(frame):
        await cocotb.triggers.RisingEdge(dut.eth_rx_clk)
        nibble = frame[i+1]
        int_val = int(nibble,16)
        dut.eth_rx_data.value = int_val

        await cocotb.triggers.RisingEdge(dut.eth_rx_clk)
        nibble = frame[i]
        int_val = int(nibble,16)
        dut.eth_rx_data.value = int_val
        i = i+2

    await RisingEdge(dut.s_axi_aclk)
    dut.eth_rx_dv.value = 0
    dut.eth_rx_data.value = 0


    await ClockCycles(dut.s_axi_aclk, 250)

    dut._log.info('Test done')

