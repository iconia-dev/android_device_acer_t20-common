ifneq ($(filter $(TARGET_BOOTLOADER_BOARD_NAME),picasso vangogh ),)
    include $(all-subdir-makefiles)
endif