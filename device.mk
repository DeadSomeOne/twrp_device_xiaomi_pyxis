#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/xiaomi/pyxis

# Api level
PRODUCT_SHIPPING_API_LEVEL := 28

# Dynamic partition flags
BOARD_USES_METADATA_PARTITION  := true
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# TWRP packages for Qcom decryption 

PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

TARGET_RECOVERY_DEVICE_MODULES += \
	vendor.display.config@1.0 \
	vendor.display.config@2.0

RECOVERY_LIBRARY_SOURCE_FILES += \
	$(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/vendor.display.config@1.0.so \
	$(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/vendor.display.config@2.0.so
