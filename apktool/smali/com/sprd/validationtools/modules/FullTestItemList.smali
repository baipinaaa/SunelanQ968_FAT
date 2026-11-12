.class public Lcom/sprd/validationtools/modules/FullTestItemList;
.super Lcom/sprd/validationtools/modules/TestItemList;
.source "FullTestItemList.java"


# static fields
.field private static final FILTER_CLASS_NAMES:[Ljava/lang/String;

.field private static final FILTER_CLASS_NAMES_OT:[Ljava/lang/String;

.field private static final FILTER_CLASS_NAMES_YQ:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FullTestItemList"

.field private static mTestItemListInstance:Lcom/sprd/validationtools/modules/FullTestItemList;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 69
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;

    .line 71
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;

    .line 73
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-class v1, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;

    .line 75
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-class v1, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;

    .line 77
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-class v1, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;

    .line 78
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-class v1, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    .line 79
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-class v1, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;

    .line 80
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-class v1, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    .line 100
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-class v1, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    .line 101
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const-class v1, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;

    .line 105
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const-class v1, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    .line 107
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const-class v1, Lcom/sprd/validationtools/itemstest/fm/FMTest;

    .line 111
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0xc

    aput-object v1, v0, v14

    const-class v1, Lcom/sprd/validationtools/itemstest/audio/SoundTriggerTestActivity;

    .line 112
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v15, 0xd

    aput-object v1, v0, v15

    const-class v1, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    .line 115
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0xe

    aput-object v1, v0, v16

    const-class v1, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    .line 116
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0xf

    aput-object v1, v0, v17

    const-class v1, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v18, 0x10

    aput-object v1, v0, v18

    const-class v1, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    .line 117
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v19, 0x11

    aput-object v1, v0, v19

    const-class v1, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v20, 0x12

    aput-object v1, v0, v20

    const-class v1, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;

    .line 118
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v21, 0x13

    aput-object v1, v0, v21

    const-class v1, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;

    .line 119
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v22, 0x14

    aput-object v1, v0, v22

    const-class v1, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;

    .line 120
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v15, 0x15

    aput-object v1, v0, v15

    sput-object v0, Lcom/sprd/validationtools/modules/FullTestItemList;->FILTER_CLASS_NAMES_YQ:[Ljava/lang/String;

    .line 124
    new-array v1, v15, [Ljava/lang/String;

    const-class v15, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;

    .line 125
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v1, v2

    const-class v2, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;

    .line 127
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-class v2, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;

    .line 128
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-class v2, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;

    .line 129
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-class v2, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;

    .line 131
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-class v2, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;

    .line 132
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-class v2, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    .line 133
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-class v2, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;

    .line 134
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-class v2, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    .line 135
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    const-class v2, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    .line 136
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    const-class v2, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;

    .line 138
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    const-class v2, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    .line 139
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    const-class v2, Lcom/sprd/validationtools/itemstest/audio/SoundTriggerTestActivity;

    .line 141
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    const-class v2, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    .line 143
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-class v2, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    .line 144
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    const-class v2, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v17

    const-class v2, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    .line 145
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v18

    const-class v2, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v19

    const-class v2, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;

    .line 146
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v20

    const-class v2, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;

    .line 147
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v21

    const-class v2, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;

    .line 148
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v22

    sput-object v1, Lcom/sprd/validationtools/modules/FullTestItemList;->FILTER_CLASS_NAMES_OT:[Ljava/lang/String;

    .line 151
    const-string v2, "ro.product.system.device"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "YQ5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sput-object v0, Lcom/sprd/validationtools/modules/FullTestItemList;->FILTER_CLASS_NAMES:[Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    sput-object v0, Lcom/sprd/validationtools/modules/FullTestItemList;->mTestItemListInstance:Lcom/sprd/validationtools/modules/FullTestItemList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 163
    invoke-direct {p0, p1}, Lcom/sprd/validationtools/modules/TestItemList;-><init>(Landroid/content/Context;)V

    .line 164
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItemList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 156
    sget-object v0, Lcom/sprd/validationtools/modules/FullTestItemList;->mTestItemListInstance:Lcom/sprd/validationtools/modules/FullTestItemList;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/sprd/validationtools/modules/FullTestItemList;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/modules/FullTestItemList;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sprd/validationtools/modules/FullTestItemList;->mTestItemListInstance:Lcom/sprd/validationtools/modules/FullTestItemList;

    .line 159
    :cond_0
    sget-object v0, Lcom/sprd/validationtools/modules/FullTestItemList;->mTestItemListInstance:Lcom/sprd/validationtools/modules/FullTestItemList;

    return-object v0
.end method


# virtual methods
.method public getfilterClassName()[Ljava/lang/String;
    .locals 1

    .line 168
    sget-object v0, Lcom/sprd/validationtools/modules/FullTestItemList;->FILTER_CLASS_NAMES:[Ljava/lang/String;

    return-object v0
.end method
