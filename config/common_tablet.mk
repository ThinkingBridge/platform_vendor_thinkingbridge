# Inherit common stuff
$(call inherit-product, vendor/thinkingbridge/config/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/thinkingbridge/overlay/common_tablet

# KoreanIME for Tablet
PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/common_tablet/apps/KoreanIME.apk:system/app/KoreanIME.apk \
    vendor/thinkingbridge/prebuilt/common_tablet/lib/libjni_koreanime.so:system/lib/libjni_koreanime.so
