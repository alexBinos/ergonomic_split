

#include "ergonomic_split.h"

bool         i2c_initialized = 0;
i2c_status_t mcp23018_status = 0x20;

uint8_t init_mcp23018(void) {
    mcp23018_status = 0x20;

    if (i2c_initialized == 0) {
        i2c_init();  // on pins D(1,0)
        i2c_initialized = true;
        _delay_ms(1000);
    }

    mcp23018_status = i2c_start(I2C_ADDR_WRITE, ERGODOX_EZ_I2C_TIMEOUT);
    if (mcp23018_status) goto out;
    mcp23018_status = i2c_write(IODIRA, ERGODOX_EZ_I2C_TIMEOUT);
    if (mcp23018_status) goto out;
    mcp23018_status = i2c_write(0b00000000, ERGODOX_EZ_I2C_TIMEOUT);
    if (mcp23018_status) goto out;
    mcp23018_status = i2c_write(0b00111111, ERGODOX_EZ_I2C_TIMEOUT);
    if (mcp23018_status) goto out;
    i2c_stop();

    mcp23018_status = i2c_start(I2C_ADDR_WRITE, ERGODOX_EZ_I2C_TIMEOUT);
    if (mcp23018_status) goto out;
    mcp23018_status = i2c_write(GPPUA, ERGODOX_EZ_I2C_TIMEOUT);
    if (mcp23018_status) goto out;
    mcp23018_status = i2c_write(0b00000000, ERGODOX_EZ_I2C_TIMEOUT);
    if (mcp23018_status) goto out;
    mcp23018_status = i2c_write(0b00111111, ERGODOX_EZ_I2C_TIMEOUT);
    if (mcp23018_status) goto out;

out:
    i2c_stop();

    return mcp23018_status;
}
