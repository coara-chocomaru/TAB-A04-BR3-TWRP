#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/sts/a04br3
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_BUILD_RECOVERY_IMAGE := true
PRODUCT_BUILD_SYSTEM_IMAGE := false
PRODUCT_BUILD_BOOT_IMAGE := false
PRODUCT_PACKAGES += unlock_boot_partitions
$(call inherit-product-if-exists, vendor/sts/a04br3/a04br3-vendor.mk)
