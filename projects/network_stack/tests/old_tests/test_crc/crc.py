POLYNOMIAL = 0X04C11DB7
# POLYNOMIAL = 0XEDB88320
# # EQUATION, STARTING WITH LSB->MSB
# # THE XOR GATE FOR THE INPUT IS IMPLIED

# CRC15 = "11011011011100010000011001000001"
# J = 4
# class xor_cell:
#     def __init__(self,in_1='0', in_2='0', out='0', num_delays=0, name=None):
#         self.in_1 = in_1
#         self.in_2 = in_2
#         self.num_delays = num_delays
#         self.out  = out
#         self.name = name

# # Represent the original equation to find how many zeros exist between
# crc_num

# list_of_layers = []
# for n in range(15):
#     list_of_cells = []
#     list_of_cells.append(xor_cell(name=str(n) + '.' + str(fold)) for fold in range(J))
#     list_of_layers.append(list_of_cells)


# for layer_idx in range(len(list_of_layers)):
#     for i_idx in range(J):
#         if(layer_idx == 0):
#             list_of_layers[layer_idx][i_idx].in1 = 'x[' + str(i_idx) + ']'

lut = []

for i in range(16):
    crc = i
    for j in range(4):
        crc = (crc >> 1) ^ (-(crc & 1) & POLYNOMIAL)
    
    print(hex(crc))

