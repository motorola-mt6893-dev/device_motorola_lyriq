#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/motorola/lyriq/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lyriq
PRODUCT_NAME := lineage_lyriq
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Motorola Egde 40
PRODUCT_MANUFACTURER := motorola

# Build info
PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lyriq_g-user 12 TTL33.34 98aba release-keys"

BUILD_FINGERPRINT := motorola/lyriq_g/lyriq:12/TTL33.34/98aba:user/release-keys
