LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

MY_MODULE_DIR 		:= live555

LOCAL_MODULE    	:= $(MY_MODULE_DIR)
LOCAL_SRC_FILES		:= \
	$(subst $(MY_BASE_JNI_PATH)/$(MY_MODULE_DIR)/,,$(wildcard $(MY_BASE_JNI_PATH)/$(MY_MODULE_DIR)/src/*.c*))
LOCAL_LDLIBS 		:= -lm -llog
LOCAL_C_INCLUDES 	:= \
	$(MY_BASE_JNI_PATH)/$(MY_MODULE_DIR)/include \
	$(MY_BASE_JNI_PATH)/groupsock/include \
	$(MY_BASE_JNI_PATH)/UsageEnvironment/include
LOCAL_CFLAGS 		:= -DNULL=0 -DSOCKLEN_T=socklen_t
LOCAL_CPPFLAGS 		:= -DBSD=1
	
include $(BUILD_STATIC_LIBRARY)
