# Inherit GSM files.
$(call inherit-product, vendor/thinkingbridge/config/gsm.mk)

# Inherit some common TB stuff.
$(call inherit-product, vendor/thinkingbridge/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/umts_spyder/device.mk)

# Pyramid overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/thinkingbridge/overlay/common

# Release name
PRODUCT_RELEASE_NAME := thinkingbridge_umts_spyder

# Device naming
PRODUCT_DEVICE := umts_spyder
PRODUCT_NAME := thinkingbridge_umts_spyder
PRODUCT_BRAND := MOTO
PRODUCT_MODEL := MOTOROLA RAZR
PRODUCT_MANUFACTURER := MOTO

# Set build fingerprint / ID / Product Name ect.
# PRODUCT_BUILD_PROP_OVERRIDES ...
# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/bootanimations/BOOTANIMATION-720x1280.zip:system/media/bootanimation.zip

