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

# Inherit from PD1818C device
$(call inherit-product, device/vivo/PD1818C/device.mk)

PRODUCT_DEVICE := PD1818C
PRODUCT_NAME := omni_PD1818C
PRODUCT_BRAND := vivo
PRODUCT_MODEL := vivo PD1818C
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k62v1_64_bsp-user 8.1.0 O11019 1561720574 release-keys"

BUILD_FINGERPRINT := vivo/PD1818C/PD1818C:8.1.0/O11019/1561720574:user/release-keys
