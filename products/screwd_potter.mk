# Copyright (C) 2016 Screw'd AOSP
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

# Check for target product

ifeq (screwd_potter,$(TARGET_PRODUCT))

# Include Screw'd common configuration
include vendor/screwd/main.mk

# Inherit AOSP device configuration for potter
$(call inherit-product, device/motorola/potter/aosp_potter.mk)

# Override AOSP build properties
PRODUCT_NAME := screwd_potter
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := potter
PRODUCT_MANUFACTURER := motorola

PRODUCT_PACKAGES += \
    AOSPLinks

#device fingerprint

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=motorola/potter/potter:7.0/NPNS25.137-33-11/11:user/release-keys \
    PRIVATE_BUILD_DESC="potter-7.0/NPNS25.137-33-11/11:user/release-keys" \
    PRODUCT_NAME="Moto G5 Plus"
endif
