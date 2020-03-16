# OTA
BLOCK_BASED_OTA := true
TARGET_OTA_ASSERT_DEVICE := pine,pine_dsds

# Bionic

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Configure jemalloc for low memory
MALLOC_SVELTE := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Vold
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file

# Charger
#BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness
#BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/BOOT/BOOT/boot/boot_mode

