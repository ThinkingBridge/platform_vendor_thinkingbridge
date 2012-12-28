# Inherit common stuff
$(call inherit-product, vendor/thinkingbridge/config/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/thinkingbridge/overlay/common_tablet
