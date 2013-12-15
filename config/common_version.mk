BRANCH = kitkat
DATE = $(shell date -u +%Y%m%d)

#Set ThinkingBridge version
    THINKINGBRIDGE_VERSION := $(TARGET_PRODUCT)-$(PLATFORM_VERSION)_$(DATE)-nightly

PRODUCT_PROPERTY_OVERRIDES += \
    ro.thinkingbridge.version=$(THINKINGBRIDGE_VERSION)