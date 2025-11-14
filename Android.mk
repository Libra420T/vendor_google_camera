LOCAL_PATH := $(call my-dir)

# GoogleCamera
include $(CLEAR_VARS)
LOCAL_MODULE := GoogleCamera
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := GoogleCamera/GoogleCamera.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_PRIVILEGED_MODULE := true
LOCAL_OPTIONAL_USES_LIBRARIES := android.ext.adservices androidx.window.extensions androidx.window.sidecar
ifeq ($(WITH_GMS),true)
LOCAL_OVERRIDES_PACKAGES := Aperture
endif
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)
