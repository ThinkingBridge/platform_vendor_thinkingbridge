# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit TB common bits
$(call inherit-product, vendor/thinkingbridge/config/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/thinkingbridge/config/gsm.mk)

# Extra mako overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/thinkingbridge/overlay/mako

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Setup device specific product configuration
PRODUCT_NAME := thinkingbridge_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.2.2/JDQ39/527662:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39 527662 release-keys" BUILD_NUMBER=527662

# Maguro specific packages
PRODUCT_PACKAGES += \
    Thinkfree
    
# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/bootanimations/BOOTANIMATION-720x1280.zip:system/media/bootanimation.zip