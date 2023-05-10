
import random
import zlib
import cocotb
from cocotb.triggers import Timer, Edge, RisingEdge, FallingEdge
from cocotb.clock import Clock
from functions import *


##########################################
##              TEST BENCH              ##
##########################################

PRE  = '55555555555555D5'

DEST_1 = "FFFFFFFFFFFF"
SRC_1  = "047BCB62BF3E"
TYPE_1 = "0806"
DATA_1 =  "0001080006040001047BCB62BF3EA9FE7EAC000000000000A9FE7EFF"
PAD_1  = "000000000000000000000000000000000000"
CRC_1  = "CA87D6D7"

DEST_2 = "FFFFFFFFFFFF"
SRC_2  = "3417EBCCF0B6"
TYPE_2 = "0806"
DATA_2 =  "00010800060400013417EBCCF0B682BFA092000000000000A9FEA9FE"
PAD_2  = "000000000000000000000000000000000000"
CRC_2  = "9A109231"

frame_1 = PRE+DEST_1+SRC_1+TYPE_1+DATA_1+PAD_1+CRC_1
frame_2 = PRE+DEST_2+SRC_2+TYPE_2+DATA_2+PAD_2+CRC_2

crc_hex = DEST_1+SRC_1+TYPE_1+DATA_1+PAD_1
num_bytes = int(len(crc_hex)/2)
crc_bytes = int(crc_hex,16).to_bytes(num_bytes, 'big')



@cocotb.test()
async def test_mii_rx(dut):
    """Test eth rx FSM"""

    init_eth_rx(dut)

    cocotb.start_soon(Clock(dut.rx_clk, 10, units='step').start())

    await resetn_dut(dut.rx_rst_n, dut.rx_clk, 10)
    
    i = 0
    frame = frame_2
    dut.rx_dv.value = 1
    while i < len(frame):
        await cocotb.triggers.RisingEdge(dut.rx_clk)
        nibble = frame[i+1]
        int_val = int(nibble,16)
        dut.rx_data.value = int_val

        await cocotb.triggers.RisingEdge(dut.rx_clk)
        nibble = frame[i]
        int_val = int(nibble,16)
        dut.rx_data.value = int_val
        i = i+2

    await RisingEdge(dut.rx_clk)
    dut.rx_dv.value = 0


    await ClockCycles(dut.rx_clk, 100)

    x = zlib.crc32(crc_bytes)
    # x = zlib.crc32(crc_bytes,0xffffffff)

    # expected CRC
    # AC1E9414
    # 1010 1100 0001 1110 1001 0100 0001 0100

    # revers the CRC
    # 28297835
    # 0010 1000 0010 1001 0111 1000 0011 0101

    # invert the reversed CRC
    # D7D687CA
    # 1101 0111 1101 0110 1000 0111 1100 1010

    print(hex(x))


    
    dut._log.info('Test done')
