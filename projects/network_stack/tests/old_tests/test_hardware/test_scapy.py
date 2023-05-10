from scapy.all import *
import random

dst_mac = '00:18:3E:02:52:3A'
broadcast = 'FF:FF:FF:FF:FF:FF'

frame = Ether()/Raw("So yeah, you're gay")
frame.dst = dst_mac
frame.show()

sendp(frame)