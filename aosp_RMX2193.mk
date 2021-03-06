#
# Copyright (C) 2020 Android Open Source Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RMX2193/device.mk)

# Inherit some common PixelPlusUI stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_FACE_UNLOCK_SUPPORTED := true
CUSTOM_BUILD_TYPE := OFFICIAL
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ACORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_BOOT_ANIMATION_RES := 720

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_RMX2193
PRODUCT_DEVICE := RMX2193
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme Narzo 20/7i(EU)
PRODUCT_MANUFACTURER := realme

# PixelPlusUI OFFICIAL
PRODUCT_PRODUCT_PROPERTIES += \
    ro.ppui.device_name=Realme-Narzo-20/7i(EU) \
    ro.ppui.version=3.8 \
    ro.ppui.version_code=Hikaru \
    ro.ppui.is_official=true \
    ro.ppui.maintainer_name=Abhishek-Sarthak

# Build info
BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ3A.210705.001/7380771:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX2193 \
    PRODUCT_NAME=RMX2193 \
    PRIVATE_BUILD_DESC="full_oppo6769-user 10 QP1A.190711.020 68b77aba7cb33275 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
