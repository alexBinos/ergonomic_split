#include "quantum.h"
#include "debounce.h"

static const pin_t row_pins[MATRIX_ROWS] = MATRIX_ROW_PINS;
static const pin_t col_pins[MATRIX_COLS] = MATRIX_COL_PINS;

/* matrix state(1:on, 0:off) */
extern matrix_row_t raw_matrix[MATRIX_ROWS];  // raw values
extern matrix_row_t matrix[MATRIX_ROWS];      // debounced values


static void select_col(uint8_t col) {
   
}

static void unselect_col(void) {
   
}

static bool read_rows_on_col(matrix_row_t current_matrix[], uint8_t current_col) {
   bool changed = false;
   return changed;
}

void matrix_init_custom(void) {
   debounce_init(MATRIX_ROWS);
   matrix_init_quantum();
}

bool matrix_scan_custom(void) {
   bool changed = false;
   matrix_scan_quantum();
   return changed;
}
