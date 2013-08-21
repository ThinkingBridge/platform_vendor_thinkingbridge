# Inherit GSM files.
$(call inherit-product, vendor/thinkingbridge/config/gsm.mk)

# Inherit some common TB stuff.
$(call inherit-product, vendor/thinkingbridge/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/htc/pyramid/device_pyramid.mk)

# Pyramid overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/thinkingbridge/overlay/pyramid

# Release name
PRODUCT_RELEASE_NAME := thinkingbridge_pyramid

# Device naming
PRODUCT_DEVICE := pyramid
PRODUCT_NAME := thinkingbridge_pyramid
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC Sensation
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_pyramid BUILD_FINGERPRINT=tmous/htc_pyramid/pyramid:4.2.2/JDQ39/356011.14:user/release-keys PRIVATE_BUILD_DESC="3.32.531.14 CL356011 release-keys" BUILD_NUMBER=356011

