
import random
import cocotb
import logging
from cocotb.clock import Clock
from cocotb.queue import Queue
from cocotb.triggers import Timer, RisingEdge, ClockCycles, First, Combine, FallingEdge

NUM_BITS    = int(cocotb.top.P_NUM_BITS)
CLK_FREQ    = int(cocotb.top.P_CLK_FREQ)
BAUD_RATE   = int(cocotb.top.P_BAUD_RATE)
NUM_STOP    = int(cocotb.top.P_NUM_STOP)
NUM_WORDS   = 10
BIT_PRD     = int(1e9/BAUD_RATE)

CLKS_PER_BIT = int(CLK_FREQ*1000000/BAUD_RATE)
CLK_PRD_ns = int(1000/CLK_FREQ)

class TB():
    def __init__(self, dut):
        self.dut = dut
        self.log = logging.getLogger("cocotb.tb")
        self.log.setLevel(logging.DEBUG)
        self.sb = Queue()
        
        cocotb.start_soon(Clock(dut.clk, CLK_PRD_ns, units='ns').start())

        self.dut.data_in.value = 0
        self.dut.data_in_vld.value = 0

    async def write_word(self):
        for _ in range(NUM_WORDS):
            data_int = random.randint(0, 2**NUM_BITS-1)

            await self.sb.put(data_int)

            if self.dut.data_in_rdy != 1:
                await RisingEdge(self.dut.data_in_rdy)

            self.dut.data_in_vld.value = 1
            self.dut.data_in.value = data_int
            await RisingEdge(self.dut.clk)
            self.dut.data_in_vld.value = 0
            await FallingEdge(self.dut.clk)

    async def get_uart(self):

        for _ in range(NUM_WORDS):
            data = 0

            # Wait for start bit
            if self.dut.uart_tx != 0:
                await FallingEdge(self.dut.uart_tx)
                
            # Wait for start bit
            await Timer(BIT_PRD, units='ns')

            for i in range(NUM_BITS):
                # Wait till halfway through bit
                await Timer(BIT_PRD/2, units='ns')
                if self.dut.uart_tx == 1: 
                    data = ((2**i)) + data
                # self.log.info(f'{str(self.dut.uart_tx)} * 2^{i} = {2**i}, data = {data}')
                await Timer(BIT_PRD/2, units='ns')

            for _ in range(NUM_STOP):
                await Timer(BIT_PRD, units='ns')

            sb_data = await self.sb.get()
            self.log.info(f'Sent {sb_data}, got {data}')
            assert (sb_data == data)


async def cycle_rst_n(rst_n, clk):
    rst_n.setimmediatevalue(0)
    await RisingEdge(clk)
    await RisingEdge(clk)
    rst_n.value = 1
    await RisingEdge(clk)
    await RisingEdge(clk)



 
@cocotb.test()
async def test_uart_transceiver(dut):
    """Test for uart mIDI interface"""

    tb = TB(dut)

    cocotb.start_soon(cycle_rst_n(tb.dut.rst_n, tb.dut.clk))

    await ClockCycles(dut.clk, 1000)

    get_op = cocotb.start_soon(tb.get_uart())
    write_op = cocotb.start_soon(tb.write_word())

    done = Combine(write_op, get_op)
    await First(done, Timer(1500, 'us'))

    dut._log.info('Test done')

