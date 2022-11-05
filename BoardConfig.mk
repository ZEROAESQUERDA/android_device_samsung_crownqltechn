#
# Copyright (C) 2018-2021 The LineageOS Project
# Copyright (C) 2021 AOSPK
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from sdm845-common
-include device/samsung/sdm845-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/crownqltechn

BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
SELINUX_IGNORE_NEVERALLOWS := true

# Assert
TARGET_OTA_ASSERT_DEVICE := crownqltechn

# Kernel
TARGET_KERNEL_CONFIG := crownqlte_chn_open_defconfig
BOARD_BOOT_HEADER_VERSION := 1
BOARD_PREBUILT_DTBIMAGE := $(DEVICE_PATH)/prebuilt/Image.gz
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_HEADERS := kernel/samsung/sdm845
TARGET_FORCE_PREBUILT_KERNEL := true

# Vendor init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_samsung_crownqltechn
TARGET_RECOVERY_DEVICE_MODULES := init_samsung_crownqltechn

