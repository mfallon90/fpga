
import random
import zlib
import cocotb
from cocotb.triggers import Timer, Edge, RisingEdge, FallingEdge
from cocotb.clock import Clock
from functions import *
import logging


##########################################
##              TEST BENCH              ##
##########################################

class Sys_Monitor:
    def __init__(self, dut, clk):
        self.dut = dut
        self.clk = clk
        self.dut.sys_rx_byte_rdy.value = 0
    

class Sys_Driver:
    def __init__(self, dut, clk):
        self.dut = dut
        self.clk = clk
        self.dut.sys_tx_byte.value = 0
        self.dut.sys_tx_byte_vld.value = 0
        self.dut.sys_tx_sof.value = 0
        self.dut.sys_tx_eof.value = 0

class MII_Driver:
    def __init__(self, dut, clk):
        self.dut = dut
        self.clk = clk
        self.dut.mii_rx_data.value = 0
        self.dut.mii_rx_dv.value = 0
        self.dut.mii_rx_er.value = 0
        self.dut.mii_rx_col.value = 0
        self.dut.mii_rx_crs.value = 0

    def gen_frame(self, dst=None, src=None, type=None, data=None):
        pkt_len = random.randint(46,1500)
        dst_mac = 'FFFFFFFFFFFF' if dst==None else dst
        src_mac = rand_hex(12) if src==None else src
        type_len = rand_hex(4) if type==None else type
        data_pkt = rand_hex(2*pkt_len) if data==None else data

        crc_hex = dst_mac +src_mac + type_len + data_pkt
        num_bytes = int(len(crc_hex)/2)
        crc_bytes = int(crc_hex,16).to_bytes(num_bytes, 'big')
        crc_out = "%0.8X" % zlib.crc32(crc_bytes)
        crc_rev = crc_out[::-1]
        crc = ''.join([ crc_rev[x:x+2][::-1] for x in range(0, len(crc_rev), 2) ])
        frame = crc_hex + crc
        return frame

class MII_Monitor:
    def __init__(self, dut, clk):
        self.dut = dut
        self.clk = clk

class TB(object):
    def __init__(self,dut):
        self.dut = dut 
        self.log = logging.getLogger('cocotb_tb')
        self.log.setLevel(logging.DEBUG)
        cocotb.start_soon(self.init_tb())

    async def init_tb(self):
        # initalize clock and signals
        await cocotb.start(Clock(self.dut.mii_rx_clk, 14, units='step').start())
        await cocotb.start(Clock(self.dut.mii_tx_clk, 14, units='step').start())
        await cocotb.start(Clock(self.dut.sys_clk, 8, units='step').start())
        await cocotb.start(resetn_dut(self.dut.mii_rx_rst_n, self.dut.mii_rx_clk, 10))
        await cocotb.start(resetn_dut(self.dut.mii_tx_rst_n, self.dut.mii_tx_clk, 10))
        await cocotb.start(resetn_dut(self.dut.sys_rst_n, self.dut.sys_clk, 10))


    # Async system reset function
    async def reset_dut(self):
        await RisingEdge(self.dut.clk)
        await RisingEdge(self.dut.clk)
        await RisingEdge(self.dut.clk)
        self.dut.rst.value = 0
        self.dut._log.info('Reset DUT')


NUM_FRAMES = 3

@cocotb.test()
async def test_mii(dut):
    """Test MII"""

    tb = TB(dut)

    sys_drvr = Sys_Driver(dut, dut.sys_clk)
    sys_mon = Sys_Monitor(dut, dut.sys_clk)
    mii_drvr = MII_Driver(dut, dut.mii_rx_clk)
    mii_mon = MII_Monitor(dut, dut.mii_tx_clk)

    print(mii_drvr.gen_frame())


    # send frames and 
    # for i in range(NUM_FRAMES):
    #     frame = gen_frame()
    #     await send_frame(dut.eth_rx_clk, dut.eth_rx_data, dut.eth_rx_dv, frame)
    #     await RisingEdge(dut.eth_tx_sof)

    #     # await ClockCycles(dut.eth_rx_clk, 100)
    #     await rand_delay(dut.eth_rx_clk, 1, 10)


    await ClockCycles(dut.sys_clk, 300)
    dut._log.info('Test done')
