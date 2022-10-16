#include QMK_KEYBOARD_H

enum layers {
   BASE,
   SYMB,
};

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
   [BASE] = LAYOUT(
      KC_EQL   ,  KC_1        ,  KC_2     ,  KC_3     ,  KC_4     ,  KC_5        ,  KC_LEFT  ,        KC_RGHT        ,  KC_6        ,  KC_7     ,  KC_8     ,  KC_9     ,  KC_0           ,  KC_MINS  ,
      KC_DEL   ,  KC_Q        ,  KC_W     ,  KC_E     ,  KC_R     ,  KC_T        ,  KC_HOME  ,        KC_PGUP        ,  KC_Y        ,  KC_U     ,  KC_I     ,  KC_O     ,  KC_P           ,  KC_BSLS  ,
      KC_BSPC  ,  KC_A        ,  KC_S     ,  KC_D     ,  KC_F     ,  KC_G        ,                                      KC_H        ,  KC_J     ,  KC_K     ,  KC_L     ,  KC_SCLN        ,  KC_QUOT  ,
      KC_LSFT  ,  CTL_T(KC_Z) ,  KC_X     ,  KC_C     ,  KC_V     ,  ALT_T(KC_B) ,  KC_END   ,        LGUI_T(KC_PGDN),  ALT_T(KC_N) ,  KC_M     ,  KC_COMM  ,  KC_DOT   ,  CTL_T(KC_SLSH) ,  KC_RSFT  ,
      KC_GRV   ,  KC_QUOT     ,  KC_LSFT  ,  KC_LEFT  ,  KC_RGHT  ,                                                                    KC_UP    ,  KC_DOWN  ,  KC_LBRC  ,  KC_RBRC        ,  TT(SYMB) ,
                  KC_END      ,  KC_BSPC  ,  KC_SPC   ,  KC_HOME  ,  KC_APP      ,  KC_LGUI  ,        KC_LALT        ,  KC_ESC   ,  KC_PGUP  ,  KC_ENT   ,  KC_TAB   ,  KC_PGDN
   ),
   
   [SYMB] = LAYOUT(
      KC_TRNS  ,  KC_F1    ,  KC_F2    ,  KC_F3    ,  KC_F4    ,  KC_F5   ,  KC_F6    ,        KC_F7    ,  KC_F8    ,  KC_F9    ,  KC_F10   ,  KC_F11   ,  KC_F12   ,  KC_TRNS  ,
      KC_TRNS  ,  KC_TRNS  ,  KC_TRNS  ,  KC_TRNS  ,  KC_TRNS  ,  KC_TRNS ,  KC_TRNS  ,        KC_TRNS  ,  KC_7     ,  KC_8     ,  KC_9     ,  KC_PSLS  ,  KC_PMNS  ,  KC_TRNS  ,
      KC_CAPS  ,  KC_TRNS  ,  KC_BTN1  ,  KC_MS_U  ,  KC_BTN2  ,  KC_TRNS ,                                KC_4     ,  KC_5     ,  KC_6     ,  KC_PAST  ,  KC_PPLS  ,  KC_TRNS  ,
      KC_TRNS  ,  KC_TRNS  ,  KC_MS_L  ,  KC_MS_D  ,  KC_MS_R  ,  KC_TRNS ,  KC_TRNS  ,        KC_TRNS  ,  KC_1     ,  KC_2     ,  KC_3     ,  KC_UP    ,  KC_TRNS  ,  KC_TRNS  ,
      KC_TRNS  ,  KC_TRNS  ,  KC_TRNS  ,  KC_TRNS  ,  KC_TRNS  ,                                                       KC_0     ,  KC_LEFT  ,  KC_DOWN  ,  KC_RGHT  ,  KC_TRNS  ,
                  KC_TRNS  ,  RGB_VAD  ,  RGB_VAI  ,  KC_TRNS  ,  RGB_MOD ,  KC_LGUI  ,        KC_TRNS  ,  RGB_TOG  ,  KC_TRNS  ,  RGB_HUI  ,  RGB_HUD  ,  KC_TRNS
   )
};
