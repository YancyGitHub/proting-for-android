LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/../src \
    $(LOCAL_PATH)/../src/extratransmitters \
    $(LOCAL_PATH)/.. \
    bionic \
    external/stlport/stlport \
    external/stlport/stlport/stl \
    external/stlport/stlport/using \
    external/stlport/stlport/using/h \
    external/stlport/stlport/stl/config \
    external/stlport/stlport/stl/debug \
    external/stlport/stlport/stl/pointers

LOCAL_SRC_FILES += \
    send.cpp

LOCAL_STATIC_LIBRARIES := libjthread libjrtp.ifaddrs
LOCAL_SHARED_LIBRARIES := libstlport libcutils libstdc++ libjrtp

LOCAL_MODULE := jrtp-send

include $(BUILD_EXECUTABLE)



include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/../src \
    $(LOCAL_PATH)/../src/extratransmitters \
    $(LOCAL_PATH)/.. \
    bionic \
    external/stlport/stlport \
    external/stlport/stlport/stl \
    external/stlport/stlport/using \
    external/stlport/stlport/using/h \
    external/stlport/stlport/stl/config \
    external/stlport/stlport/stl/debug \
    external/stlport/stlport/stl/pointers

LOCAL_SRC_FILES += \
    recv.cpp

LOCAL_STATIC_LIBRARIES := libjthread libjrtp.ifaddrs
LOCAL_SHARED_LIBRARIES := libstlport libcutils libstdc++ libjrtp

LOCAL_MODULE := jrtp-recv

include $(BUILD_EXECUTABLE)


































