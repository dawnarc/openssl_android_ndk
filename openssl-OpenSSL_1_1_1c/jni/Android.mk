
LOCAL_PATH := $(call my-dir) 

include $(CLEAR_VARS)  
  
LOCAL_MODULE := libexcelformat-ndk
LOCAL_MODULE_TAGS := optional  
  
LOCAL_CPP_EXTENSION := .c  
  
#LOCAL_SRC_FILES += \
#$(CC_LITE_SRC_FILES)                                         

MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/../ssl/*.c)
LOCAL_SRC_FILES += $(MY_CPP_LIST:$(LOCAL_PATH)/%=%)

LOCAL_C_INCLUDES += include
LOCAL_C_INCLUDES += .
  
include $(BUILD_STATIC_LIBRARY)  