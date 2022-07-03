// Registers and common functions for the PCAL9555 I2C IO expander


#ifndef PCAL9555_H
#define PCAL9555_H


#define ADDR_PCAL9555_INPUT0                0x00    // Input data register
#define ADDR_PCAL9555_INPUT1                0x01    // Input data register
#define ADDR_PCAL9555_OUTPUT0               0x02    // Output data register
#define ADDR_PCAL9555_OUTPUT1               0x03    // Output data register
#define ADDR_PCAL9555_CONF0                 0x06    // Port configuration register
#define ADDR_PCAL9555_CONF1                 0x07    // Port configuration register
#define ADDR_PCAL9555_PUDEN0                0x46    // Pull-up/down enable register
#define ADDR_PCAL9555_PUDEN1                0x47    // Pull-up/down enable register
#define ADDR_PCAL9555_PUD0                  0x48    // Pull-up/down configuration register
#define ADDR_PCAL9555_PUD1                  0x49    // Pull-up/down configuration register

#define PCAL9555_TIMEOUT 100




#endif