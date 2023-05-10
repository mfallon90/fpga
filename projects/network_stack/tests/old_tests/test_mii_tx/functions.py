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

def init_mii_tx(self):
    self.ila_clk.value = 0
    self.eth_sop.value = 0
    self.eth_eop.value = 0
    self.eth_tx_byte.value = 0
    self.dst_mac.value = 0
    self.pkt_type.value = 0
    self.rx_byte_vld.value = 0


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




