LOCAL_PATH := $(call my-dir)


include $(CLEAR_VARS)

LOCAL_MODULE    := libcrypto 
LOCAL_SRC_FILES := libcrypto.a

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_CFLAGS := -std=c99 -O3 -v -lcrypto -static

LOCAL_LDLIBS += libcrypto.a

LOCAL_STATIC_LIBRARIES := libcrypto
LOCAL_MODULE    := pixiewps
LOCAL_SRC_FILES := pixiewps.c random_r.c

include $(BUILD_EXECUTABLE)

