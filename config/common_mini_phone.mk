# Inherit common ThinkingBridge stuff
$(call inherit-product, vendor/thinkingbridge/config/common.mk)

# Bring in all audio files
include frameworks/base/data/sounds/NewAudio.mk

# Include CM audio files
include vendor/thinkingbridge/config/thinkingbridge_audio.mk

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=CyanTone.ogg \
    ro.config.notification_sound=CyanMessage.ogg \
    ro.config.alarm_alert=CyanAlarm.ogg

PRODUCT_PACKAGES += \
  Mms

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/thinkingbridge/prebuilt/common/bootanimation/320.zip:system/media/bootanimation.zip
endif
