# kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78B0000 androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE :=  2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_KERNEL_SOURCE := kernel/xiaomi/msm8917
TARGET_USE_SDCLANG := true

# ExFAT target
TARGET_EXFAT_DRIVER := exfat

# Kernel Clang
TARGET_KERNEL_CLANG_COMPILE := true
KERNEL_CLANG_VERSION := sd4.0
TARGET_KERNEL_CLANG_PATH:= $(ANDROID_BUILD_TOP)/prebuilts/clang/linux-x86/host/clang-sd4.0/bin

# ROM Clang
ifneq ($(HOST_OS),darwin)
  SDCLANG := true
  SDCLANG_PATH := prebuilts/clang/linux-x86/host/clang-sd4.0/bin
  SDCLANG_LTO_DEFS := device/qcom/common/sdllvm-lto-defs.mk
endif