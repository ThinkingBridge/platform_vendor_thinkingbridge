# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/i9300/full_i9300.mk)

# Inherit common product files.
$(call inherit-product, vendor/thinkingbridge/config/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/thinkingbridge/config/gsm.mk)

# Extra GalaxyS3 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/thinkingbridge/overlay/s3-common

# Setup device specific product configuration.
PRODUCT_NAME := thinkingbridge_i9300
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := i9300
PRODUCT_MODEL := GT-I9300
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m0xx TARGET_DEVICE=m0 BUILD_FINGERPRINT="samsung/m0xx/m0:4.2.2/JDQ39/I9300XXDLIB:user/release-keys" PRIVATE_BUILD_DESC="m0xx-user 4.2.2 JDQ39 I9300XXDLIB release-keys"
