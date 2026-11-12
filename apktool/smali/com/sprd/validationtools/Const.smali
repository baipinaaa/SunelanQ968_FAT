.class public Lcom/sprd/validationtools/Const;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field public static final AUTO_TEST_FINAL_RESULT_INDEX:I = 0x3f

.field public static final AUTO_TEST_FLAG_FAIL:I = 0x2

.field public static final AUTO_TEST_FLAG_PASS:I = 0x1

.field public static final AUTO_TEST_ITEM_FAIL:I = 0x102

.field public static final AUTO_TEST_ITEM_PASS:I = 0x101

.field public static final AUTO_TEST_NOT_SUPPORT:I = 0x0

.field public static final AUTO_TEST_NUMBER:I = 0x40

.field public static final AUTO_TEST_PATH_NAME:Ljava/lang/String; = "/mnt/vendor/BBATtest.txt"

.field public static final BOOT_MODE_AUTOMMI:Ljava/lang/String; = "apkmmi_auto_mode"

.field public static final CALIBRATOR_CMD:Ljava/lang/String; = "/sys/class/sprd_sensorhub/sensor_hub/calibrator_cmd"

.field public static final CALIBRATOR_DATA:Ljava/lang/String; = "/sys/class/sprd_sensorhub/sensor_hub/calibrator_data"

.field public static final CAMERA_CALI_VERI:Ljava/lang/String; = "persist.vendor.cam.multicam.cali.veri"

.field public static final CAMERA_FLASH:Ljava/lang/String; = "/sys/devices/virtual/misc/sprd_flash/test"

.field public static DEBUG:Z = false

.field public static final DEFAULT:I = 0x2

.field public static final DISABLE_MSENSOR_CALI:Z = true

.field public static final EXT_COMMON_PATH:I = 0x1

.field public static final EXT_EMULATED_PATH:I = 0x0

.field public static final FAIL:I = 0x0

.field public static final HEADSET_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/h2w/state"

.field public static final INTENT_BACKGROUND_TEST_RESULT:Ljava/lang/String; = "bgtestresult"

.field public static final INTENT_PARA_TEST_CLASSNAME:Ljava/lang/String; = "test_classname"

.field public static final INTENT_PARA_TEST_INDEX:Ljava/lang/String; = "testindex"

.field public static final INTENT_PARA_TEST_NAME:Ljava/lang/String; = "testname"

.field public static final INTENT_RESULT_TYPE:Ljava/lang/String; = "resulttype"

.field public static final IS_SUPPORT_CALIBTATION_TEST:Z

.field public static final IS_SUPPORT_LED_TEST:Z

.field public static final IS_SUPPORT_LIGHT_CALIBTATION_TEST:Z

.field public static final LED_BLUE_PATH:Ljava/lang/String; = "/sys/class/leds/sc27xx:blue/brightness"

.field public static final LED_GREEN_PATH:Ljava/lang/String; = "/sys/class/leds/sc27xx:green/brightness"

.field public static final LED_PATH:Ljava/lang/String; = "/sys/class/leds/red/brightness"

.field public static final LED_RED_PATH:Ljava/lang/String; = "/sys/class/leds/sc27xx:red/brightness"

.field public static final LIGHT_CALIBRATOR_CMD:Ljava/lang/String; = "/sys/class/sprd_sensorhub/sensor_hub/light_sensor_calibrator"

.field public static final OTG_PATH:Ljava/lang/String; = "/sys/class/dual_role_usb/sprd_dual_role_usb/supported_modes"

.field public static final OTG_PATH_k414:Ljava/lang/String; = "/sys/class/typec/port0/port_type"

.field public static final OTG_PATH_k515:Ljava/lang/String; = "/sys/class/typec/port1/port_type"

.field public static final OTG_UDISK_PATH:I = 0x2

.field public static final PRODUCTINFO_DIR:Ljava/lang/String; = "/mnt/vendor/productinfo"

.field public static final QUICK_CHARGER_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/charger.0/support_fast_charge"

.field public static final RESULT_TEST_NAME:Ljava/lang/String; = "result"

.field public static final RESULT_TYPE_FOR_SYSTEMTEST:I = 0x0

.field public static final RESULT_TYPE_NORMAL:I = 0x1

.field public static final SUCCESS:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field public static final TEST_ITEM_DONE:I = 0x0

.field public static final WIRELESS_CHARGER_PATH_L6:Ljava/lang/String; = "/sys/class/power_supply/nu1619_wireless_charger"

.field public static final WIRELESS_CHARGER_PATH_N6:Ljava/lang/String; = "/sys/class/power_supply/sy65153_wireless_charger"

.field public static final startTestID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "Const"

    sput-object v0, Lcom/sprd/validationtools/Const;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sprd/validationtools/Const;->DEBUG:Z

    .line 72
    const-string v0, "/sys/class/leds/red/brightness"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->fileIsExists(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sprd/validationtools/Const;->IS_SUPPORT_LED_TEST:Z

    .line 73
    const-string v0, "/sys/class/sprd_sensorhub/sensor_hub/calibrator_cmd"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->fileIsExists(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sprd/validationtools/Const;->IS_SUPPORT_CALIBTATION_TEST:Z

    .line 95
    const-string v0, "/sys/class/sprd_sensorhub/sensor_hub/light_sensor_calibrator"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->fileIsExists(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sprd/validationtools/Const;->IS_SUPPORT_LIGHT_CALIBTATION_TEST:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSupportInfo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "testClassName_"    # Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "testClass":Ljava/lang/Class;
    const/4 v1, 0x0

    .line 168
    .local v1, "testClassGetMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    .line 169
    if-eqz v0, :cond_0

    .line 170
    const-string v4, "isSupport"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v1, v4

    .line 179
    :cond_0
    nop

    .line 181
    if-eqz v1, :cond_1

    .line 183
    const/4 v4, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    .line 188
    :catch_0
    move-exception v2

    .line 189
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Lcom/sprd/validationtools/Const;->TAG:Ljava/lang/String;

    const-string v5, "invoke isSupport method InvocationTargetException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 187
    .local v2, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lcom/sprd/validationtools/Const;->TAG:Ljava/lang/String;

    const-string v5, "invoke isSupport method IllegalAccessException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 184
    :catch_2
    move-exception v2

    .line 185
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/sprd/validationtools/Const;->TAG:Ljava/lang/String;

    const-string v5, "invoke isSupport method IllegalArgumentException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    return v3

    .line 175
    :catch_3
    move-exception v3

    .line 177
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lcom/sprd/validationtools/Const;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "support the test item by default: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return v2

    .line 172
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v2

    .line 173
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v4, Lcom/sprd/validationtools/Const;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not found calss: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v3
.end method

.method public static isAutoTestMode()Z
    .locals 2

    .line 98
    const-string v0, "ro.bootmode"

    const-string v1, "unknow"

    invoke-static {v0, v1}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apkmmi_auto_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isBackSupport(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 129
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    .line 131
    .local v0, "isSupport":Z
    sget-object v1, Lcom/sprd/validationtools/Const;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hw Back is support:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v1, 0x1

    return v1
.end method

.method public static isCameraSupport()Z
    .locals 4

    .line 109
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 110
    .local v0, "mNumberOfCameras":I
    new-array v1, v0, [Landroid/hardware/Camera$CameraInfo;

    .line 111
    .local v1, "mInfo":[Landroid/hardware/Camera$CameraInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 112
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v3, v1, v2

    .line 113
    aget-object v3, v1, v2

    invoke-static {v2, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 114
    aget-object v3, v1, v2

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 115
    const/4 v3, 0x1

    return v3

    .line 111
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static isHomeSupport(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 122
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    .line 124
    .local v0, "isSupport":Z
    sget-object v1, Lcom/sprd/validationtools/Const;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hw home is support:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v1, 0x1

    return v1
.end method

.method public static isMenuSupport(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 136
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    .line 138
    .local v0, "isSupport":Z
    sget-object v1, Lcom/sprd/validationtools/Const;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hw menu is support:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v1, 0x1

    return v1
.end method

.method public static isRefMicSupport()Z
    .locals 2

    .line 157
    const-string v0, "ro.factory.remove.refmic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSupportCameraCaliVeri()Z
    .locals 4

    .line 103
    const-string v0, "persist.vendor.cam.multicam.cali.veri"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "calibraionSupport":Ljava/lang/String;
    sget-object v1, Lcom/sprd/validationtools/Const;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportCameraCaliVeri calibraionSupport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isSupportFeaturePhone()Z
    .locals 1

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public static isVolumeDownSupport()Z
    .locals 4

    .line 150
    const-string v0, "ro.config.hw.vol_down_support"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 152
    .local v0, "isSupport":Z
    sget-object v1, Lcom/sprd/validationtools/Const;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hw VolumeDown is support:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v0
.end method

.method public static isVolumeUpSupport()Z
    .locals 4

    .line 143
    const-string v0, "ro.config.hw.vol_up_support"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 145
    .local v0, "isSupport":Z
    sget-object v1, Lcom/sprd/validationtools/Const;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hw VolumeUp is support:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v0
.end method
