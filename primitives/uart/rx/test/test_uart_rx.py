
import random
import cocotb
import logging
from cocotb.clock import Clock
from cocotb.queue import Queue
from cocotb.triggers import Timer, RisingEdge, ClockCycles, First, Combine

NUM_BITS    = int(cocotb.top.P_NUM_BITS)
CLK_FREQ    = int(cocotb.top.P_CLK_FREQ)
BAUD_RATE   = int(cocotb.top.P_BAUD_RATE)
NUM_STOP    = int(cocotb.top.P_NUM_STOP)
PARITY      = int(cocotb.top.P_PARITY)
NUM_WORDS   = 4

CLKS_PER_BIT = int(CLK_FREQ*1000000/BAUD_RATE)
CLK_PRD_ns = int(1000/CLK_FREQ)

class TB():
    def __init__(self, dut):
        self.dut = dut
        self.log = logging.getLogger("cocotb.tb")
        self.log.setLevel(logging.DEBUG)
        self.sb = Queue()
        
        cocotb.start_soon(Clock(dut.clk, CLK_PRD_ns, units='ns').start())

        self.dut.uart_rx.value = 1

    async def uart_send(self):
        data_int = random.randint(0, 2**NUM_BITS-1)
        data_reg = data_int

        await self.sb.put(data_int)

        # Send start bit
        self.dut.uart_rx.value = 0
        await Timer(int(1e9/BAUD_RATE), units='ns')

        # Send data bits
        for _ in range(NUM_BITS):
            if (data_int % 2 == 1):
                self.dut.uart_rx.value = 1
            else:
                self.dut.uart_rx.value = 0

            data_int = data_int >> 1
            await Timer(int(1e9/BAUD_RATE), units='ns')

        # Send parity bit
        if PARITY == 1:
            self.dut.uart_rx.value = self.even_parity(data_reg)
            await Timer(int(1e9/BAUD_RATE), units='ns')
        elif PARITY == 2:
            self.dut.uart_rx.value = self.odd_parity(data_reg)
            await Timer(int(1e9/BAUD_RATE), units='ns')

        # Send stop bits
        for _ in range(NUM_STOP):
            self.dut.uart_rx.value = 1
            await Timer(int(1e9/BAUD_RATE), units='ns')


    async def uart_check(self):
        await RisingEdge(self.dut.uart_word_vld)
        uart_word = self.dut.uart_word
        sb_word = await self.sb.get()
        self.log.info(f'Sent {int(sb_word)}, Received {int(uart_word)}')
        assert (uart_word == sb_word)


    def even_parity(self, data):
        str = bin(data)
        if (str.count('1') % 2 == 0):
            return 0
        else:
            return 1


    def odd_parity(self, data):
        str = bin(data)
        if (str.count('1') % 2 == 0):
            return 1
        else:
            return 0


async def cycle_rst_n(rst_n, clk):
    rst_n.setimmediatevalue(0)
    await RisingEdge(clk)
    await RisingEdge(clk)
    rst_n.value = 1
    await RisingEdge(clk)
    await RisingEdge(clk)



 
@cocotb.test()
async def test_uart_rx(dut):
    """Test for uart mIDI interface"""

    tb = TB(dut)

    cocotb.start_soon(cycle_rst_n(tb.dut.rst_n, tb.dut.clk))

    await ClockCycles(dut.clk, 1000)

    for _ in range(NUM_WORDS):
        send_op = cocotb.start_soon(tb.uart_send())
        check_op = cocotb.start_soon(tb.uart_check())
        done = Combine(send_op, check_op)
        await First(done, Timer(500, 'us'))

    await ClockCycles(dut.clk, 1000)
    dut._log.info('Test done')

