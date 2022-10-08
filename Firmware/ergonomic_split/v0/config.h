#pragma once

#include "config_common.h"

#define VENDOR_ID          0x1234
#define PRODUCT_ID         0x5678
#define DEVICE_VER         0x0000
#define MANUFACTURER       Alex Binos
#define PRODUCT            ergonomic_split

#define MATRIX_ROWS 7
#define MATRIX_COLS 12
#define MATRIX_COLS_HALF (MATRIX_COLS / 2)

#define DIODE_DIRECTION COL2ROW

#define F_SCL 400000

#define TAPPING_TOGGLE  1

#define RGB_DI_PIN B6
#define RGBLED_NUM 76
#define RGBLIGHT_HUE_STEP 8
#define RGBLIGHT_SAT_STEP 8
#define RGBLIGHT_VAL_STEP 8
#define RGBLIGHT_LIMIT_VAL 32
#define RGBLIGHT_DEFAULT_MODE RGBLIGHT_MODE_STATIC_LIGHT
#define RGBLIGHT_ANIMATIONS

#define LED_CAPS_LOCK_PIN E6
#define LED_PIN_ON_STATE 0