#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from patriot device
$(call inherit-product, device/blackshark/patriot/device.mk)

PRODUCT_DEVICE := patriot
PRODUCT_NAME := omni_patriot
PRODUCT_BRAND := blackshark
PRODUCT_MODEL := SHARK PAR-H0
PRODUCT_MANUFACTURER := blackshark

PRODUCT_GMS_CLIENTID_BASE := android-blackshark

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="PAR-H0-user 12 PTRT2205061OS00MP0 V12.0.1.0.RBICNBS release-keys"

BUILD_FINGERPRINT := blackshark/PAR-H0/patriot:12/PTRT2205061OS00MP0/V12.0.1.0.RBICNBS:user/release-keys
