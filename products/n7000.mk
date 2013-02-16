# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/n7000/full_n7000.mk)

# Inherit common product files.
$(call inherit-product, vendor/thinkingbridge/config/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/thinkingbridge/config/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := thinkingbridge_n7000
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := n7000
PRODUCT_MODEL := GT-N7000
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-N7000 TARGET_DEVICE=GT-N7000 BUILD_FINGERPRINT=samsung/GT-N7000/GT-N7000:4.2.2/JDQ39/ZCLP6:user/release-keys PRIVATE_BUILD_DESC="GT-N7000-user 4.2.2 JDQ39 ZCLP6 release-keys"
