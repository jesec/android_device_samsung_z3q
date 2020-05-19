# Inherit full device configuration
$(call inherit-product, device/samsung/z3q/full_z3q.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Product IDs
PRODUCT_NAME := lineage_z3q
