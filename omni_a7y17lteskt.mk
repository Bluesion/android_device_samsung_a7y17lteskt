#
# Copyright (C) 2017 The LineageOS Project
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

LOCAL_PATH := device/samsung/a7y17lteskt

# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.samsungexynos7880 \
    ueventd.samsungexynos7880.rc

# Offmode charger
PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# SELinux file contexts
PRODUCT_COPY_FILES +=
    $(LOCAL_PATH)/ramdisk/file_contexts.bin:root/file_contexts.bin

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_a7y17lteskt
PRODUCT_DEVICE := a7y17lteskt
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A720S
PRODUCT_MANUFACTURER := samsung
