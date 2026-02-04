LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := unlock_boot_partitions
LOCAL_SRC_FILES := unlock_boot_partitions.c
LOCAL_CFLAGS := -Wall -Wno-error -Wno-unused-parameter -Wno-unknown-attributes -std=c99
LOCAL_C_INCLUDES := \
    bionic/libc/include \
    bionic/libc \
    system/core/include
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_STATIC_LIBRARIES := libc
include $(BUILD_EXECUTABLE)
