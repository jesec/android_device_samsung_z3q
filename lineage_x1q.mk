# Inherit full device configuration
$(call inherit-product, device/samsung/x1q/full_x1q.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Product IDs
PRODUCT_NAME := lineage_x1q
