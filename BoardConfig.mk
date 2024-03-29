#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# These two variables are set first, so they can be overridden
# by BoardConfigVendor.mk
#BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := false

BUILD_OPENCORE_COMMON := true

USE_CAMERA_STUB := true
BOARD_EGL_CFG := device/ti/igep00x0/egl.cfg

# Use the non-open-source parts, if they're present
#-include vendor/ti/panda/BoardConfigVendor.mk

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
#TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_HAVE_BLUETOOTH := false
TARGET_NO_KERNEL := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := true

BOARD_KERNEL_BASE := 0x80000000
#BOARD_KERNEL_CMDLINE :=

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := omap3
TARGET_BOOTLOADER_BOARD_NAME := igep00x0

#BOARD_USES_HGL := true
#BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 268435456
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 16777216
BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 4096

USES_TI_MAC80211 := true
ifdef USES_TI_MAC80211
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wl12xx
#BOARD_HOSTAPD_DRIVER             := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_wl12xx
BOARD_WLAN_DEVICE                := wl12xx_mac80211
BOARD_SOFTAP_DEVICE              := wl12xx_mac80211
WIFI_DRIVER_MODULE_PATH          := "/system/bin/libertas/libertas_sdio.ko"
WIFI_DRIVER_MODULE_NAME          := "libertas_sdio"
WIFI_FIRMWARE_LOADER             := ""
COMMON_GLOBAL_CFLAGS += -DUSES_TI_MAC80211
endif

TARGET_PROVIDES_INIT_RC := true
#TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
