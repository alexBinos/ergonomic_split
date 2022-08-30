
#pragma once

#include "config_common.h"

/* USB Device descriptor parameter */
#define VENDOR_ID       0x1234
#define PRODUCT_ID      0x4321
#define DEVICE_VER      0x0000
#define MANUFACTURER    Alex Binos
#define PRODUCT         ergonomic_split

/* key matrix size */
#define MATRIX_ROWS 14
#define MATRIX_ROWS_PER_SIDE 7
#define MATRIX_COLS 6

#define COL_EXPANDED { true, true, true, true, true, true, true, false, false, false, false, false, false, false }
#define MATRIX_ONBOARD_ROW_PINS { 0, 0, 0, 0, 0, 0, 0, B0,  B1,  B2,  B3,  D2,  D3,  C6 }
#define MATRIX_ONBOARD_COL_PINS { F0,  F1,  F4,  F5,  F6,  F7 }
#define DIODE_DIRECTION COL2ROW
#define EXPANDER_COL_REGISTER GPIOB
#define EXPANDER_ROW_REGISTER GPIOA
#define MATRIX_EXPANDER_COL_PINS { 5, 4, 3, 2, 1, 0 }
#define MATRIX_EXPANDER_ROW_PINS { 0, 1, 2, 3, 4, 5, 6 }

#define F_SCL 400000

#define DEBOUNCE 30

#define TAPPING_TOGGLE  1


#define TAPPING_TERM    200
#define IGNORE_MOD_TAP_INTERRUPT // this makes it possible to do rolling combos (zx) with keys that convert to other keys on hold (z becomes ctrl when you hold it, and when this option isn't enabled, z rapidly followed by x actually sends Ctrl-x. That's bad.)

/* Mechanical locking support. Use KC_LCAP, KC_LNUM or KC_LSCR instead in keymap */
// #define LOCKING_SUPPORT_ENABLE
/* Locking resynchronize hack */
// #define LOCKING_RESYNC_ENABLE

/* RGB array */
#define RGB_DI_PIN B6
#define RGBLIGHT_ANIMATIONS
#define RGBLIGHT_HUE_STEP 8
#define RGBLIGHT_SAT_STEP 8
#define RGBLIGHT_VAL_STEP 8
#define RGBLIGHT_LIMIT_VAL 128      // Half brightness to save power
#define RGBLIGHT_DEFAULT_MODE RGBLIGHT_MODE_STATIC_LIGHT

/* Caps LED (active low) */
#define LED_CAPS_LOCK_PIN E6
#define LED_PIN_ON_STATE 0

#define NO_ACTION_MACRO
#define NO_ACTION_FUNCTION
