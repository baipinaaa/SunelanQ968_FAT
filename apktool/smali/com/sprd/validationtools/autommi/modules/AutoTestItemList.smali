.class public Lcom/sprd/validationtools/autommi/modules/AutoTestItemList;
.super Lcom/sprd/validationtools/modules/TestItemList;
.source "AutoTestItemList.java"


# static fields
.field private static final FILTER_CLASS_NAMES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AutoTestItemList"

.field private static mTestItemListInstance:Lcom/sprd/validationtools/autommi/modules/AutoTestItemList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;

    .line 62
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/rtc/RTCTest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;

    .line 63
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;

    .line 64
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    .line 65
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;

    .line 66
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    .line 67
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;

    .line 68
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;

    .line 69
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/sensor/GSensorCalibrationActivity;

    .line 70
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    .line 71
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    .line 72
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    .line 73
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/autommi/itemstest/sensor/PsensorAutoTestActivity;

    .line 75
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;

    .line 77
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;

    .line 78
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;

    .line 79
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;

    .line 80
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;

    .line 81
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;

    .line 82
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;

    .line 83
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;

    .line 84
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    .line 85
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    .line 86
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    .line 87
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    .line 88
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    .line 89
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    .line 90
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    .line 91
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    .line 92
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;

    .line 93
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/audio/SoundTriggerTestActivity;

    .line 94
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/led/RedLightTest;

    .line 95
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/led/GreenLightTest;

    .line 96
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;

    .line 97
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    .line 98
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    .line 99
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;

    .line 100
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;

    .line 101
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    .line 102
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sput-object v0, Lcom/sprd/validationtools/autommi/modules/AutoTestItemList;->FILTER_CLASS_NAMES:[Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/sprd/validationtools/autommi/modules/AutoTestItemList;->mTestItemListInstance:Lcom/sprd/validationtools/autommi/modules/AutoTestItemList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    invoke-direct {p0, p1}, Lcom/sprd/validationtools/modules/TestItemList;-><init>(Landroid/content/Context;)V

    .line 116
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItemList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 108
    sget-object v0, Lcom/sprd/validationtools/autommi/modules/AutoTestItemList;->mTestItemListInstance:Lcom/sprd/validationtools/autommi/modules/AutoTestItemList;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/sprd/validationtools/autommi/modules/AutoTestItemList;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/autommi/modules/AutoTestItemList;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sprd/validationtools/autommi/modules/AutoTestItemList;->mTestItemListInstance:Lcom/sprd/validationtools/autommi/modules/AutoTestItemList;

    .line 111
    :cond_0
    sget-object v0, Lcom/sprd/validationtools/autommi/modules/AutoTestItemList;->mTestItemListInstance:Lcom/sprd/validationtools/autommi/modules/AutoTestItemList;

    return-object v0
.end method


# virtual methods
.method public getfilterClassName()[Ljava/lang/String;
    .locals 1

    .line 120
    sget-object v0, Lcom/sprd/validationtools/autommi/modules/AutoTestItemList;->FILTER_CLASS_NAMES:[Ljava/lang/String;

    return-object v0
.end method
