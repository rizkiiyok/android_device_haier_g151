#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

TARGET_BOARD_PLATFORM := msm8909
DEVICE_PATH := device/haier/g151

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_USES_64_BIT_BINDER := true

# Audio
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8909
TARGET_NO_BOOTLOADER := true

# Camera
TARGET_USE_VENDOR_CAMERA_EXT := true
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
TARGET_NEEDS_LEGACY_CAMERA_HAL1_DYN_NATIVE_HANDLE := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Display
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs
TARGET_USES_MKE2FS := true

# Framework sched boost
ENABLE_SCHED_BOOST := true

# FM
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
BOARD_HAVE_QCOM_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true

# GPS
TARGET_NO_RPC := true
USE_DEVICE_SPECIFIC_GPS := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm8909
TARGET_RECOVERY_DEVICE_MODULES := libinit_msm8909

# Kernel
BOARD_DTBTOOL_ARGS := -2
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_SEPARATED_DT := true
TARGET_KERNEL_SOURCE := kernel/msm8909
TARGET_KERNEL_CONFIG := msm8909-g151_defconfig
BOARD_KERNEL_CMDLINE += phy-msm-usb.floated_charger_enable=1
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000

# Manifest
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml

# Media
TARGET_USES_MEDIA_EXTENSIONS := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 335544320
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1947480064
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4930826240
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true
TARGET_RIL_VARIANT := caf
MALLOC_SVELTE := true
PRODUCT_VENDOR_MOVE_ENABLED := true

# Power
TARGET_HAS_NO_POWER_STATS := true
TARGET_HAS_LEGACY_POWER_STATS := true
TARGET_HAS_NO_WIFI_STATS := true
TARGET_USES_INTERACTION_BOOST := true

# Properties
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
BOARD_NO_SECURE_DISCARD := true
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_cm

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(PLATFORM_PATH)

# Render
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
USE_OPENGL_RENDERER := true

# SELinux
include device/qcom/sepolicy/sepolicy.mk
include device/qcom/sepolicy/legacy-sepolicy.mk
BOARD_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy

# Shims
TARGET_LD_SHIM_LIBS := \
    /system/vendor/lib64/libflp.so|libshims_flp.so \
    /system/vendor/lib64/libizat_core.so|libshims_get_process_name.so \
    /system/vendor/lib/libflp.so|libshims_flp.so \
    /system/vendor/lib/libizat_core.so|libshims_get_process_name.so \
    /system/vendor/lib/libmmcamera2_imglib_modules.so|libshim_camera.so

# Gapps
GAPPS_VARIANT := pico

# Wlan
BOARD_HAS_QCOM_WLAN := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn

PRODUCT_VENDOR_MOVE_ENABLED := true
TARGET_USES_QCOM_WCNSS_QMI := true

WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# inherit from the proprietary version
include vendor/haier/g151/BoardConfigVendor.mk