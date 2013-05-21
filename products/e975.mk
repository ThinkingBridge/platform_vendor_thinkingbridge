# Inherit device configuration
$(call inherit-product, device/lge/e975/e975.mk)

# Inherit TB common bits
$(call inherit-product, vendor/thinkingbridge/config/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/thinkingbridge/config/gsm.mk)

# Extra mako overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/thinkingbridge/overlay/mako

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

## Device identifier. This must come after all inclusions
PRODUCT_NAME := thinkingbridge_e975
PRODUCT_DEVICE := e975
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-E975
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=geehrc_open_eu BUILD_FINGERPRINT=lge/geehrc_open_eu/geehrc:4.1.2/JZO54K/E97510b.1360741472:user/release-keys PRIVATE_BUILD_DESC="geehrc_open_eu-user 4.1.2 JZO54K E97510b.1360741472 release-keys"

# Maguro specific packages
PRODUCT_PACKAGES += \
    Thinkfree
    
# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/bootanimations/BOOTANIMATION-720x1280.zip:system/media/bootanimation.zip