

#pragma once

#include "quantum.h"
#include <stdint.h>
#include <stdbool.h>
#include "i2c_master.h"

#if defined(KEYBOARD_ergodox_ez_glow)
#    include "glow.h"
#elif defined(KEYBOARD_ergodox_ez_shine)
#    include "shine.h"
#endif

// IO expander addresses
#define ADDR_PCAL9555_SLAVE_LEFT            0x22
#define ADDR_PCAL9555_SLAVE_LEFT_READ       ((ADDR_PCAL9555_SLAVE_LEFT << 1) | 0x01)
#define ADDR_PCAL9555_SLAVE_LEFT_WRITE      ((ADDR_PCAL9555_SLAVE_LEFT << 1) & ~(0x01))
#define ADDR_PCAL9555_SLAVE_RIGHT           0x25
#define ADDR_PCAL9555_SLAVE_RIGHT_READ       ((ADDR_PCAL9555_SLAVE_RIGHT << 1) | 0x01)
#define ADDR_PCAL9555_SLAVE_RIGHT_WRITE      ((ADDR_PCAL9555_SLAVE_RIGHT << 1) & ~(0x01))

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

uint8_t init_pcal9555(void);





// I2C aliases and register addresses (see "mcp23018.md")
#define I2C_ADDR        0b0100000
#define I2C_ADDR_WRITE  ( (I2C_ADDR<<1) | I2C_WRITE )
#define I2C_ADDR_READ   ( (I2C_ADDR<<1) | I2C_READ  )
#define IODIRA          0x00            // i/o direction register
#define IODIRB          0x01
#define GPPUA           0x0C            // GPIO pull-up resistor register
#define GPPUB           0x0D
#define GPIOA           0x12            // general purpose i/o port register (write modifies OLAT)
#define GPIOB           0x13
#define OLATA           0x14            // output latch register
#define OLATB           0x15

extern i2c_status_t mcp23018_status;
#define ERGODOX_EZ_I2C_TIMEOUT 1000

void init_ergodox(void);
// uint8_t init_mcp23018(void);

#ifndef LED_BRIGHTNESS_LO
#define LED_BRIGHTNESS_LO       15
#endif
#ifndef LED_BRIGHTNESS_HI
#define LED_BRIGHTNESS_HI       255
#endif

enum ergodox_ez_keycodes {
    LED_LEVEL = SAFE_RANGE,
    TOGGLE_LAYER_COLOR,
    EZ_SAFE_RANGE,
};

/*  ---------- LEFT HAND -----------   ---------- RIGHT HAND ---------- */
#define LAYOUT_ergodox_pretty(                                           \
    L00,L01,L02,L03,L04,L05,L06,           R00,R01,R02,R03,R04,R05,R06,  \
    L10,L11,L12,L13,L14,L15,L16,           R10,R11,R12,R13,R14,R15,R16,  \
    L20,L21,L22,L23,L24,L25,                   R21,R22,R23,R24,R25,R26,  \
    L30,L31,L32,L33,L34,L35,L36,           R30,R31,R32,R33,R34,R35,R36,  \
    L40,L41,L42,L43,L44,                           R42,R43,R44,R45,R46,  \
                            L55,L56,   R50,R51,                          \
                                L54,   R52,                              \
                        L53,L52,L51,   R55,R54,R53 )                     \
                                          \
   /* matrix positions */                 \
    {                                     \
    { L00, L10, L20, L30, L40, KC_NO },   \
    { L01, L11, L21, L31, L41, L51 },     \
    { L02, L12, L22, L32, L42, L52 },     \
    { L03, L13, L23, L33, L43, L53 },     \
    { L04, L14, L24, L34, L44, L54 },     \
    { L05, L15, L25, L35, KC_NO, L55 },   \
    { L06, L16, KC_NO, L36, KC_NO, L56 }, \
                                          \
    { R00, R10, KC_NO, R30,KC_NO, R50 },  \
    { R01, R11, R21, R31,KC_NO, R51 },    \
    { R02, R12, R22, R32, R42, R52 },     \
    { R03, R13, R23, R33, R43, R53 },     \
    { R04, R14, R24, R34, R44, R54 },     \
    { R05, R15, R25, R35, R45, R55 },     \
    { R06, R16, R26, R36, R46, KC_NO }    \
    }
