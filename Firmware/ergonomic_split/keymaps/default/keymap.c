#include QMK_KEYBOARD_H

enum layers {
   BASE,
   SYMB,
};

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
   [BASE] = LAYOUT(
      KC_EQL   ,  KC_1        ,  KC_2     ,  KC_3     ,  KC_4     ,  KC_5     ,  KC_LEFT  ,        KC_RGHT  ,  KC_6     ,  KC_7     ,  KC_8     ,  KC_9     ,  KC_0           ,  KC_MINS  ,
      KC_DEL   ,  KC_Q        ,  KC_W     ,  KC_E     ,  KC_R     ,  KC_T     ,  KC_NO    ,        KC_NO    ,  KC_Y     ,  KC_U     ,  KC_I     ,  KC_O     ,  KC_P           ,  KC_BSLS  ,
      KC_BSPC  ,  KC_A        ,  KC_S     ,  KC_D     ,  KC_F     ,  KC_G     ,                                KC_H     ,  KC_J     ,  KC_K     ,  KC_L     ,  KC_SCLN        ,  KC_QUOT  ,
      KC_LSFT  ,  CTL_T(KC_Z) ,  KC_X     ,  KC_C     ,  KC_V     ,  KC_B     ,  KC_NO    ,        KC_NO    ,  KC_N     ,  KC_M     ,  KC_COMM  ,  KC_DOT   ,  CTL_T(KC_SLSH) ,  KC_RSFT  ,
      KC_GRV   ,  KC_QUOT     ,  KC_LSFT  ,  KC_LEFT  ,  KC_RGHT  ,                                                        KC_UP    ,  KC_DOWN  ,  KC_LBRC  ,  KC_RBRC        ,  MO(SYMB) ,
                  KC_END      ,  KC_BSPC  ,  KC_SPC   ,  KC_HOME  ,  KC_APP   ,  KC_LGUI  ,        KC_LALT  ,  KC_ESC   ,  KC_PGUP  ,  KC_ENT   ,  KC_TAB   ,  KC_PGDN
   ),
   
   [SYMB] = LAYOUT(
      KC_TRNS  ,  KC_TRNS  ,  KC_TRNS     ,  KC_3     ,  KC_4     ,  KC_5     ,  KC_LEFT  ,        KC_RGHT  ,  KC_6     ,  KC_7     ,  KC_8     ,  KC_9     ,  KC_0           ,  KC_MINS  ,
      KC_TRNS  ,  KC_TRNS  ,  KC_TRNS     ,  KC_E     ,  KC_R     ,  KC_T     ,  KC_NO    ,        KC_NO    ,  KC_Y     ,  KC_U     ,  KC_I     ,  KC_O     ,  KC_P           ,  KC_BSLS  ,
      KC_TRNS  ,  KC_TRNS  ,  KC_TRNS     ,  KC_D     ,  KC_F     ,  KC_G     ,                                KC_H     ,  KC_J     ,  KC_K     ,  KC_L     ,  KC_SCLN        ,  KC_QUOT  ,
      KC_TRNS  ,  KC_TRNS  ,  KC_TRNS     ,  KC_C     ,  KC_V     ,  KC_B     ,  KC_NO    ,        KC_NO    ,  KC_N     ,  KC_M     ,  KC_COMM  ,  KC_DOT   ,  CTL_T(KC_SLSH) ,  KC_RSFT  ,
      KC_TRNS  ,  KC_TRNS  ,  KC_LSFT  ,  KC_LEFT  ,  KC_RGHT  ,                                                        KC_UP    ,  KC_DOWN  ,  KC_LBRC  ,  KC_RBRC        ,  KC_N     ,
                  KC_TRNS  ,  RGB_VAD  ,  RGB_VAI   ,  KC_HOME  ,  RGB_MOD ,  KC_LGUI  ,        KC_LALT  ,  RGB_TOG   ,  KC_PGUP  ,  RGB_HUI   ,  RGB_HUD   ,  KC_PGDN
   )
};
