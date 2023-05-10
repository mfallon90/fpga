
import random
import cocotb
import zlib
from cocotb.triggers import Timer, Edge, RisingEdge, FallingEdge
from cocotb.clock import Clock
from functions import *


##########################################
##              TEST BENCH              ##
##########################################


@cocotb.test()
async def test_crc_4bit(dut):
    """Test CRC 32"""

    DEST = "FFFFFFFFFFFF"
    SRC  = "047BCB62BF3E"
    TYPE = "0806"
    DATA = "0001080006040001047BCB62BF3EA9FE7EAC000000000000A9FE7EFF"
    PAD  = "000000000000000000000000000000000000"
    CRC  = "CA87D6D7"


    frame = DEST+SRC+TYPE+DATA+PAD
    num_bytes = int(len(frame)/2)
    frame_bytes = int(frame,16).to_bytes(num_bytes, 'big')

    cocotb.start_soon(Clock(dut.clk, 10, units='step').start())

    dut.sof.value = 0
    dut.eof.value = 0
    dut.data_in.value = 0
    dut.crc_en.value = 0
    await resetn_dut(dut.rst_n, dut.clk, 5)

    await ClockCycles(dut.clk, 10)

    await cocotb.start(send_pulse(dut.sof, dut.clk))
    await RisingEdge(dut.clk)
    dut.crc_en.value = 1
    i = 0

    while i < len(frame):

        nibble = frame[i+1]
        int_val = int(nibble,16)
        dut.data_in.value = int_val
        await RisingEdge(dut.clk)

        nibble = frame[i]
        int_val = int(nibble,16)
        dut.data_in.value = int_val
        await RisingEdge(dut.clk)

        i = i+2
        if (i == len(frame)-2):
            await cocotb.start(send_pulse(dut.eof, dut.clk))

    dut.data_in.value = 0
    dut.sof.value = 0

    for _ in range(100):
        await RisingEdge(dut.clk)
        if (dut.crc_q == 0xAC1E9414):
            print('IT WORKS')

    await ClockCycles(dut.clk, 10)

    crc = zlib.crc32(frame_bytes)

    print(hex(crc))

    
    dut._log.info('Test done')
