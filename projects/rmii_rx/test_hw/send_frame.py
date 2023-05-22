from scapy.all import *

# p = Ether()/IP()/TCP()/UDP()/Raw("does this work \r\n")
p = Ether()/Raw("Hello, this is a message from the other side...\r\nDo you know how cool this is?!?!?!?!\r\n")

p.dst = '00:18:3e:02:52:3a'

for _ in range(10):
    sendp(p, iface="Lenovo USB Ethernet")

# p.show()