.class public Lcom/sprd/validationtools/itemstest/fingerprint/NativeFingerprint;
.super Ljava/lang/Object;
.source "NativeFingerprint.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    :try_start_0
    const-string v0, "jni_fingerprint"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "NativeFingerprint"

    const-string v2, " #loadLibrary jni_fingerprint failed  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 19
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

.method public static native deadpixel_test()I
.end method

.method public static native factory_exit()I
.end method

.method public static native factory_init()I
.end method

.method public static native finger_detect()I
.end method

.method public static native interrupt_test()I
.end method

.method public static native spi_test()I
.end method
