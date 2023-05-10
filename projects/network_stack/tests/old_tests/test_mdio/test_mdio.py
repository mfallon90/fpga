
import random
import cocotb
from cocotb.triggers import Timer
from cocotb.clock import Clock
from functions import *


##########################################
##              TEST BENCH              ##
##########################################


MAX_COV = 10

@cocotb.test()
async def test_mdio(dut):
    """Test MDIO"""

    init_mdio(dut)

    cocotb.start_soon(Clock(dut.sys_clk, 10, units='step').start())

    await resetn_dut(dut.rst_n, dut.sys_clk, 10)

    await ClockCycles(dut.sys_clk, 100)

    write_data  = 0x5bcd1234

    dut.phy_reg.value = write_data

    await ClockCycles(dut.sys_clk, 10)

    await send_pulse(dut.en, dut.sys_clk)

    await ClockCycles(dut.sys_clk, 1000)
    
    dut._log.info('Test done')
