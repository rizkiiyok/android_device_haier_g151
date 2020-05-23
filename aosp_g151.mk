# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, device/haier/g151/full_g151.mk)

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8909

# Gapps
TARGET_GAPPS_ARCH := arm
TARGET_BOOT_ANIMATION_RES := 720
TARGET_MINIMAL_APPS := true

PRODUCT_NAME := aosp_g151
BOARD_VENDOR := haier
PRODUCT_DEVICE := g151

PRODUCT_GMS_CLIENTID_BASE := android-haier

BUILD_FINGERPRINT := Smartfren/a16c3h/a16c3h:5.1.1/release-keys