$(call inherit-product, vendor/thinkingbridge/config/gsm.mk)

PRODUCT_RELEASE_NAME := NS
# Inherit some common TB stuff.
$(call inherit-product, vendor/thinkingbridge/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/crespo/full_crespo.mk)

# Enhanced NFC
$(call inherit-product, vendor/thinkingbridge/config/nfc_enhanced.mk)

# Crespo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/thinkingbridge/overlay/crespo

PRODUCT_NAME := thinkingbridge_crespo
PRODUCT_DEVICE := crespo
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus S
PRODUCT_MANUFACTURER := Samsung

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_FINGERPRINT="google/soju/crespo:4.2.2/JDQ39/485486:user/release-keys" PRIVATE_BUILD_DESC="soju-user 4.2.2 JDQ39 485486 release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/bootanimations/BOOTANIMATION-480x800.zip:system/media/bootanimation.zip
