LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/jthread \
    system/core/include/cutils

LOCAL_SRC_FILES += \
    jthread/jmutex.cpp \
    jthread/jthread.cpp

LOCAL_MODULE := libjthread
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := libjrtp-ifaddrs/ifaddrs.c
LOCAL_CFLAGS := -O2 -g
LOCAL_C_INCLUDES := 
LOCAL_SHARED_LIBRARIES :=
LOCAL_MODULE := libjrtp.ifaddrs
LOCAL_MULTILIB := 32
include $(BUILD_STATIC_LIBRARY)


include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/src \
    $(LOCAL_PATH)/src/extratransmitters \
    $(LOCAL_PATH)/libjrtp-ifaddrs \
    bionic \
    external/stlport/stlport \
    external/stlport/stlport/stl \
    external/stlport/stlport/using \
    external/stlport/stlport/using/h \
    external/stlport/stlport/stl/config \
    external/stlport/stlport/stl/debug \
    external/stlport/stlport/stl/pointers

LOCAL_SRC_FILES += \
    src/rtptimeutilities.cpp \
    src/rtpsecuresession.cpp \
    src/rtperrors.cpp \
    src/rtpbyteaddress.cpp \
    src/rtprandom.cpp \
    src/rtcpsdesinfo.cpp \
    src/rtpsessionparams.cpp \
    src/rtcprrpacket.cpp \
    src/rtpsourcedata.cpp \
    src/rtpcollisionlist.cpp \
    src/rtpipv6address.cpp \
    src/rtpabortdescriptors.cpp \
    src/rtpipv4destination.cpp \
    src/rtpsources.cpp \
    src/rtpudpv4transmitter.cpp \
    src/extratransmitters/rtpfaketransmitter.cpp \
    src/rtppacketbuilder.cpp \
    src/rtpipv6destination.cpp \
    src/rtppacket.cpp \
    src/rtcpscheduler.cpp \
    src/rtprandomrand48.cpp \
    src/rtcppacket.cpp \
    src/rtcppacketbuilder.cpp \
    src/rtprandomrands.cpp \
    src/rtpsessionsources.cpp \
    src/rtptcptransmitter.cpp \
    src/rtptcpaddress.cpp \
    src/rtprandomurandom.cpp \
    src/rtplibraryversion.cpp \
    src/rtcpsdespacket.cpp \
    src/rtpinternalsourcedata.cpp \
    src/rtcpsrpacket.cpp \
    src/rtcpapppacket.cpp \
    src/rtpudpv6transmitter.cpp \
    src/rtppollthread.cpp \
    src/rtcpcompoundpacketbuilder.cpp \
    src/rtcpcompoundpacket.cpp \
    src/rtpipv4address.cpp \
    src/rtpdebug.cpp \
    src/rtpsession.cpp \
    src/rtcpbyepacket.cpp \
    src/rtpexternaltransmitter.cpp

LOCAL_STATIC_LIBRARIES := libjthread libjrtp.ifaddrs
LOCAL_SHARED_LIBRARIES := libstlport libcutils libstdc++

LOCAL_MODULE := libjrtp

include $(BUILD_SHARED_LIBRARY)






































