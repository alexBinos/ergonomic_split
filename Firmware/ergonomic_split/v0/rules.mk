MCU                  = atmega32u4

BOOTLOADER           = caterina

# Build Options
CUSTOM_MATRIX        = lite
BOOTMAGIC_ENABLE     = lite   # Virtual DIP switch configuration
MOUSEKEY_ENABLE      = no     # Mouse keys
EXTRAKEY_ENABLE      = no     # Audio control and System control
CONSOLE_ENABLE       = no     # Console for debug
COMMAND_ENABLE       = no     # Commands for debug and configuration
SLEEP_LED_ENABLE     = no     # Breathing sleep LED during USB suspend
NKRO_ENABLE          = no     # USB Nkey Rollover
BACKLIGHT_ENABLE     = no     # Enable keyboard backlight functionality
RGBLIGHT_ENABLE      = yes    # Enable keyboard RGB underglow
UNICODE_ENABLE       = no     # Unicode
BLUETOOTH_ENABLE     = no     # Enable Bluetooth
AUDIO_ENABLE         = no     # Audio output
ENCODER_ENABLE       = no     # Rotary Encoder support
OLED_ENABLE          = no     # OLED display support

SRC += matrix.c