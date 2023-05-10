import random
import cocotb
from cocotbext.axi import AxiLiteBus, AxiLiteMaster
from cocotb.clock import Clock
from cocotb.triggers import Timer, RisingEdge, ClockCycles

PREAMBLE = 0xAA
SFD = 0xAB

class EthFrame:

    def __init__(self, dest, src, packet, crc):
        self.dest_mac = dest
        self.src_mac = src
        self.length = len(packet)
        self.packet = packet
        self.crc = crc




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

def init_mdio(self):
    self.en.value = 0
    self.phy_reg.value = 0


def init_preamble(self):
    self.data_in.value = 0
    self.frame_done.value = 0


def init_mac_addr(self):
    self.data_in.value = 0
    self.preamble_done.value = 0


def init_mii_rx(self):
    self.rx_data.value = 0
    self.rx_dv.value = 0
    self.rx_er.value = 0
    self.crs.value = 0
    self.col.value = 0


def init_eth_wrapper(self):
    self.eth_rx_data.value = 0
    self.eth_rx_dv.value = 0
    self.eth_rx_err.value = 0
    self.eth_crs.value = 0
    self.eth_col.value = 0


def init_crc32_byte(self):
    self.load_init.value = 0
    self.calc.value = 0
    self.d_valid.value = 0
    self.data_in.value = 0

######################################################################
##                       AXI LITE FUNCTIONS                         ##
######################################################################


async def axi_write(axi_master, address, data):
    wr_data = data.to_bytes(4, byteorder = 'little')
    await axi_master.write(address,  wr_data)


######################################################################
##                      UNIVERSAL FUNCTIONS                         ##
######################################################################


async def send_pulse(signal, clk):

    await RisingEdge(clk)
    signal.value = 1
    await RisingEdge(clk)
    signal.value = 0


######################################################################
##                       ETHERNET FUNCTIONS                         ##
######################################################################

async def send_nibbles(data_str, signal, clk):

    i = 0

    while i < len(data_str):

        nibble = int(data_str[i+1],16)
        await RisingEdge(clk)
        signal.value = nibble

        nibble = int(data_str[i],16)
        await RisingEdge(clk)
        signal.value = nibble

        i = i+2


async def send_bytes(data_str, signal, clk):
    for byte in data_str:
        await RisingEdge(clk)
        signal.value = byte

async def send_preamble(num_bytes, signal, clk):

    preamble_bin = f'{PREAMBLE:0>8b}'
    sfd_bin = f'{SFD:0>8b}'

    print(preamble_bin)
    print(sfd_bin)

    for _ in range(num_bytes):
        for i in range(7, -1, -1):
            await RisingEdge(clk)
            signal.value = int(preamble_bin[i],2)

    for i in range(7, -1, -1):
        await RisingEdge(clk)
        signal.value = int(sfd_bin[i],2)


async def send_mac(mac_addr, signal, clk):

    mac_src_hex = f'{mac_addr:x}'
    mac_src_bin = f'{mac_addr:0>48b}'

    send_data = [mac_src_bin[0:8],   mac_src_bin[8:16],  mac_src_bin[16:24], 
                 mac_src_bin[24:32], mac_src_bin[32:40], mac_src_bin[40:48]]

    for byte in send_data:
        for i in range(len(byte)-1, -1, -1):
            await RisingEdge(clk)
            signal.value = int(byte[i], 2)


async def send_len(length, signal, clk):

    length_hex = f'{length:x}'
    length_bin = f'{length:0>16b}'

    send_data = [length_bin[0:8], length_bin[8:16]]

    for byte in send_data:
        for i in range(len(byte)-1, -1, -1):
            await RisingEdge(clk)
            signal.value = int(byte[i], 2)




