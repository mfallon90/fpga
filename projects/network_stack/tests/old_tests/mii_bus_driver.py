from collections import deque
from typing import Iterable, Tuple, Any, Optional, Callable

import cocotb
from cocotb.decorators import coroutine
from cocotb.triggers import (Event, RisingEdge, ReadOnly, NextTimeStep,
                             Edge)
from cocotb.log import SimLog
from cocotb.handle import SimHandleBase

from cocotb_bus.drivers import BusDriver
from cocotb_bus import Bus


sig = ['data', 'dv', 'er', 'col', 'crs']
opt_sig = ['er', 'col', 'crs']

mii_rx_bus = Bus('dut', 'eth_rx', sig, opt_sig)


class MiiDriver(BusDriver):
    """Ethernet Driver using MII interface"""

    _signals = ['data', 'data_valid', 'error', 'collision', 'crs']

    def __init__(self, entity, name, clock, **kwargs):
        BusDriver.__init(self, entity, name, clock, **kwargs)

