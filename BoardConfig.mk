USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/w5c/BoardConfigVendor.mk

LOCAL_PATH := device/lge/w5c

# platform
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno302
TARGET_BOARD_PLATFORM := msm8610
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := w5c

# kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=w5c user_debug=31 msm_rtb.filter=0x37
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
#TARGET_KERNEL_SOURCE := kernel/lge/w5c
#TARGET_KERNEL_CONFIG := w5c_defconfig
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --dt $(LOCAL_PATH)/dt.img --tags_offset 0x01e00000

# partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23068672
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1625292800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5506596864
BOARD_CACHEIMAGE_PARTITION_SIZE := 314572800
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 131072

# recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
HAVE_SELINUX := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# TWRP
DEVICE_RESOLUTION := 480x800
TW_IGNORE_MAJOR_AXIS_0 := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_NO_SCREEN_TIMEOUT := true

#Philz edits
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480
BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"
