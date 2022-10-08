#include "quantum.h"
#include "debounce.h"
#include "pcal9555.h"
#include "i2c_master.h"

extern matrix_row_t matrix[MATRIX_ROWS];
extern matrix_row_t raw_matrix[MATRIX_ROWS];

static matrix_row_t matrix_local[MATRIX_ROWS];

static matrix_row_t read_rows(void);
static void select_col(uint8_t col);

uint8_t i2c_initialised = 0;
i2c_status_t i2c_status;

void matrix_init_custom(void) {
   
   for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
      matrix[i] = 0;
      raw_matrix[i] = 0;
      matrix_local[i] = 0;
   }
   
   
   if (!i2c_initialised) {
      i2c_init();
      i2c_initialised = 1;
      _delay_ms(1000);
   }
   
   uint8_t i2c_write_data[2];
   
   // Left side port directions
   i2c_write_data[0] = 0xFF; // Rows input
   i2c_write_data[1] = 0x80; // Cols output
   
   // Left side port directions
   i2c_writeReg(PCAL9555_SLAVE_ADDR_LEFT_WRITE, PCAL9555_ADDR_CONF0, i2c_write_data, 2, PCAL9555_TIMEOUT);
   
   // Set cols to inactive state
   i2c_writeReg(PCAL9555_SLAVE_ADDR_LEFT_WRITE, PCAL9555_ADDR_OUTPUT1, i2c_write_data, 1, PCAL9555_TIMEOUT);
   
   // Right side port directions
   i2c_writeReg(PCAL9555_SLAVE_ADDR_RIGHT_WRITE, PCAL9555_ADDR_CONF0, i2c_write_data, 2, PCAL9555_TIMEOUT);
   
   // Set cols to inactive state
   i2c_writeReg(PCAL9555_SLAVE_ADDR_RIGHT_WRITE, PCAL9555_ADDR_OUTPUT1, i2c_write_data, 1, PCAL9555_TIMEOUT);
   
}

bool matrix_scan_custom(matrix_row_t current_matrix[]) {
   bool changed = false;
   
   for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
      matrix_row_t last_row = matrix_local[i];
      
      select_col(i);
      wait_ms(1);
      
      matrix_row_t current_row = read_rows();
      
      if (current_row != last_row) {
         uprintf("col: %u, last: %u, current: %u\n", i, last_row, current_row);
         changed = true;
         matrix[i] = current_row;
      }
      matrix_local[i] = current_row;
   }
   
   // debounce(raw_matrix, matrix, MATRIX_ROWS, changed);
   // matrix_scan_quantum();
   return changed;
}

static matrix_row_t read_rows(void) {
   matrix_row_t row_data = 0;
   uint8_t templ;
   uint8_t tempr;
   
   i2c_status = i2c_readReg(PCAL9555_SLAVE_ADDR_LEFT_WRITE, PCAL9555_ADDR_INPUT0, &templ, 1, PCAL9555_TIMEOUT);
   if ((i2c_status == I2C_STATUS_ERROR) || (i2c_status == I2C_STATUS_TIMEOUT)) {
      uprintf("Left I2C failed. ");
      templ = 0xFF;
   } 
   
   i2c_status = i2c_readReg(PCAL9555_SLAVE_ADDR_RIGHT_WRITE, PCAL9555_ADDR_INPUT0, &tempr, 1, PCAL9555_TIMEOUT);
   if ((i2c_status == I2C_STATUS_ERROR) || (i2c_status == I2C_STATUS_TIMEOUT)) {
      uprintf("Right I2C failed. ");
      tempr = 0xFF;
   } 
   
   templ = ~templ;
   tempr = ~tempr;
   
   row_data = (tempr << 6) + templ;
   
   // if ((templ != 0) || (tempr != 0)) {
      // uprintf("l: %u, r: %u, row: %u\n", templ, tempr, row_data);
   // }
   
   return row_data;
}

static void select_col(uint8_t col) {
   uint8_t col_write = ~(1 << col);
   i2c_writeReg(PCAL9555_SLAVE_ADDR_LEFT_WRITE, PCAL9555_ADDR_OUTPUT1, &col_write, 1, PCAL9555_TIMEOUT);
   i2c_writeReg(PCAL9555_SLAVE_ADDR_RIGHT_WRITE, PCAL9555_ADDR_OUTPUT1, &col_write, 1, PCAL9555_TIMEOUT);
   return;
}
