#
# This policy configuration will be used by all qcom products
# that inherit from Invictrix
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

ifneq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_SEPOLICY_DIRS += \
    device/invictrix/sepolicy/qcom/vendor \
    device/invictrix/sepolicy/qcom/$(TARGET_BOARD_PLATFORM)
endif
