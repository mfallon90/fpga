
import random
import cocotb
import logging
import sys
sys.path.append("../../../..")
import test_classes
from cocotb.clock import Clock
from cocotb.queue import Queue
from cocotb.triggers import Timer, RisingEdge, ClockCycles, First, Combine, FallingEdge, with_timeout

RX_PRD = 40
SYS_PRD = 8

NUM_FRAMES = 10
MAX_SIZE = 1500
MAX_DELAY = 5000
IFG = 96

class TB():
    def __init__(self, dut):
        '''
        This function initalizes the testbench, starts the clock
        and sets all input values to their default state

        :param self: Class instance
        :param dut: Top level HDL file
        '''
        self.dut = dut
        self.log = logging.getLogger("cocotb.tb")
        self.log.setLevel(logging.DEBUG)
        self.sb = Queue()

        self.dut.rmii_rx_data.value = 0
        self.dut.rmii_rx_dv.value = 0
        self.dut.rmii_rx_er.value = 0
        self.dut.rmii_crs.value = 0
        self.dut.rmii_col.value = 0

        self.rmii_rx_clk = self.dut.rmii_rx_clk
        self.sys_clk = self.dut.sys_clk

        self.bytes_sent = 0
        self.bytes_rcvd = 0
        self.send_done = False

        self.rmii_driver = test_classes.RmiiDriver(self, dut)

        cocotb.start_soon(Clock(self.rmii_rx_clk, RX_PRD, units='ns').start())
        cocotb.start_soon(Clock(self.sys_clk, SYS_PRD, units='ns').start())

    async def get_data(self):

        # if (self.dut.data_vld != 1):
        #     await First(RisingEdge(self.dut.data_vld), Timer(10, 'us'))

        # while self.dut.data_vld == 1:
        while not ((self.send_done == True) & (self.bytes_rcvd == self.bytes_sent)):

            await FallingEdge(self.sys_clk)

            if (self.dut.data_rdy != 1):
                await First(RisingEdge(self.dut.data_rdy), Timer(1, 'ms'))
                if (self.dut.data_rdy != 1):
                    print('fail point')
                    return

            rd_data = self.dut.data
            await RisingEdge(self.sys_clk)

            sb_data = await with_timeout(self.sb.get(), 10, 'us')
            self.bytes_rcvd += 1

            if rd_data != sb_data:
                self.log.info(f'{int(rd_data)} = {sb_data}')

            assert rd_data == sb_data


async def cycle_rst_n(rst_n, clk):
    rst_n.setimmediatevalue(0)
    await RisingEdge(clk)
    await RisingEdge(clk)
    rst_n.value = 1
    await RisingEdge(clk)
    await RisingEdge(clk)


@cocotb.test()
async def test_wrapper(dut):
    '''Test for rmii receiver'''

    tb = TB(dut)

    cocotb.start_soon(cycle_rst_n(tb.dut.rmii_rx_rst_n, tb.rmii_rx_clk))
    cocotb.start_soon(cycle_rst_n(tb.dut.sys_rst_n, tb.sys_clk))

    await ClockCycles(tb.rmii_rx_clk, 100)

    cocotb.start_soon(tb.rmii_driver.send_rand_frames(NUM_FRAMES, MAX_SIZE, MAX_DELAY))
    read_op = cocotb.start_soon(tb.get_data())
    # trig = Combine(send_op, read_op)

    await First(read_op, Timer(20, units='ms'))

    tb.log.info(f'Sent {tb.bytes_sent}, Got {tb.bytes_rcvd}')

    await ClockCycles(tb.rmii_rx_clk, 100)
    print(tb.send_done)
    dut._log.info('Test done')

