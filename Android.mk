ifneq ($(filter $(TARGET_BOOTLOADER_BOARD_NAME),picasso picasso_e vangogh),)
    include $(all-subdir-makefiles)
endif