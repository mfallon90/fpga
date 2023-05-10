NUM_CHANNELS = 16

CAR_BASE_ADDR   = 0
MOD_BASE_ADDR   = CAR_BASE_ADDR + 4*NUM_CHANNELS
VEL_BASE_ADDR   = MOD_BASE_ADDR + 4*NUM_CHANNELS
CTRL_REG_ADDR   = VEL_BASE_ADDR + 4*NUM_CHANNELS

RC_ATTACK_ADDR  = CTRL_REG_ADDR + 4
RC_DECAY_ADDR   = CTRL_REG_ADDR + 8
RC_RELEASE_ADDR = CTRL_REG_ADDR + 12

CHAN_0_C_ADDR   = CAR_BASE_ADDR + 0
CHAN_1_C_ADDR   = CAR_BASE_ADDR + 4
CHAN_2_C_ADDR   = CAR_BASE_ADDR + 8
CHAN_3_C_ADDR   = CAR_BASE_ADDR + 12
CHAN_4_C_ADDR   = CAR_BASE_ADDR + 16
CHAN_5_C_ADDR   = CAR_BASE_ADDR + 20
CHAN_6_C_ADDR   = CAR_BASE_ADDR + 24
CHAN_7_C_ADDR   = CAR_BASE_ADDR + 28
CHAN_8_C_ADDR   = CAR_BASE_ADDR + 32
CHAN_9_C_ADDR   = CAR_BASE_ADDR + 36
CHAN_10_C_ADDR  = CAR_BASE_ADDR + 40
CHAN_11_C_ADDR  = CAR_BASE_ADDR + 44
CHAN_12_C_ADDR  = CAR_BASE_ADDR + 48
CHAN_13_C_ADDR  = CAR_BASE_ADDR + 52
CHAN_14_C_ADDR  = CAR_BASE_ADDR + 56
CHAN_15_C_ADDR  = CAR_BASE_ADDR + 60

CHAN_0_M_ADDR   = MOD_BASE_ADDR + 0
CHAN_1_M_ADDR   = MOD_BASE_ADDR + 4
CHAN_2_M_ADDR   = MOD_BASE_ADDR + 8
CHAN_3_M_ADDR   = MOD_BASE_ADDR + 12
CHAN_4_M_ADDR   = MOD_BASE_ADDR + 16
CHAN_5_M_ADDR   = MOD_BASE_ADDR + 20
CHAN_6_M_ADDR   = MOD_BASE_ADDR + 24
CHAN_7_M_ADDR   = MOD_BASE_ADDR + 28
CHAN_8_M_ADDR   = MOD_BASE_ADDR + 32
CHAN_9_M_ADDR   = MOD_BASE_ADDR + 36
CHAN_10_M_ADDR  = MOD_BASE_ADDR + 40
CHAN_11_M_ADDR  = MOD_BASE_ADDR + 44
CHAN_12_M_ADDR  = MOD_BASE_ADDR + 48
CHAN_13_M_ADDR  = MOD_BASE_ADDR + 52
CHAN_14_M_ADDR  = MOD_BASE_ADDR + 56
CHAN_15_M_ADDR  = MOD_BASE_ADDR + 60

CHAN_0_V_ADDR   = VEL_BASE_ADDR + 0
CHAN_1_V_ADDR   = VEL_BASE_ADDR + 4
CHAN_2_V_ADDR   = VEL_BASE_ADDR + 8
CHAN_3_V_ADDR   = VEL_BASE_ADDR + 12
CHAN_4_V_ADDR   = VEL_BASE_ADDR + 16
CHAN_5_V_ADDR   = VEL_BASE_ADDR + 20
CHAN_6_V_ADDR   = VEL_BASE_ADDR + 24
CHAN_7_V_ADDR   = VEL_BASE_ADDR + 28
CHAN_8_V_ADDR   = VEL_BASE_ADDR + 32
CHAN_9_V_ADDR   = VEL_BASE_ADDR + 36
CHAN_10_V_ADDR  = VEL_BASE_ADDR + 40
CHAN_11_V_ADDR  = VEL_BASE_ADDR + 44
CHAN_12_V_ADDR  = VEL_BASE_ADDR + 48
CHAN_13_V_ADDR  = VEL_BASE_ADDR + 52
CHAN_14_V_ADDR  = VEL_BASE_ADDR + 56
CHAN_15_V_ADDR  = VEL_BASE_ADDR + 60

CARRIER_ADDR = [CHAN_0_C_ADDR,  CHAN_1_C_ADDR,  CHAN_2_C_ADDR,  CHAN_3_C_ADDR,
                CHAN_4_C_ADDR,  CHAN_5_C_ADDR,  CHAN_6_C_ADDR,  CHAN_7_C_ADDR,
                CHAN_8_C_ADDR,  CHAN_9_C_ADDR,  CHAN_10_C_ADDR, CHAN_11_C_ADDR,
                CHAN_12_C_ADDR, CHAN_13_C_ADDR, CHAN_14_C_ADDR, CHAN_15_C_ADDR]

MODULATOR_ADDR=[CHAN_0_M_ADDR,  CHAN_1_M_ADDR,  CHAN_2_M_ADDR,  CHAN_3_M_ADDR,
                CHAN_4_M_ADDR,  CHAN_5_M_ADDR,  CHAN_6_M_ADDR,  CHAN_7_M_ADDR,
                CHAN_8_M_ADDR,  CHAN_9_M_ADDR,  CHAN_10_M_ADDR, CHAN_11_M_ADDR,
                CHAN_12_M_ADDR, CHAN_13_M_ADDR, CHAN_14_M_ADDR, CHAN_15_M_ADDR]

VELOCITY_ADDR= [CHAN_0_V_ADDR,  CHAN_1_V_ADDR,  CHAN_2_V_ADDR,  CHAN_3_V_ADDR,
                CHAN_4_V_ADDR,  CHAN_5_V_ADDR,  CHAN_6_V_ADDR,  CHAN_7_V_ADDR,
                CHAN_8_V_ADDR,  CHAN_9_V_ADDR,  CHAN_10_V_ADDR, CHAN_11_V_ADDR,
                CHAN_12_V_ADDR, CHAN_13_V_ADDR, CHAN_14_V_ADDR, CHAN_15_V_ADDR]


VELOCITY_INIT   = (0b0100_0000_0000_0000_0100_0000_0000_0000)
CTRL_INIT_SIN   = (0b00_0001_0000_001_0000_01111_01111_01111)
CTRL_INIT_SAW   = (0b01_0001_0000_001_0000_01111_01111_01111)
CTRL_INIT_SQR   = (0b10_0001_0000_001_0000_01111_01111_01111)
CTRL_INIT_TRI   = (0b11_0001_0000_001_0000_01111_01111_01111)

RC_ATTACK_INIT  = 60 << 11
RC_DECAY_INIT   = 60 << 9
RC_RELEASE_INIT = 60 << 9

ON_MASK     = (0b1000_0000_0000_0000_0000_0000_0000_0000)
OFF_MASK    = (0b0111_1111_1111_1111_1111_1111_1111_1111)
NOTE_OFF    = (0b0000_0000_0000_0000_0000_0000_0000_0000)

C0          = (0b0000_0000_0000_1100_1001_1010_0010_1100)
CS0         = (0b0000_0000_0000_1101_0101_1010_0000_0100)
D0          = (0b0000_0000_0000_1110_0010_0101_0100_0000)
DS0         = (0b0000_0000_0000_1110_1111_1100_1001_1000)
E0          = (0b0000_0000_0000_1111_1110_0000_1011_1000)
F0          = (0b0000_0000_0001_0000_1101_0010_0110_1100)
FS0         = (0b0000_0000_0001_0001_1101_0010_1000_0000)
G0          = (0b0000_0000_0001_0010_1110_0001_1100_1100)
GS0         = (0b0000_0000_0001_0100_0000_0001_0011_1100)
A0          = (0b0000_0000_0001_0101_0011_0001_1100_0000)
AS0         = (0b0000_0000_0001_0110_0111_0100_0110_0100)
B0          = (0b0000_0000_0001_0111_1100_1010_0011_0100)
C1          = (0b0000_0000_0001_1001_0011_0100_0101_1000)
CS1         = (0b0000_0000_0001_1010_1011_0100_0000_0100)
D1          = (0b0000_0000_0001_1100_0100_1010_1000_0100)
DS1         = (0b0000_0000_0001_1101_1111_1001_0010_1100)
E1          = (0b0000_0000_0001_1111_1100_0001_0111_0000)
F1          = (0b0000_0000_0010_0001_1010_0100_1101_1000)
FS1         = (0b0000_0000_0010_0011_1010_0100_1111_1100)
G1          = (0b0000_0000_0010_0101_1100_0011_1001_1000)
GS1         = (0b0000_0000_0010_1000_0000_0010_0111_0100)
A1          = (0b0000_0000_0010_1010_0110_0011_1000_0000)
AS1         = (0b0000_0000_0010_1100_1110_1000_1100_0100)
B1          = (0b0000_0000_0010_1111_1001_0100_0110_1000)
C2          = (0b0000_0000_0011_0010_0110_1000_1011_0000)
CS2         = (0b0000_0000_0011_0101_0110_1000_0000_1100)
D2          = (0b0000_0000_0011_1000_1001_0101_0000_0100)
DS2         = (0b0000_0000_0011_1011_1111_0010_0101_1000)
E2          = (0b0000_0000_0011_1111_1000_0010_1110_0100)
F2          = (0b0000_0000_0100_0011_0100_1001_1011_0000)
FS2         = (0b0000_0000_0100_0111_0100_1001_1111_1100)
G2          = (0b0000_0000_0100_1011_1000_0111_0011_0000)
GS2         = (0b0000_0000_0101_0000_0000_0100_1110_1000)
A2          = (0b0000_0000_0101_0100_1100_0111_0000_0100)
AS2         = (0b0000_0000_0101_1001_1101_0001_1000_1000)
B2          = (0b0000_0000_0101_1111_0010_1000_1101_0000)
C3          = (0b0000_0000_0110_0100_1101_0001_0110_0000)
CS3         = (0b0000_0000_0110_1010_1101_0000_0001_0100)
D3          = (0b0000_0000_0111_0001_0010_1010_0000_1100)
DS3         = (0b0000_0000_0111_0111_1110_0100_1011_0000)
E3          = (0b0000_0000_0111_1111_0000_0101_1100_1000)
F3          = (0b0000_0000_1000_0110_1001_0011_0110_0000)
FS3         = (0b0000_0000_1000_1110_1001_0011_1111_1000)
G3          = (0b0000_0000_1001_0111_0000_1110_0110_0000)
GS3         = (0b0000_0000_1010_0000_0000_1001_1101_0100)
A3          = (0b0000_0000_1010_1001_1000_1110_0000_0100)
AS3         = (0b0000_0000_1011_0011_1010_0011_0001_0100)
B3          = (0b0000_0000_1011_1110_0101_0001_1001_1100)
C4          = (0b0000_0000_1100_1001_1010_0010_1100_0000)
CS4         = (0b0000_0000_1101_0101_1010_0000_0010_1000)
D4          = (0b0000_0000_1110_0010_0101_0100_0001_0100)
DS4         = (0b0000_0000_1110_1111_1100_1001_0110_0000)
E4          = (0b0000_0000_1111_1110_0000_1011_1000_1100)
F4          = (0b0000_0001_0000_1101_0010_0110_1100_0100)
FS4         = (0b0000_0001_0001_1101_0010_0111_1111_0000)
G4          = (0b0000_0001_0010_1110_0001_1100_1011_1100)
GS4         = (0b0000_0001_0100_0000_0001_0011_1010_1000)
A4          = (0b0000_0001_0101_0011_0001_1100_0000_1100)
AS4         = (0b0000_0001_0110_0111_0100_0110_0010_1000)
B4          = (0b0000_0001_0111_1100_1010_0011_0011_1000)
C5          = (0b0000_0001_1001_0011_0100_0101_1000_0000)
CS5         = (0b0000_0001_1010_1011_0100_0000_0101_0000)
D5          = (0b0000_0001_1100_0100_1010_1000_0010_1100)
DS5         = (0b0000_0001_1101_1111_1001_0010_1100_0100)
E5          = (0b0000_0001_1111_1100_0001_0111_0001_1000)
F5          = (0b0000_0010_0001_1010_0100_1101_1000_1000)
FS5         = (0b0000_0010_0011_1010_0100_1111_1101_1100)
G5          = (0b0000_0010_0101_1100_0011_1001_0111_1000)
GS5         = (0b0000_0010_1000_0000_0010_0111_0101_0000)
A5          = (0b0000_0010_1010_0110_0011_1000_0001_0100)
AS5         = (0b0000_0010_1100_1110_1000_1100_0101_0000)
B5          = (0b0000_0010_1111_1001_0100_0110_0111_0000)
C6          = (0b0000_0011_0010_0110_1000_1010_1111_1100)
CS6         = (0b0000_0011_0101_0110_1000_0000_1010_0100)
D6          = (0b0000_0011_1000_1001_0101_0000_0101_1000)
DS6         = (0b0000_0011_1011_1111_0010_0101_1000_1000)
E6          = (0b0000_0011_1111_1000_0010_1110_0011_0000)
F6          = (0b0000_0100_0011_0100_1001_1011_0000_1100)
FS6         = (0b0000_0100_0111_0100_1001_1111_1011_1100)
G6          = (0b0000_0100_1011_1000_0111_0010_1111_0000)
GS6         = (0b0000_0101_0000_0000_0100_1110_1010_0000)
A6          = (0b0000_0101_0100_1100_0111_0000_0010_1000)
AS6         = (0b0000_0101_1001_1101_0001_1000_1001_1100)
B6          = (0b0000_0101_1111_0010_1000_1100_1110_0000)
C7          = (0b0000_0110_0100_1101_0001_0101_1111_1100)
CS7         = (0b0000_0110_1010_1101_0000_0001_0100_0100)
D7          = (0b0000_0111_0001_0010_1010_0000_1011_0000)
DS7         = (0b0000_0111_0111_1110_0100_1011_0001_0000)
E7          = (0b0000_0111_1111_0000_0101_1100_0110_0000)
F7          = (0b0000_1000_0110_1001_0011_0110_0001_1000)
FS7         = (0b0000_1000_1110_1001_0011_1111_0111_1000)
G7          = (0b0000_1001_0111_0000_1110_0101_1110_0100)
GS7         = (0b0000_1010_0000_0000_1001_1101_0011_1100)
A7          = (0b0000_1010_1001_1000_1110_0000_0101_0100)
AS7         = (0b0000_1011_0011_1010_0011_0001_0011_1000)
B7          = (0b0000_1011_1110_0101_0001_1001_1100_0100)
C8          = (0b0000_1100_1001_1010_0010_1011_1111_1000)
CS8         = (0b0000_1101_0101_1010_0000_0010_1000_1000)
D8          = (0b0000_1110_0010_0101_0100_0001_0110_0000)
DS8         = (0b0000_1110_1111_1100_1001_0110_0010_0000)
E8          = (0b0000_1111_1110_0000_1011_1000_1100_0000)
F8          = (0b0001_0000_1101_0010_0110_1100_0011_0000)
FS8         = (0b0001_0001_1101_0010_0111_1110_1111_0000)
G8          = (0b0001_0010_1110_0001_1100_1011_1100_0100)
GS8         = (0b0001_0100_0000_0001_0011_1010_0111_1100)
A8          = (0b0001_0101_0011_0001_1100_0000_1010_0100)
AS8         = (0b0001_0110_0111_0100_0110_0010_0111_0100)
B8          = (0b0001_0111_1100_1010_0011_0011_1000_1000)
C9          = (0b0001_1001_0011_0100_0101_0111_1111_0000)
CS9         = (0b0001_1010_1011_0100_0000_0101_0001_0100)
D9          = (0b0001_1100_0100_1010_1000_0010_1011_1100)
DS9         = (0b0001_1101_1111_1001_0010_1100_0011_1100)
E9          = (0b0001_1111_1100_0001_0111_0001_1000_0100)
F9          = (0b0010_0001_1010_0100_1101_1000_0110_0100)
FS9         = (0b0010_0011_1010_0100_1111_1101_1110_0000)
G9          = (0b0010_0101_1100_0011_1001_0111_1000_1000)
GS9         = (0b0010_1000_0000_0010_0111_0100_1111_0100)
A9          = (0b0010_1010_0110_0011_1000_0001_0100_1100)
AS9         = (0b0010_1100_1110_1000_1100_0100_1110_0100)
B9          = (0b0010_1111_1001_0100_0110_0111_0001_0000)
C10         = (0b0011_0010_0110_1000_1010_1111_1110_0000)
CS10        = (0b0011_0101_0110_1000_0000_1010_0010_0100)
D10         = (0b0011_1000_1001_0101_0000_0101_0111_1100)
DS10        = (0b0011_1011_1111_0010_0101_1000_0111_1000)
E10         = (0b0011_1111_1000_0010_1110_0011_0000_0100)
F10         = (0b0100_0011_0100_1001_1011_0000_1100_1000)
FS10        = (0b0100_0111_0100_1001_1111_1011_1100_0000)
G10         = (0b0100_1011_1000_0111_0010_1111_0001_0100)
GS10        = (0b0101_0000_0000_0100_1110_1001_1110_1100)
A10         = (0b0101_0100_1100_0111_0000_0010_1001_0100)
AS10        = (0b0101_1001_1101_0001_1000_1001_1100_1000)
B10         = (0b0101_1111_0010_1000_1100_1110_0010_0000)
C11         = (0b0110_0100_1101_0001_0101_1111_1100_0000)
CS11        = (0b0110_1010_1101_0000_0001_0100_0100_1100)
D11         = (0b0111_0001_0010_1010_0000_1010_1111_1000)
DS11        = (0b0111_0111_1110_0100_1011_0000_1111_0100)
E11         = (0b0111_1111_0000_0101_1100_0110_0000_1100)
F11         = (0b1000_0110_1001_0011_0110_0001_1000_1100)
FS11        = (0b1000_1110_1001_0011_1111_0111_1000_0000)
G11         = (0b1001_0111_0000_1110_0101_1110_0010_0100)
GS11        = (0b1010_0000_0000_1001_1101_0011_1101_0100)
A11         = (0b1010_1001_1000_1110_0000_0101_0010_1100)
AS11        = (0b1011_0011_1010_0011_0001_0011_1001_0100)
B11         = (0b1011_1110_0101_0001_1001_1100_0011_1100)