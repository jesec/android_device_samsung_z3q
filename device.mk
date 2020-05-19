# Inherit common device configuration
$(call inherit-product, device/samsung/sm8250-common/sm8250.mk)

# Proprietary blobs
$(call inherit-product-if-exists, vendor/samsung/z3q/z3q-vendor.mk)

DEVICE_PATH := device/samsung/z3q

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Overlays
PRODUCT_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# Resolution
TARGET_SCREEN_HEIGHT := 3200
TARGET_SCREEN_WIDTH := 1440

PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# Lineage
ifneq ($(LINEAGE_BUILD),)
-include $(DEVICE_PATH)/device_lineage.mk
endif
