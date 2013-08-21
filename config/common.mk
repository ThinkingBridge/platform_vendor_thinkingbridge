PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

#SuperUser
SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.cyanogenmod.superuser

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/thinkingbridge/overlay/common

## Build Information Properties

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    persist.sys.root_access=3
    
# ThinkingBridge stable version
# SB = Stable Build <version number> 
VERSION_MOD_NAME := SB5
THINKING_BRIDGE_AUTHOR := ThinkingBridge

PRODUCT_PROPERTY_OVERRIDES += \
    ro.thinkingbridge.version=$(TARGET_PRODUCT)_$(VERSION_MOD_NAME)_$(shell date +"%y-%m-%d") \
    ro.modversion=$(VERSION_MOD_NAME) \
    ro.thikningbridge.author=$(THINKING_BRIDGE_AUTHOR)
    
# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/thinkingbridge/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/thinkingbridge/prebuilt/common/bin/50-backupScript.sh:system/addon.d/50-backupScript.sh

# init.d support
PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/common/bin/sysinit:system/bin/sysinit
    
# Libs
PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

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

# T-Mobile theme engine
include vendor/thinkingbridge/config/themes_common.mk

# Required AOSP packages
PRODUCT_PACKAGES += \
    Camera \
    LatinIME

# Optional ThinkingBridge packages
PRODUCT_PACKAGES += \
    VideoEditor \
    SoundRecorder \
    Welcome \
    TBWallpaper \
    SunBeam \
    Basic
    
# CyanogenMod Packages
PRODUCT_PACKAGES += \
    LockClock \
    Torch \
    Trebuchet \
    DSPManager \
    libcyanogen-dsp \
    Superuser \
    su \
    audio_effects.conf

# Extra tools
PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs \
    nano \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g

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
