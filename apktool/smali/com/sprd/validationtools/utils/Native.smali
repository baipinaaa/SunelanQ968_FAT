.class public Lcom/sprd/validationtools/utils/Native;
.super Ljava/lang/Object;
.source "Native.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    :try_start_0
    const-string v0, "jni_validationtools"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "ValidationToolsNative"

    const-string v2, " #loadLibrary jni_validationtools failed  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 18
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native native_get_TARGET_CAMERA_SENSOR_CCT_TCS3430_flag()I
.end method

.method public static native native_get_audio_whale_loopback_flag()I
.end method

.method public static native native_get_camera_sensor_tof_support_flag()I
.end method

.method public static native native_is_support_macro(Ljava/lang/String;)I
.end method

.method public static native native_sendATCmd(ILjava/lang/String;)Ljava/lang/String;
.end method
