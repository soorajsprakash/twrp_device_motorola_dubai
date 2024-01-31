#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from dubai device
$(call inherit-product, device/motorola/dubai/device.mk)

# Enable Virtual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)


PRODUCT_DEVICE := dubai
PRODUCT_NAME := twrp_dubai
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30
PRODUCT_MANUFACTURER := motorola

PRODUCT_VIRTUAL_AB_OTA := true
PRODUCT_VENDOR_PROPERTIES += ro.virtual_ab.enabled=true
PRODUCT_PACKAGES += \
    linker.vendor_ramdisk \
    e2fsck.vendor_ramdisk \
    fsck.f2fs.vendor_ramdisk \