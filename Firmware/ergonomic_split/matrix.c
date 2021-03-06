
#include <stdint.h>
#include <stdbool.h>
#include <avr/io.h>
#include "wait.h"
#include "action_layer.h"
#include "print.h"
#include "debug.h"
#include "util.h"
#include "matrix.h"
#include "debounce.h"
#include "ergonomic_split.h"

/* matrix state(1:on, 0:off) */
extern matrix_row_t matrix[MATRIX_ROWS];      // debounced values
extern matrix_row_t raw_matrix[MATRIX_ROWS];  // raw values

static matrix_row_t read_rows(void);
static void select_col(uint8_t col);

void matrix_init_custom(void) {
   init_pcal9555();
   for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
      matrix[i] = 0;
   }
   
}

bool matrix_scan_custom(matrix_row_t current_matrix[]) {
   bool changed = false;
   
   // Drive column, read rows
   for (uint8_t i = 0; i < MATRIX_ROWS_PER_SIDE; i++) {
      matrix_row_t last_row_value = matrix[i];
      
      select_col(i);
      wait_ms(1);
      matrix_row_t current_row_value = read_rows();
      changed = (current_row_value != last_row_value);
      if (changed) {
         uprintf("Changed: %d, %d\n", i, current_row_value);
      }
      matrix[i] = current_row_value;
   }
   return changed;
}

static void select_col(uint8_t col) {
   uint8_t col_write = ~(1 << col);
   // Set left side
   i2c_start(ADDR_PCAL9555_SLAVE_LEFT_WRITE, PCAL9555_TIMEOUT);
   i2c_write(ADDR_PCAL9555_OUTPUT1, PCAL9555_TIMEOUT);
   i2c_write(col_write, PCAL9555_TIMEOUT);
   i2c_stop();
   
   // wait_ms(1);
   
   // Set right side
   
}

static matrix_row_t read_rows(void) {
   // uint8_t row_data = 0;
   uint8_t row_data[1];
   
   // i2c_start(ADDR_PCAL9555_SLAVE_LEFT_READ, PCAL9555_TIMEOUT);
   // i2c_write(ADDR_PCAL9555_INPUT0, PCAL9555_TIMEOUT);
   // uint8_t row_data = ~(uint8_t)i2c_read_nack(PCAL9555_TIMEOUT);
   // row_data = ~((uint8_t)i2c_status);
   // i2c_stop();
   
   i2c_status = i2c_readReg(ADDR_PCAL9555_SLAVE_LEFT_WRITE, ADDR_PCAL9555_INPUT0, row_data, 1, PCAL9555_TIMEOUT);
   /*
   if (i2c_status == I2C_STATUS_ERROR) {
      print("i2c error\n");
   }
   else if (i2c_status == I2C_STATUS_TIMEOUT) {
      print("i2c timeout\n");
   }
   else if (i2c_status == I2C_STATUS_SUCCESS) {
      print("I2C success\n");
   }
   else {
      print("unknown i2c code\n");
   }
   
   uprintf("Row: %d\n", row_data[0]);
   */
   return ~row_data[0];
}

// DO NOT REMOVE
// Needed for proper wake/sleep
void matrix_power_up(void) {
   // mcp23018_status = init_mcp23018();
   init_pcal9555();

   //  unselect_rows();
   //  init_cols();

   // initialize matrix state: all keys off
   for (uint8_t i=0; i < MATRIX_ROWS; i++) {
      matrix[i] = 0;
   }

}
