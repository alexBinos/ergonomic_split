#ifndef PCAL9555_H
#define PCAL9555_H

#define PCAL9555_SLAVE_ADDR_LEFT          0x22
#define PCAL9555_SLAVE_ADDR_LEFT_READ     ((PCAL9555_SLAVE_ADDR_LEFT << 1) | 0x01)
#define PCAL9555_SLAVE_ADDR_LEFT_WRITE    ((PCAL9555_SLAVE_ADDR_LEFT << 1) & ~0x01)
#define PCAL9555_SLAVE_ADDR_RIGHT         0x25
#define PCAL9555_SLAVE_ADDR_RIGHT_READ    ((PCAL9555_SLAVE_ADDR_RIGHT << 1) | 0x01)
#define PCAL9555_SLAVE_ADDR_RIGHT_WRITE   ((PCAL9555_SLAVE_ADDR_RIGHT << 1) & ~0x01)

#define PCAL9555_ADDR_INPUT0              0x00     // Input data register
#define PCAL9555_ADDR_INPUT1              0x01     // Input data register
#define PCAL9555_ADDR_OUTPUT0             0x02     // Output data register
#define PCAL9555_ADDR_OUTPUT1             0x03     // Output data register
#define PCAL9555_ADDR_CONF0               0x06     // Port configuration register
#define PCAL9555_ADDR_CONF1               0x07     // Port configuration register
#define PCAL9555_ADDR_PUDEN0              0x46     // Pull-up/down enable register
#define PCAL9555_ADDR_PUDEN1              0x47     // Pull-up/down enable register
#define PCAL9555_ADDR_PUD0                0x48     // Pull-up/dowm configuration register
#define PCAL9555_ADDR_PUD1                0x49     // Pull-up/down configuration register

#define PCAL9555_TIMEOUT                  1000



#endif
