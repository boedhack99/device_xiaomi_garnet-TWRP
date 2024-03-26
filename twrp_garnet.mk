#
# Copyright 2017 The Android Open Source Project
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
#
# Only the below variable(s) need to be changed!
#
# Define hardware platform
PRODUCT_PLATFORM := parrot

# Inherit from garnet device
$(call inherit-product, device/xiaomi/garnet/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Product Specifics
PRODUCT_NAME := twrp_garnet
PRODUCT_DEVICE := garnet
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 13 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Device path
DEVICE_PATH := device/xiaomi/garnet
