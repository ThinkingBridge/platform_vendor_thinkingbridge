# Inherit common ThinkingBridge stuff
$(call inherit-product, vendor/thinkingbridge/config/common_full.mk)

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Canismajor.ogg \
    ro.config.notification_sound=Capella.ogg \
    ro.config.alarm_alert=Cesium.ogg

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/thinkingbridge/prebuilt/common/bootanimation/800.zip:system/media/bootanimation.zip
endif
