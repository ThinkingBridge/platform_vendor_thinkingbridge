# Inherit AOSP device configuration for mako
$(call inherit-product, device/samsung/manta/full_manta.mk)

# Inherit TB common bits
$(call inherit-product, vendor/thinkingbridge/config/common_tablet.mk)

# Setup device specific product configuration
PRODUCT_NAME := thinkingbridge_manta
PRODUCT_BRAND := google
PRODUCT_DEVICE := manta
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mantaray BUILD_FINGERPRINT=google/mantaray/manta:4.2.1/JOP40G/527662:user/release-keys PRIVATE_BUILD_DESC="mantaray-user 4.2.1 JOP40G 527662 release-keys" BUILD_NUMBER=527662
