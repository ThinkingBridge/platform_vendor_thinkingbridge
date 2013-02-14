# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/thinkingbridge/overlay/common

## Build Information Properties

VERSION_MOD_NAME = build6

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.tb.version=$(TARGET_PRODUCT)_build6_$(shell date +"%y-%m-%d") \
    ro.modversion=$(VERSION_MOD_NAME)

# init.d support
PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/common/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/common/etc/init.local.rc:root/init.thinkingbridge.rc

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/thinkingbridge/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
    
# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/thinkingbridge/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/thinkingbridge/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# T-Mobile theme engine
include vendor/thinkingbridge/config/themes_common.mk

# Required TB packages
PRODUCT_PACKAGES += \
    Camera \
    LatinIME \
    Superuser \
    su

# Optional TB packages
PRODUCT_PACKAGES += \
    VideoEditor \
    SoundRecorder \
    Welcome \
    TBWallpapers \
    Customized \
    Basic
    
# CyanogenMod Packages
PRODUCT_PACKAGES += \
    LockClock \
    Torch \
    Trebuchet \
    CMFileManager \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf

# Extra tools in TB
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    vim \
    nano \
    htop \
    powertop \
    lsof

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

PRODUCT_PACKAGE_OVERLAYS += vendor/thinkingbridge/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/thinkingbridge/overlay/common
