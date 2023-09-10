# Copyright (C) 2021 Paranoid Android
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

# QCOM Sepolicy
BOARD_SEPOLICY_DIRS += \
    device/xiaomi/elish/sepolicy/vendor/qcom

# Xiaomi Sepolicy
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    device/xiaomi/elish/sepolicy/private/xiaomi/devicesettings \
    device/xiaomi/elish/sepolicy/private/xiaomi/display

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    device/xiaomi/elish/sepolicy/public/xiaomi/devicesettings

BOARD_VENDOR_SEPOLICY_DIRS += \
    device/xiaomi/elish/sepolicy/vendor/xiaomi/audio \
    device/xiaomi/elish/sepolicy/vendor/xiaomi/battery \
    device/xiaomi/elish/sepolicy/vendor/xiaomi/bluetooth \
    device/xiaomi/elish/sepolicy/vendor/xiaomi/camera \
    device/xiaomi/elish/sepolicy/vendor/xiaomi/dolby \
    device/xiaomi/elish/sepolicy/vendor/xiaomi/fingerprint \
    device/xiaomi/elish/sepolicy/vendor/xiaomi/modem \
    device/xiaomi/elish/sepolicy/vendor/xiaomi/power_supply \
    device/xiaomi/elish/sepolicy/vendor/xiaomi/sensors \
    device/xiaomi/elish/sepolicy/vendor/xiaomi/thermald \
    device/xiaomi/elish/sepolicy/vendor/xiaomi/touch \
    device/xiaomi/elish/sepolicy/vendor/xiaomi/usb \
    device/xiaomi/elish/sepolicy/vendor/xiaomi/wireless \
    device/xiaomi/elish/sepolicy/vendor/xiaomi/wlan
