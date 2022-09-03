
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
extern matrix_row_t matrix[MATRIX_ROWS + 1];      // debounced values
extern matrix_row_t raw_matrix[MATRIX_ROWS];  // raw values
static matrix_row_t matrix_local[MATRIX_ROWS];

static uint8_t read_rows(uint8_t left);
static void select_col(uint8_t col);

void matrix_init_custom(void) {
   init_pcal9555();
   for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
      matrix[i] = 0;
      matrix_local[i] = 0;
   }
   
}

bool matrix_scan_custom(matrix_row_t current_matrix[]) {
   bool changed = false;
   
   // Drive column, read rows
   for (uint8_t i = 0; i < MATRIX_ROWS + 1; i++) {
      matrix_row_t last_row = matrix[i];
      
      if (i <= MATRIX_ROWS) {
         select_col(i % 7);
         wait_ms(1);
         matrix_row_t current_row = read_rows(i < 7);
         changed = (current_row != last_row);
         if (changed) {
            matrix[i] = current_row;
            // current_matrix[i] = matrix_local[i];
            uprintf("Changed: i: %d, Last: %d, Current: %d\n", i, last_row, current_row);
            wait_ms(2);
         }
      }
      else {
         changed = false;
         matrix[i] = last_row;
      }
   }
   
   // if (changed) {
      // uprintf("%d\n", current_matrix[13]);
   // }
   
   return changed;
}

static void select_col(uint8_t col) {
   uint8_t col_write = ~(1 << col);
   // Set left side
   i2c_start(ADDR_PCAL9555_SLAVE_LEFT_WRITE, PCAL9555_TIMEOUT);
   i2c_write(ADDR_PCAL9555_OUTPUT1, PCAL9555_TIMEOUT);
   i2c_write(col_write, PCAL9555_TIMEOUT);
   i2c_stop();
   
   // Set right side
   i2c_start(ADDR_PCAL9555_SLAVE_RIGHT_WRITE, PCAL9555_TIMEOUT);
   i2c_write(ADDR_PCAL9555_OUTPUT1, PCAL9555_TIMEOUT);
   i2c_write(col_write, PCAL9555_TIMEOUT);
   i2c_stop();
   
}

static uint8_t read_rows(uint8_t left) {
   uint8_t row_data = 0;
   
   if (left) {
      i2c_status = i2c_readReg(ADDR_PCAL9555_SLAVE_LEFT_WRITE, ADDR_PCAL9555_INPUT0, &row_data, 1, PCAL9555_TIMEOUT);
   }
   else {
      i2c_status = i2c_readReg(ADDR_PCAL9555_SLAVE_RIGHT_WRITE, ADDR_PCAL9555_INPUT0, &row_data, 1, PCAL9555_TIMEOUT);
   }
   
   if ((i2c_status == I2C_STATUS_ERROR) || (i2c_status == I2C_STATUS_TIMEOUT)) {
      row_data = 0xFF;
   }
   
   return ~row_data;
}

// DO NOT REMOVE
// Needed for proper wake/sleep
void matrix_power_up(void) {
   // mcp23018_status = init_mcp23018();
   init_pcal9555();

   //  unselect_rows();
   //  init_cols();

   // initialize matrix state: all keys off
   // for (uint8_t i=0; i < MATRIX_ROWS; i++) {
      // matrix[i] = 0;
   // }

}
