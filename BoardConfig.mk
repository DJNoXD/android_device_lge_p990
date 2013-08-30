# inherit from the proprietary version
-include device/lge/star-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := p990

BOARD_KERNEL_CMDLINE := 

BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 0x00000800

TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1610612736 
BOARD_FLASH_BLOCK_SIZE := 131072

# camera
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DHAVE_ISO -DDISABLE_HW_ID_MATCH_CHECK
BOARD_CAMERA_HAVE_ISO := true 

# Try to build the kernel
TARGET_KERNEL_CONFIG := cyanogenmod_p990-newbl_defconfig
#TARGET_PREBUILT_KERNEL := device/lge/p990/kernel

BOARD_VOLD_MAX_PARTITIONS := 20

# egl
BOARD_EGL_CFG := device/lge/star-common/egl.cfg
BOARD_EGL_NEEDS_LEGACY_FB := true 

BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

TARGET_OTA_ASSERT_DEVICE := p990
BOARD_RIL_CLASS := ../../../device/lge/p990/ril/

#BOARD_TOUCH_RECOVERY := true

TARGET_ARCH_LOWMEM := true
