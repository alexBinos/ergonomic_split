#pragma once

#include "config_common.h"

/* USB Device descriptor parameter */
#define VENDOR_ID       0x1234
#define PRODUCT_ID      0x5678
#define DEVICE_VER      0x0000
#define MANUFACTURER    Alex Binos
#define PRODUCT         tkl_keyboard

/* Switch matrix dimensions */
#define MATRIX_ROWS 6
#define MATRIX_COLS 16
#define MATRIX_COL_CONTROL_PINS 6
#define MATRIX_COL_ENABLE_PINS 2

/* Micro controller pins */
#define MATRIX_ROW_PINS { D0, D1, D3, D2, D4, D6 }
#define MATRIX_COL_PINS { B5, B4, D7, E6, B0, B7 }
#define MATRIX_COL_ENABLES { F1, F0 }
#define UNUSED_PINS { E2, F4, F5, F6, F7, C6, C7 }

/* COL2ROW, ROW2COL*/
#define DIODE_DIRECTION ROW2COL

/* RGB array */
#define RGB_DI_PIN B6
#define RGBLED_NUM 102
#define RGBLIGHT_HUE_STEP 8         // HSV steps for animations
#define RGBLIGHT_SAT_STEP 8
#define RGBLIGHT_VAL_STEP 8
#define RGBLIGHT_LIMIT_VAL 128      // Half brightness to save power
#define RGBLIGHT_DEFAULT_MODE RGBLIGHT_MODE_STATIC_LIGHT
#define RGBLIGHT_ANIMATIONS         // For more options see: https://beta.docs.qmk.fm/using-qmk/hardware-features/lighting/feature_rgblight
