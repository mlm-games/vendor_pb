include vendor/pb/config/BoardConfigKernel.mk
include vendor/pb/config/BoardConfigSoong.mk
include vendor/pb/sepolicy/sepolicy.mk

ifeq ($(BOARD_USES_RECOVERY_AS_BOOT),true)
    ifneq ($(TW_NO_FASTBOOT_BOOT),true)
        ifeq (true,$(BUILDING_VENDOR_BOOT_IMAGE))
            GENERIC_KERNEL_CMDLINE += twrpfastboot=1
        else
            INTERNAL_KERNEL_CMDLINE += twrpfastboot=1
        endif
    endif
endif
