#include QMK_KEYBOARD_H

enum layers {
   BASE,
};

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
   /* Keymap 0: Basic layer
   *
   * ,--------------------------------------------------.           ,--------------------------------------------------.
   * |   =    |   1  |   2  |   3  |   4  |   5  | LEFT |           | RIGHT|   6  |   7  |   8  |   9  |   0  |   -    |
   * |--------+------+------+------+------+-------------|           |------+------+------+------+------+------+--------|
   * | Del    |   Q  |   W  |   E  |   R  |   T  |  L1  |           |  L1  |   Y  |   U  |   I  |   O  |   P  |   \    |
   * |--------+------+------+------+------+------|      |           |      |------+------+------+------+------+--------|
   * | BkSp   |   A  |   S  |   D  |   F  |   G  |------|           |------|   H  |   J  |   K  |   L  |; / L2|' / Cmd |
   * |--------+------+------+------+------+------| Hyper|           | Meh  |------+------+------+------+------+--------|
   * | LShift |Z/Ctrl|   X  |   C  |   V  |   B  |      |           |      |   N  |   M  |   ,  |   .  |//Ctrl| RShift |
   * `--------+------+------+------+------+-------------'           `-------------+------+------+------+------+--------'
   *   |Grv/L1|  '"  |AltShf| Left | Right|                                       |  Up  | Down |   [  |   ]  | ~L1  |
   *   `----------------------------------'                                       `----------------------------------'
   *                                        ,-------------.       ,-------------.
   *                                        | App  | LGui |       | Alt  |Ctrl/Esc|
   *                                 ,------|------|------|       |------+--------+------.
   *                                 |      |      | Home |       | PgUp |        |      |
   *                                 | Space|Backsp|------|       |------|  Tab   |Enter |
   *                                 |      |ace   | End  |       | PgDn |        |      |
   *                                 `--------------------'       `----------------------'
   */
   [BASE] = LAYOUT(
   // left hand
   KC_EQL,          KC_1,        KC_2,          KC_3,    KC_4,    KC_5,    KC_LEFT,              KC_RGHT,      KC_6,    KC_7,    KC_8,    KC_9,              KC_0,           KC_MINS,
   KC_DEL,          KC_Q,        KC_W,          KC_E,    KC_R,    KC_T,    TG(SYMB),             TG(SYMB),     KC_Y,    KC_U,    KC_I,    KC_O,              KC_P,           KC_BSLS,
   KC_BSPC,         KC_A,        KC_S,          KC_D,    KC_F,    KC_G,                                        KC_H,    KC_J,    KC_K,    KC_L,    LT(MDIA, KC_SCLN), GUI_T(KC_QUOT),
   KC_LSFT,         CTL_T(KC_Z), KC_X,          KC_C,    KC_V,    KC_B,    ALL_T(KC_NO),                  MEH_T(KC_NO), KC_N,    KC_M,    KC_COMM, KC_DOT,           CTL_T(KC_SLSH), KC_RSFT,
   LT(SYMB,KC_GRV), KC_QUOT,     LALT(KC_LSFT), KC_LEFT, KC_RGHT,                                              KC_UP,   KC_DOWN, KC_LBRC, KC_RBRC, TT(SYMB),
                                                            ALT_T(KC_APP), KC_LGUI,                KC_LALT, CTL_T(KC_ESC),
                                                                           KC_HOME,                 KC_PGUP,
                                                            KC_SPC, KC_BSPC, KC_END,                  KC_PGDN, KC_TAB, KC_ENT
   ),
};
