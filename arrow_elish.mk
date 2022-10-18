#
# Copyright (C) 2018-2021 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/elish/device.mk)

# Inherit common configurations
$(call inherit-product, vendor/arrow/config/common.mk)

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := elish
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Xiaomi Pad 5 Pro
PRODUCT_NAME := arrow_elish

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Xiaomi/elish/elish:13/RKQ1.211001.001/V14.0.3.0.TKYCNXM:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=M2105K81AC

# ArrowOS additions
DEVICE_MAINTAINER := EdwardWu
