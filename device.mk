#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mt6833-common
$(call inherit-product, device/xiaomi/mt6833-common/mt6833.mk)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/light/light-vendor.mk)

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResOverlayLight \
    SystemUIOverlayLight

# Properties
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/props/properties/odm,$(TARGET_COPY_OUT_ODM)/etc/properties) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/props/properties/product,$(TARGET_COPY_OUT_PRODUCT)/etc/properties) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/props/properties/system,$(TARGET_COPY_OUT_SYSTEM)/etc/properties) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/props/properties/system_ext,$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/properties) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/props/properties/vendor,$(TARGET_COPY_OUT_VENDOR)/etc/properties)

# Rootdir
PRODUCT_PACKAGES += \
    init.batterysecret.rc \
    init.mt6833.rc \
    init.stnfc.rc

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator-service.mediatek
