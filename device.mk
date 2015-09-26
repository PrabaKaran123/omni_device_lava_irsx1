
$(call inherit-product-if-exists, vendor/lava/irsx1/irsx1-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lava/irsx1/overlay

TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

LOCAL_PATH := device/lava/irsx1
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

