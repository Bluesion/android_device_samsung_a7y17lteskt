LOCAL_PATH := device/samsung/a7y17lteskt

TARGET_NO_BOOTLOADER := true
# You can find this info on build.prop
TARGET_BOOTLOADER_BOARD_NAME := universal7880

# Platform | You can find this info on build.prop
TARGET_BOARD_PLATFORM := exynos5
# You can find gpu info on samsung exynos site (http://www.samsung.com/semiconductor/minisite/exynos/products/all-processors/).
TARGET_BOARD_PLATFORM_GPU := mali-T830MP3

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

# For arm64
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64

# Binder
TARGET_USES_64_BIT_BINDER := true

# Kernel
BOARD_KERNEL_CMDLINE := # Exynos doesn't take cmdline arguments from boot image
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --board SRPQB08A000RU --dt $(LOCAL_PATH)/dt.img
TARGET_USES_UNCOMPRESSED_KERNEL := true
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
TARGET_PREBUILT_DTB := $(LOCAL_PATH)/dt.img

# Partitions | You can examine this by cat /cache/recovery/last_log (Only for root user).
# If you didn't root your phone, just type cat /proc/partitions. And then, multiple 1024 on the blocks.
# Now, convert your 1024*blocks from demical to hex. That's all.
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x002000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x002600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x10C800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x61D000000
BOARD_CACHEIMAGE_PARTITION_SIZE    := 0x00C800000
BOARD_FLASH_BLOCK_SIZE := 131072

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_SUPPRESS_SECURE_ERASE := true

# Display
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

#####################################################################################
# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/recovery.fstab

RECOVERY_SDCARD_ON_DATA := true
TW_THEME := portrait_hdpi

TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true

TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_EXCLUDE_SUPERSU := true
TW_NO_EXFAT_FUSE := true
TW_INCLUDE_NTFS_3G := true
TW_MTP_DEVICE := "/dev/usb_mtp_gadget"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_BRIGHTNESS_PATH := "/sys/devices/14800000.dsim/backlight/panel/brightness"
TW_EXTRA_LANGUAGES := true
#TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"

# TWRP encryption
TW_INCLUDE_CRYPTO := true

# TWRP debug flags
#TWRP_INCLUDE_LOGCAT := true
#TARGET_USES_LOGD := true
#TWRP_EVENT_LOGGING := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/13600000.usb/13600000.dwc3/gadget/lun%d/file"
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Color fix
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
