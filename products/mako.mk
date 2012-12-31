# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit TB common bits
$(call inherit-product, vendor/thinkingbridge/config/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/thinkingbridge/config/gsm.mk)

# Setup device specific product configuration
PRODUCT_NAME := thinkingbridge_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.2.1/JOP40D/527662:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.1 JOP40D 527662 release-keys" BUILD_NUMBER=527662
