#include "xparameters.h"
#include "xil_printf.h"
#include "xil_exception.h"
#include "xil_io.h"
#include <stdio.h>


#define WRITE_ADDR BASE_ADDR
#define READ_ADDR BASE_ADDR+4


//Register Base Address
#define BASE_ADDR XPAR_ETH_MAC_0_BASEADDR

int main(void) {

    unsigned int rd_val;
//    unsigned int mdio_cmd;
//
//    unsigned int phy_address = 0;
//    unsigned int reg_address = 0;
//
//    unsigned char phy_addr = 0;
//    unsigned int reg_addr  = 0;
//
//    unsigned int read_op  = 0x60000000;
//    unsigned int write_op = 0x50000000;

    unsigned int TEST = 0x60880000;

    while(1){
    	TEST = 0x60840000;
        Xil_Out32(WRITE_ADDR, TEST);
        rd_val = Xil_In32(READ_ADDR);

        TEST = 0x60880000;
        Xil_Out32(WRITE_ADDR, TEST);
        rd_val = Xil_In32(READ_ADDR);

        TEST = 0x608c0000;
        Xil_Out32(WRITE_ADDR, TEST);
        rd_val = Xil_In32(READ_ADDR);

    }
//        for (phy_addr=0; phy_addr<32; ++phy_addr) {
//            for (reg_addr=0; reg_addr<32; ++reg_addr) {
//                mdio_cmd = 0;
//                phy_address = phy_addr << 23;
//                reg_address = reg_addr << 18;
//                mdio_cmd = read_op | phy_address | reg_address;
//
//
//                Xil_Out32(WRITE_ADDR, TEST);
//                rd_val = Xil_In32(READ_ADDR);
//
//            }
//        }
//    }
return 1;
}

