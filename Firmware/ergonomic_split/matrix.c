
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

static matrix_row_t read_cols(uint8_t row);
static void         init_cols(void);
static void         unselect_rows(void);
static void         select_row(uint8_t row);

static uint8_t mcp23018_reset_loop;

void matrix_init_custom(void) {
    // initialize row and col

    mcp23018_status = init_mcp23018();

    unselect_rows();
    init_cols();
}

// Reads and stores a row, returning
// whether a change occurred.
static inline bool store_raw_matrix_row(uint8_t index) {
    matrix_row_t temp = read_cols(index);
    if (raw_matrix[index] != temp) {
        raw_matrix[index] = temp;
        return true;
    }
    return false;
}

bool matrix_scan_custom(matrix_row_t current_matrix[]) {
    if (mcp23018_status) {  // if there was an error
        if (++mcp23018_reset_loop == 0) {
            print("trying to reset mcp23018\n");
            mcp23018_status = init_mcp23018();
            if (mcp23018_status) {
                print("left side not responding\n");
            } else {
                print("left side attached\n");
            }
        }
    }
    bool changed = false;
    for (uint8_t i = 0; i < MATRIX_ROWS_PER_SIDE; i++) {
        // select rows from left and right hands
        uint8_t left_index  = i;
        uint8_t right_index = i + MATRIX_ROWS_PER_SIDE;
        select_row(left_index);
        select_row(right_index);

        changed |= store_raw_matrix_row(left_index);
        changed |= store_raw_matrix_row(right_index);
        
        if (changed) {
            uprintf("row changed: %u \n", left_index);
        }
        
        unselect_rows();
    }

    return changed;
}

static void init_cols(void) {
    // init on mcp23018
    // not needed, already done as part of init_mcp23018()

    // init on teensy
    setPinInputHigh(F0);
    setPinInputHigh(F1);
    setPinInputHigh(F4);
    setPinInputHigh(F5);
    setPinInputHigh(F6);
    setPinInputHigh(F7);
}

static matrix_row_t read_cols(uint8_t row) {
    if (row < 7) {
        if (mcp23018_status) {  // if there was an error
            return 0;
        } else {
            uint8_t data = 0;
            // reading GPIOB (column port) since in mcp23018's sequential mode
            // it is addressed directly after writing to GPIOA in select_row()
            mcp23018_status = i2c_start(I2C_ADDR_READ, ERGODOX_EZ_I2C_TIMEOUT);    if (mcp23018_status) goto out;
            mcp23018_status = i2c_read_nack(ERGODOX_EZ_I2C_TIMEOUT);               if (mcp23018_status < 0) goto out;
            data            = ~((uint8_t)mcp23018_status);
            mcp23018_status = I2C_STATUS_SUCCESS;
            
            
            
        out:
            i2c_stop();
            return data;
        }
    } else {
        return ~((PINF & 0x03) | ((PINF & 0xF0) >> 2));
    }
}

static void unselect_rows(void) {
    // no need to unselect on mcp23018, because the select step sets all
    // the other row bits high, and it's not changing to a differen
    // direction

    // unselect on teensy
    setPinInput(B0);
    setPinInput(B1);
    setPinInput(B2);
    setPinInput(B3);
    setPinInput(D2);
    setPinInput(D3);
    setPinInput(C6);
}

static void select_row(uint8_t row) {
    if (row < 7) {
        // select on mcp23018
        if (!mcp23018_status) {
            // set active row low  : 0
            // set other rows hi-Z : 1
            mcp23018_status = i2c_start(I2C_ADDR_WRITE, ERGODOX_EZ_I2C_TIMEOUT);        if (mcp23018_status) goto out;
            mcp23018_status = i2c_write(GPIOA, ERGODOX_EZ_I2C_TIMEOUT);                 if (mcp23018_status) goto out;
            mcp23018_status = i2c_write(0xFF & ~(1 << row), ERGODOX_EZ_I2C_TIMEOUT);    if (mcp23018_status) goto out;
            
            // uprintf("Selected row %u \n", row);
            wait_ms(20);
            
        out:
            i2c_stop();
        }
    } else {
        // select on teensy
        // Output low(DDR:1, PORT:0) to select
        switch (row) {
            case 7:
                setPinOutput(B0);
                writePinLow(B0);
                break;
            case 8:
                setPinOutput(B1);
                writePinLow(B1);
                break;
            case 9:
                setPinOutput(B2);
                writePinLow(B2);
                break;
            case 10:
                setPinOutput(B3);
                writePinLow(B3);
                break;
            case 11:
                setPinOutput(D2);
                writePinLow(D2);
                break;
            case 12:
                setPinOutput(D3);
                writePinLow(D3);
                break;
            case 13:
                setPinOutput(C6);
                writePinLow(C6);
                break;
        }
    }
}

// DO NOT REMOVE
// Needed for proper wake/sleep
void matrix_power_up(void) {
    mcp23018_status = init_mcp23018();

    unselect_rows();
    init_cols();

    // initialize matrix state: all keys off
    for (uint8_t i=0; i < MATRIX_ROWS; i++) {
        matrix[i] = 0;
    }

}
