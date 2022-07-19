

#include "ergonomic_split.h"

uint8_t i2c_initialsied;
i2c_status_t i2c_status;

uint8_t init_pcal9555(void) {
   if (!i2c_initialsied) {
      print("Initialising...\n");
      i2c_init();
      i2c_initialsied = 0x01;
      _delay_ms(1000);
   }
   
   // Set port directions
   i2c_start(ADDR_PCAL9555_SLAVE_LEFT_WRITE, PCAL9555_TIMEOUT);
   i2c_write(ADDR_PCAL9555_CONF0, PCAL9555_TIMEOUT);
   i2c_write(0xFF, PCAL9555_TIMEOUT); // Rows, input
   i2c_write(0x80, PCAL9555_TIMEOUT); // Cols, output
   i2c_stop();
   
   // Set columns to inactive state
   i2c_start(ADDR_PCAL9555_SLAVE_LEFT_WRITE, PCAL9555_TIMEOUT);
   i2c_write(ADDR_PCAL9555_OUTPUT1, PCAL9555_TIMEOUT);
   i2c_write(0xFF, PCAL9555_TIMEOUT);
   i2c_stop();
   
   // Pull up resistors are enabled by default
   return 0x01;
}
