# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/n7100/full_n7100.mk)

# Inherit common product files.
$(call inherit-product, vendor/thinkingbridge/config/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/thinkingbridge/config/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := thinkingbridge_n7100
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := n7100
PRODUCT_MODEL := GT-N7100
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t03gxx TARGET_DEVICE=t03g BUILD_FINGERPRINT="samsung/t03gxx/t03g:4.2.2/JDQ39/N7100XXALJ3:user/release-keys" PRIVATE_BUILD_DESC="t03gxx-user 4.2.2 JDQ39 N7100XXALJ3 release-keys"
