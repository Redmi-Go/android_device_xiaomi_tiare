

#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common CipherOS stuff.
$(call inherit-product, vendor/cipher/config/common_full_phone.mk)

# Inherit from tiare device
$(call inherit-product, device/xiaomi/tiare/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tiare
PRODUCT_NAME := cipher_tiare
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Go
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tiare-user 8.1.0 OPM1.171019.026 V10.2.19.0.OCLINXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/tiare_in/tiare:8.1.0/OPM1.171019.026/V10.2.19.0.OCLINXM:user/release-keys"

# Cipher Build Flags
CIPHER_MAINTAINER := TechyMinati
TARGET_FACE_UNLOCK_SUPPORTED := true
CIPHER_OFFICIAL := true
TARGET_BOOT_ANIMATION_RES := 720

