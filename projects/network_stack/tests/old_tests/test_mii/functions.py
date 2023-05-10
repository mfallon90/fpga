import random
import zlib
import cocotb
from cocotbext.axi import AxiLiteBus, AxiLiteMaster
from cocotb.clock import Clock
from cocotb.triggers import Timer, RisingEdge, ClockCycles

PREAMBLE = 0xAA
SFD = 0xAB


######################################################################
##                      RESET FUNCTIONS                             ##
######################################################################

# Async system reset function
async def reset_dut(reset, clk, clock_cycles):
    reset.value = 1
    await ClockCycles(clk, clock_cycles)
    reset.value = 0
    reset._log.debug("Reset complete")

# Async system reset function
async def resetn_dut(reset, clk, clock_cycles):
    reset.value = 0
    await ClockCycles(clk, clock_cycles)
    reset.value = 1
    reset._log.debug("Reset complete")

######################################################################
##                    SIGNAL INITIALIZATION                         ##
######################################################################

def init_mii(self):
    self.eth_tx_byte_rdy.value = 0
    self.eth_rx_data.value = 0
    self.eth_rx_dv.value = 0
    self.eth_rx_er.value = 0
    self.eth_crs.value = 0
    self.eth_col.value = 0


######################################################################
##                       AXI LITE FUNCTIONS                         ##
######################################################################


async def axi_write(axi_master, address, data):
    wr_data = data.to_bytes(4, byteorder = 'little')
    await axi_master.write(address,  wr_data)


######################################################################
##                      UNIVERSAL FUNCTIONS                         ##
######################################################################


async def rand_delay(clk=None, min=None, max=None):
    min_delay = 1 if min == None else min
    max_delay = 100 if min == None else max
    delay = random.randint(min_delay,max_delay)
    await ClockCycles(clk, delay)

async def send_pulse(signal, clk):

    await RisingEdge(clk)
    signal.value = 1
    await RisingEdge(clk)
    signal.value = 0

def rand_hex(size=1):
    hex_values = '0123456789ABCDEF'
    result = []
    for _ in range(size):
        result.append(str(random.choice(hex_values)))
    return "".join(result)


######################################################################
##                       ETHERNET FUNCTIONS                         ##
######################################################################

def gen_frame(dst=None, src=None, type=None, data=None):
    
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

    print(f'{crc[0:2]} {crc[2:4]} {crc[4:6]} {crc[6:8]}')

    return frame


async def send_frame(clk, data, dv, frame):
    i = 0
    dv.value = 1
    preamble = '55555555555555D5'
    tx_frame = preamble + frame
    while i < len(tx_frame):
        await cocotb.triggers.RisingEdge(clk)
        nibble = tx_frame[i+1]
        int_val = int(nibble,16)
        data.value = int_val

        await cocotb.triggers.RisingEdge(clk)
        nibble = tx_frame[i]
        int_val = int(nibble,16)
        data.value = int_val
        i = i+2

    await RisingEdge(clk)
    dv.value = 0
    data.value = 0






