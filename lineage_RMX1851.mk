#
# Copyright (C) 2018 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, device/realme/RMX1851/device.mk)

PRODUCT_NAME := lineage_RMX1851
PRODUCT_DEVICE := RMX1851
PRODUCT_MANUFACTURER := Realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme 3 Pro

PRODUCT_GMS_CLIENTID_BASE := android-realme

TARGET_VENDOR_PRODUCT_NAME := RMX1851
TARGET_VENDOR_DEVICE_NAME := RMX1851

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="RMX1851" \
    PRODUCT_NAME="RMX1851"

PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="sdm710-user 9 PKQ1.190101.001 eng.root.20191209.210742 release-keys"
BUILD_FINGERPRINT := google/walleye/walleye:8.1.0/OPM1.171019.011/4448085
