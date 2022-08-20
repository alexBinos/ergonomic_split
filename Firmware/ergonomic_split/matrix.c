
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

static matrix_row_t read_rows(uint8_t left);
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
      matrix_row_t last_left_value = matrix[i];
      matrix_row_t last_right_value = matrix[i + MATRIX_ROWS_PER_SIDE];
      
      matrix_row_t left_row_value;
      matrix_row_t right_row_value;
      
      select_col(i);
      wait_ms(1);
      
      left_row_value = read_rows(1);
      right_row_value = read_rows(0);
      
      changed = (left_row_value != last_left_value) || (right_row_value != last_right_value);
      
      matrix[i] = left_row_value;
      matrix[i + MATRIX_ROWS_PER_SIDE] = right_row_value;
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
   
   // Set right side
   i2c_start(ADDR_PCAL9555_SLAVE_RIGHT_WRITE, PCAL9555_TIMEOUT);
   i2c_write(ADDR_PCAL9555_OUTPUT1, PCAL9555_TIMEOUT);
   i2c_write(col_write, PCAL9555_TIMEOUT);
   i2c_stop();
   
}

static matrix_row_t read_rows(uint8_t left) {
   matrix_row_t row_data = 0;
   
   if (left) {
      i2c_status = i2c_readReg(ADDR_PCAL9555_SLAVE_LEFT_WRITE, ADDR_PCAL9555_INPUT0, &row_data, 1, PCAL9555_TIMEOUT);
   }
   else {
      i2c_status = i2c_readReg(ADDR_PCAL9555_SLAVE_RIGHT_WRITE, ADDR_PCAL9555_INPUT0, &row_data, 1, PCAL9555_TIMEOUT);
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
   for (uint8_t i=0; i < MATRIX_ROWS; i++) {
      matrix[i] = 0;
   }

}
