#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from sm6150 device
$(call inherit-product, device/qualcomm/sm6150/device.mk)

PRODUCT_DEVICE := sm6150
PRODUCT_NAME := omni_sm6150
PRODUCT_BRAND := qti
PRODUCT_MODEL := sm6150 for arm64
PRODUCT_MANUFACTURER := qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sm6150-userdebug 9 PKQ1.190127.001 eng.lnxbui.20190213.004411 test-keys"

BUILD_FINGERPRINT := qti/sm6150/sm6150:9/PKQ1.190127.001/lnxbuild02130041:userdebug/test-keys
