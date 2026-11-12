.class public Lcom/sprd/validationtools/utils/ValidationToolsUtils;
.super Ljava/lang/Object;
.source "ValidationToolsUtils.java"


# static fields
.field private static final AI_KEY_MODALIAS_VALUE:Ljava/lang/String; = "2FE"

.field private static final AUDIO_WHALE_HAL_PROP:Ljava/lang/String; = "ro.vendor.mmi.use.audio.whale.hal"

.field private static final CAMERA_SENSOR_CCT:Ljava/lang/String; = "ro.vendor.mmi.camera.sensor.cct"

.field private static final CAMERA_SENSOR_TOF:Ljava/lang/String; = "ro.vendor.mmi.camera.sensor.tof"

.field public static final ENABLE_UID:Z = false

.field private static final ENG_PCBA_SUPPORT_CONFIG:Ljava/lang/String; = "/vendor/etc/PCBA.conf"

.field private static final KEY_INPUT_MODALIAS_PATH:Ljava/lang/String; = "/sys/class/input/input2/modalias"

.field public static final LOCKSCREEN_SOUNDS_ENABLED:Ljava/lang/String; = "lockscreen_sounds_enabled"

.field private static final TAG:Ljava/lang/String; = "ValidationToolsUtils"

.field private static final UID_PATH_1:Ljava/lang/String; = "sys/class/misc/sprd_efuse_otp/uid"

.field private static final UID_PATH_2:Ljava/lang/String; = "sys/class/misc/sprd_otp_ap_efuse/uid"

.field private static mSupportMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sprd/validationtools/utils/ValidationToolsUtils;->mSupportMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioWhaleLoopbackFlag()Z
    .locals 5

    .line 104
    const-string v0, "ro.vendor.mmi.use.audio.whale.hal"

    const-string v1, ""

    .line 106
    .local v1, "flagValue":Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    invoke-static {v0, v2}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 107
    const-string v2, "ValidationToolsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAudioWhaleLoopbackFlag flagValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",AUDIO_WHALE_HAL_PROP="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static getImei(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .line 67
    nop

    .line 68
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 69
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 70
    .local v1, "phoneCnt":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIMEI===phoneCnt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ValidationToolsUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v2, ""

    .line 73
    .local v2, "imei":Ljava/lang/String;
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    .line 74
    invoke-static {v0, p1}, Lcom/sprd/validationtools/Safe;->deviceId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v2

    .line 75
    return-object v2

    .line 77
    :cond_0
    const-string v3, ""

    return-object v3
.end method

.method public static getReflactField(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 142
    const/4 v0, 0x1

    .line 144
    .local v0, "result":Z
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 145
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 146
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 147
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    .line 148
    const-string v3, "ValidationToolsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getReflactField result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    nop

    .end local v1    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static getUid()Ljava/lang/String;
    .locals 4

    .line 46
    const-string v0, ""

    .line 47
    .local v0, "uidText":Ljava/lang/String;
    const-string v1, "sys/class/misc/sprd_efuse_otp/uid"

    invoke-static {v1}, Lcom/sprd/validationtools/utils/FileUtils;->fileIsExists(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ":"

    if-eqz v2, :cond_1

    .line 48
    invoke-static {v1}, Lcom/sprd/validationtools/utils/FileUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "uid":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_0
    move-object v0, v1

    .line 54
    .end local v1    # "uid":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 55
    :cond_1
    const-string v1, "sys/class/misc/sprd_otp_ap_efuse/uid"

    invoke-static {v1}, Lcom/sprd/validationtools/utils/FileUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .restart local v1    # "uid":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 59
    :cond_2
    move-object v0, v1

    .line 62
    .end local v1    # "uid":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUID uidText:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ValidationToolsUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-object v0
.end method

.method public static get_TARGET_CAMERA_SENSOR_CCT_TCS3430_flag()Z
    .locals 5

    .line 128
    const-string v0, "ro.vendor.mmi.camera.sensor.cct"

    const-string v1, ""

    .line 130
    .local v1, "flagValue":Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    invoke-static {v0, v2}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 131
    const-string v2, "ValidationToolsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "native_get_TARGET_CAMERA_SENSOR_CCT_TCS3430_flag flagValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",CAMERA_SENSOR_CCT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ams_tcs3430"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static get_camera_sensor_tof_support_flag()Z
    .locals 5

    .line 116
    const-string v0, "ro.vendor.mmi.camera.sensor.tof"

    const-string v1, ""

    .line 118
    .local v1, "flagValue":Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    invoke-static {v0, v2}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 119
    const-string v2, "ValidationToolsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get_camera_sensor_tof_support_flag flagValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",CAMERA_SENSOR_TOF="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tof_vl53l0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static hasNavigationBar(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 158
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "qemu.hw.mainkeys"

    const-string v2, "-1"

    invoke-static {v1, v2}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "navBarOverride":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    return v0

    .line 161
    :cond_0
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    const/4 v0, 0x1

    return v0

    .line 164
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 165
    .local v2, "res":Landroid/content/res/Resources;
    const-string v3, "config_showNavigationBar"

    const-string v4, "bool"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 166
    .local v3, "resourceId":I
    if-lez v3, :cond_2

    .line 167
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 171
    .end local v1    # "navBarOverride":Ljava/lang/String;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "resourceId":I
    :cond_2
    goto :goto_0

    .line 169
    :catchall_0
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasNavigationBar Throwable e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ValidationToolsUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const/4 v1, 0x1

    return v1

    .line 85
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 289
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 290
    :cond_0
    const-string v0, "^[-\\+]?[\\d]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 291
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static isSupportAGDSP(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "support":Z
    :try_start_0
    const-string v1, "audio"

    .line 93
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 94
    .local v1, "audioManager":Landroid/media/AudioManager;
    const-string v2, "isAudioDspExist"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "ret":Ljava/lang/String;
    const-string v3, "ValidationToolsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAudioDspExist ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v3, "=1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 99
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    .end local v2    # "ret":Ljava/lang/String;
    goto :goto_1

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method public static isSupportAIKey()Z
    .locals 8

    .line 271
    const-string v0, "/sys/class/input/input2/modalias"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->fileIsExists(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 272
    return v2

    .line 273
    :cond_0
    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportAIKey result="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ValidationToolsUtils"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 276
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "strArray":[Ljava/lang/String;
    array-length v4, v1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 278
    .local v6, "str":Ljava/lang/String;
    const-string v7, "2FE"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 279
    const-string v2, "isSupportAIKey support AI key!"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v2, 0x1

    return v2

    .line 277
    .end local v6    # "str":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 284
    .end local v1    # "strArray":[Ljava/lang/String;
    :cond_2
    return v2
.end method

.method public static isSupportInPCBAConf(Ljava/lang/String;)Z
    .locals 5
    .param p0, "itemName"    # Ljava/lang/String;

    .line 212
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ValidationToolsUtils"

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty itemName:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return v1

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "containsKey containsKey="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sget-object v0, Lcom/sprd/validationtools/utils/ValidationToolsUtils;->mSupportMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    sget-object v0, Lcom/sprd/validationtools/utils/ValidationToolsUtils;->mSupportMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 219
    .local v0, "support":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "containsKey support="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 222
    .end local v0    # "support":Ljava/lang/Integer;
    :cond_2
    return v1
.end method

.method public static parsePCBAConf()V
    .locals 8

    .line 226
    const-string v0, "/vendor/etc/PCBA.conf"

    const/4 v1, 0x0

    .line 228
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->fileIsExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 229
    const-string v0, "ValidationToolsUtils"

    const-string v2, "File not exists:/vendor/etc/PCBA.conf"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    if-eqz v1, :cond_0

    .line 262
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e2":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 266
    .end local v0    # "e2":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 230
    :goto_1
    return-void

    .line 232
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v0, "UTF-8"

    invoke-direct {v3, v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "lineTxt":Ljava/lang/String;
    sget-object v2, Lcom/sprd/validationtools/utils/ValidationToolsUtils;->mSupportMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 237
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-eqz v2, :cond_5

    .line 238
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    goto :goto_2

    .line 241
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    const-string v3, "\t"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "names":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 244
    aget-object v4, v3, v2

    .line 245
    .local v4, "index":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v3, v5

    .line 246
    .local v5, "support":Ljava/lang/String;
    const/4 v6, 0x2

    aget-object v6, v3, v6

    .line 247
    .local v6, "name":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    .local v2, "supportInt":Ljava/lang/Integer;
    :try_start_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v7

    .line 252
    goto :goto_3

    .line 250
    :catch_1
    move-exception v7

    .line 251
    .local v7, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 253
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :goto_3
    sget-object v7, Lcom/sprd/validationtools/utils/ValidationToolsUtils;->mSupportMap:Ljava/util/Map;

    invoke-interface {v7, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 255
    .end local v2    # "supportInt":Ljava/lang/Integer;
    .end local v3    # "names":[Ljava/lang/String;
    .end local v4    # "index":Ljava/lang/String;
    .end local v5    # "support":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    :cond_4
    goto :goto_2

    .line 261
    .end local v0    # "lineTxt":Ljava/lang/String;
    :cond_5
    nop

    .line 262
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 266
    :cond_6
    :goto_4
    goto :goto_5

    .line 264
    :catch_2
    move-exception v0

    .line 265
    .local v0, "e2":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 267
    .end local v0    # "e2":Ljava/io/IOException;
    goto :goto_5

    .line 260
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 257
    :catch_3
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_6

    .line 262
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    .line 268
    :goto_5
    return-void

    .line 261
    :goto_6
    if-eqz v1, :cond_7

    .line 262
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_7

    .line 264
    :catch_4
    move-exception v2

    .line 265
    .local v2, "e2":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 266
    .end local v2    # "e2":Ljava/io/IOException;
    :cond_7
    :goto_7
    nop

    .line 267
    :goto_8
    throw v0
.end method

.method public static setLockSound(Landroid/content/Context;Z)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOn"    # Z

    .line 198
    nop

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 198
    const-string v1, "lockscreen_sounds_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    :cond_0
    move v0, v2

    .line 201
    .local v0, "lastStatus":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 202
    nop

    .line 201
    invoke-static {v2, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    return v0
.end method

.method public static setSoundEffect(Landroid/content/Context;Z)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOn"    # Z

    .line 179
    nop

    .line 180
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 181
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    .line 186
    :goto_0
    nop

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 186
    const-string v2, "sound_effects_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    move v3, v4

    :cond_1
    move v1, v3

    .line 189
    .local v1, "lastStatus":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 190
    nop

    .line 189
    invoke-static {v3, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 191
    return v1
.end method
