#
# Copyright (C) 2017 The LineageOS Project
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE       := fstab.samsungexynos7880
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := BOOT
LOCAL_SRC_FILES    := fstab.samsungexynos7880
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := ueventd.samsungexynos7880.rc
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := BOOT
LOCAL_SRC_FILES    := ueventd.samsungexynos7880.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)
