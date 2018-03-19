# Copyright (C) 2014 The CyanogenMod Project
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

LOCAL_PATH := device/samsung/grandneove3g

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Inherit from vendor tree
$(call inherit-product-if-exists, vendor/samsung/grandneove3g/grandneove3g-vendor.mk)

# Inherit from scx30g-common device configuration
$(call inherit-product, device/samsung/scx30g-common/common.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Keylayouts
KEYLAYOUT_FILES := \
	$(LOCAL_PATH)/keylayouts/sec_touchscreen.kl

PRODUCT_COPY_FILES += \
	$(foreach f,$(KEYLAYOUT_FILES),$(f):system/usr/keylayout/$(notdir $(f)))

# Media config
MEDIA_CONFIGS := \
	media_profiles.xml

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=200 \
	ro.sf.lcd_width=54 \
	ro.sf.lcd_height=96 \
	ro.product.hardware=GRANDNEOVE_V1.0.0 \
	media.stagefright.legacyencoder=true \
	media.stagefright.less-secure=true

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/media/mediaserver.rc:system/etc/init/mediaserver.rc

# WiFi
$(call inherit-product, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_grandneove3g
PRODUCT_DEVICE := grandneove3g
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I9060I
