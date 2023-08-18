#
# Copyright (C) 2023 The LineageOS Project
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
#

# Inherit device configuration
$(call inherit-product, device/samsung/m31/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## Inherit some common Elixir stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
WITH_GMS := true

# Project-Elixir
IS_PHONE := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ACORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
ELIXIR_BUILD_TYPE := OFFICIAL
TARGET_USES_AOSP_RECOVERY := true
TARGET_ENABLE_BLUR := false
TARGET_BUILD_APERTURE_CAMERA := true

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Client-id base
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Build fingerprint
BUILD_FINGERPRINT := "samsung/m31nsxx/m31:12/SP1A.210812.016/M315FXXU3CWA2:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRIVATE_BUILD_DESC="m31nsxx-user 12 SP1A.210812.016 M315FXXU3CWA2 release-keys"

## Device configuration
PRODUCT_NAME := aosp_m31
PRODUCT_DEVICE := m31
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M315F
PRODUCT_MANUFACTURER := samsung
