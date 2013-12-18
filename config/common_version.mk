# Versioning of the ROM

ifdef BUILDTYPE_NIGHTLY
        ROM_BUILDTYPE := NIGHTLY
endif
ifdef BUILDTYPE_WEEKLY
        ROM_BUILDTYPE := WEEKLY
endif
ifdef BUILDTYPE_STABLE
        ROM_BUILDTYPE := STABLE
endif
ifndef ROM_BUILDTYPE
        ROM_BUILDTYPE := UNOFFICIAL
endif

TARGET_PRODUCT_SHORT := $(TARGET_PRODUCT)
TARGET_PRODUCT_SHORT := $(subst thinkingbridge_,,$(TARGET_PRODUCT_SHORT))

# Build the final version string
ifdef BUILDTYPE_RELEASE
        THINKINGBRIDGE_VERSION := $(PLATFORM_VERSION)-$(TARGET_PRODUCT_SHORT)
else
ifeq ($(ROM_BUILDTIME_LOCAL),y)
        THINKINGBRIDGE_VERSION := $(PLATFORM_VERSION)-$(shell date +%Y%m%d-%H%M%z)-$(TARGET_PRODUCT_SHORT)-$(ROM_BUILDTYPE)
else
        THINKINGBRIDGE_VERSION := $(PLATFORM_VERSION)-$(shell date -u +%Y%m%d)-$(TARGET_PRODUCT_SHORT)-$(ROM_BUILDTYPE)
endif
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.thinkingbridge.version=$(THINKINGBRIDGE_VERSION)