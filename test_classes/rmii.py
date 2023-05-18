

import random
import cocotb
import logging
from cocotb.clock import Clock
from cocotb.queue import Queue
from cocotb.triggers import Timer, RisingEdge, ClockCycles, First, Combine, FallingEdge

class RmiiMonitor():
    def __init__(self, clk, rx, baud=9600, bits=8, stop=1, parity=None, sb=None):
        '''
        Initializes Monitor

        :param clk: dut clock
        :param tx: dut uart_rx signal
        :param baud: Desired baud rate. Default is 9600
        :param bits: number of bits in word. Default is 8
        :param stop: number of stop bits. Default is 1
        :param parity: parity bit, 1 for even, 2 for odd. Default is none
        :param sb: scoreboard object (cocotb.queue.Queue()) Default is none
        '''
        self.clk = clk
        self.rx = rx
        self.baud = baud
        self.bits =bits
        self.stop = stop
        self.parity = parity
        self.sb = sb
        self.bit_prd = int(1e9/self.baud)

    async def uart_get(self):
        data = 0

        # Wait for start bit to begin
        if self.rx != 0:
            await FallingEdge(self.rx)
            
        # Wait for start bit to end
        await Timer(self.bit_prd, units='ns')

        for i in range(self.bits):
            # Wait till halfway through bit
            await Timer(self.bit_prd/2, units='ns')
            if self.rx == 1: 
                data = ((2**i)) + data
            await Timer(self.bit_prd/2, units='ns')

        if self.parity == 1:
            # Wait till halfway through bit
            await Timer(self.bit_prd/2, units='ns')
            if (self.rx != even_parity(data)):
                self.log.info(f'Parity error on word {word}')
            await Timer(self.bit_prd/2, units='ns')
        elif self.parity == 2:
            await Timer(self.bit_prd/2, units='ns')
            if (self.rx != odd_parity(data)):
                self.log.info(f'Parity error on word {word}')
            await Timer(self.bit_prd/2, units='ns')

        # Wait for stop bit to end
        for _ in range(self.stop):
            await Timer(self.bit_prd, units='ns')

        return data



class RmiiDriver():
    def __init__(self, clk, tx_data, tx_data_vld):
        '''
        Initializes Driver

        :param clk: dut clock
        :param tx_data: dut rmii rx signal
        :param tx_data_vld: dut rmii rx valid signal
        '''
        self.clk = clk
        self.tx_data = tx_data
        self.tx_data_vld = tx_data_vld

        self.tx_data_vld.value = 0
        self.tx_data.value = 0

    async def send(self, data=None):
        '''
        Method to send RMII data
        :param data: accepts single word or list. Default is single random
        '''

        # If no data is provided, randomize data
        if isinstance(data, list):
            data_list = data

            for nibble in data_list:
                self.tx_data_vld.value = 1
                self.tx_data.value = nibble
                await RisingEdge(self.clk)
                self.tx_data_vld.value = 0
                self.tx_data.value = 0

        else:
            if data==None:
                data_int = random.randint(0,15)

            else:
                data_int = data

            data_reg = data_int

            # Send start bit
            self.tx_data_vld.value = 1
            self.tx_data.value = data_reg
            await RisingEdge(self.clk)
            self.tx_data_vld.value = 0
            self.tx_data.value = 0

            print(data_reg)
        
