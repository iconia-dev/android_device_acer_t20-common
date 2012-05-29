ifneq ($(filter $(TARGET_BOOTLOADER_BOARD_NAME),picasso picasso_e vangogh),)

include $(all-subdir-makefiles)

include $(CLEAR_VARS)

# generate init.<board>.rc
TARGET_INITRC_FILES := device/acer/t20-common/prebuilt/ramdisk/init.t20.rc

LOCAL_INIT_FILE := $(TARGET_ROOT_OUT)/init.$(TARGET_BOOTLOADER_BOARD_NAME).rc

$(LOCAL_INIT_FILE): $(TARGET_INITRC_FILES)
	$(hide) echo "import init.$(TARGET_BOOTLOADER_BOARD_NAME).usb.rc" > $@
	$(hide) cat $^ >> $@

ALL_GENERATED_SOURCES += $(LOCAL_INIT_FILE)

endif
