# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/i9100g/full_i9100g.mk)

# Inherit common product files.
$(call inherit-product, vendor/thinkingbridge/config/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/thinkingbridge/config/gsm.mk)

# GalaxyS2 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/thinkingbridge/overlay/s2-common

# Setup device specific product configuration.
PRODUCT_NAME := thinkingbridge_i9100g
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := i9100g
PRODUCT_MODEL := GT-I9100G
PRODUCT_MANUFACTURER := samsung

# Release name
PRODUCT_RELEASE_NAME := GT-I9100G

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100G TARGET_DEVICE=GT-I9100G BUILD_FINGERPRINT=samsung/GT-I9100G/GT-I9100G:4.1.2/JZO54K/I9100GXXLSR:user/release-keys PRIVATE_BUILD_DESC="GT-I9100G-user 4.1.2 JZO54K I9100GXXLSR release-keys"
