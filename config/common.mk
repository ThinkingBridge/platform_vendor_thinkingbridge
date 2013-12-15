PRODUCT_BRAND ?= thinkingbridge

# general properties
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    persist.sys.root_access=1

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/thinkingbridge/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/thinkingbridge/prebuilt/bin/50-hosts.sh:system/addon.d/50-hosts.sh \
    vendor/thinkingbridge/prebuilt/bin/blacklist:system/addon.d/blacklist

# init.d support
PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/thinkingbridge/prebuilt/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/etc/init.d/90userinit:system/etc/init.d/90userinit

# Init script file with ThinkingBridge extras
PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/etc/init.local.rc:root/init.thinkingbridge.rc

# Enable SIP and VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Additional packages
-include vendor/thinkingbridge/config/common_packages.mk

# Versioning
-include vendor/thinkingbridge/config/common_version.mk

# Add our overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/thinkingbridge/overlay/common
