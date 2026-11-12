.class public Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "WirelessChargerTest.java"


# static fields
.field private static final CHARGER_STATUS_AC:Ljava/lang/String; = "/sys/class/power_supply/ac/online"

.field private static final CHARGER_STATUS_USB:Ljava/lang/String; = "/sys/class/power_supply/usb/online"

.field private static final CHARGING_PROTOCOL:Ljava/lang/String; = "/sys/class/power_supply/nu1619_wireless_charger/wireless_type"

.field private static final ENG_CHARGER_CURRENT:Ljava/lang/String; = "/sys/class/power_supply/battery/current_now"

.field private static final ENG_CHARGER_VOLTAGE:Ljava/lang/String; = "/sys/class/power_supply/sc27xx-fgu/constant_charge_voltage"

.field private static final NOT_WORKING:I = 0x0

.field private static final PLUGGED:Ljava/lang/String; = "plugged"

.field private static final STATUS:Ljava/lang/String; = "status"

.field private static final TAG:Ljava/lang/String; = "WirelessChargerTest"

.field private static final TEST_RESULT_FAIL:Ljava/lang/String; = "fail"

.field private static final TEST_RESULT_SUCCESS:Ljava/lang/String; = "success"

.field private static final VOLTAGE:Ljava/lang/String; = "voltage"

.field private static final WIRELESS_CHARGER_STATUS:Ljava/lang/String; = "/sys/class/power_supply/wireless/online"

.field private static final WORKING:I = 0x1


# instance fields
.field private chargerStateWireless:I

.field private mBatteryElectronic:F

.field private mBatteryElectronicTextView:Landroid/widget/TextView;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mChargerVoltage:F

.field private mCompleteTest:Ljava/lang/Runnable;

.field private mElecBeforeCharge:I

.field private mElectronicTextView:Landroid/widget/TextView;

.field private mElectronicUpdate:Ljava/lang/Runnable;

.field public mGetCurrentRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mInputCurrent:Ljava/lang/String;

.field private mIsPlugUSB_AC:Z

.field private mIsPlugWirelsee:Z

.field private mPluggeString:Ljava/lang/String;

.field private mRetryNum:I

.field private mTestResultTextView:Landroid/widget/TextView;

.field public mUpdataRunnable:Ljava/lang/Runnable;

.field private mWaitTime:I

.field private pluggedTextView:Landroid/widget/TextView;

.field private statusTextView:Landroid/widget/TextView;

.field task:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private voltageTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetchargerStateWireless(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->chargerStateWireless:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryElectronic(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)F
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mBatteryElectronic:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryElectronicTextView(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mBatteryElectronicTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChargerVoltage(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)F
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mChargerVoltage:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCompleteTest(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mCompleteTest:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmElecBeforeCharge(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mElecBeforeCharge:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmElectronicUpdate(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mElectronicUpdate:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPlugUSB_AC(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mIsPlugUSB_AC:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPluggeString(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mPluggeString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetryNum(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mRetryNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mTestResultTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitTime(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mWaitTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpluggedTextView(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->pluggedTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstatusTextView(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->statusTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvoltageTextView(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->voltageTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputchargerStateWireless(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->chargerStateWireless:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBatteryElectronic(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;F)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mBatteryElectronic:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmElecBeforeCharge(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mElecBeforeCharge:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsPlugUSB_AC(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mIsPlugUSB_AC:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPluggeString(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mPluggeString:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRetryNum(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mRetryNum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWaitTime(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mWaitTime:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetInputElectronicNewStep(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->getInputElectronicNewStep()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitView(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->initView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreadFile(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartCharge(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->startCharge()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopCharge(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->stopCharge()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mPluggeString:Ljava/lang/String;

    .line 62
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mIsPlugWirelsee:Z

    .line 63
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mIsPlugUSB_AC:Z

    .line 65
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->task:Landroid/os/AsyncTask;

    .line 66
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mInputCurrent:Ljava/lang/String;

    .line 67
    iput v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mRetryNum:I

    .line 68
    iput v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mWaitTime:I

    .line 69
    iput v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mElecBeforeCharge:I

    .line 73
    new-instance v0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;-><init>(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mElectronicUpdate:Ljava/lang/Runnable;

    .line 126
    new-instance v0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$2;-><init>(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mCompleteTest:Ljava/lang/Runnable;

    .line 173
    new-instance v0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$3;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$3;-><init>(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mUpdataRunnable:Ljava/lang/Runnable;

    .line 181
    new-instance v0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$4;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$4;-><init>(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mGetCurrentRunnable:Ljava/lang/Runnable;

    .line 286
    new-instance v0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;-><init>(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getDateFromNode(Ljava/lang/String;)F
    .locals 8
    .param p1, "nodeString"    # Ljava/lang/String;

    .line 262
    const-string v0, "getDateFromNode fail , nodeString is:"

    const-string v1, "WirelessChargerTest"

    const/16 v2, 0x400

    new-array v3, v2, [C

    .line 263
    .local v3, "buffer":[C
    const/high16 v4, -0x3d380000    # -100.0f

    .line 264
    .local v4, "batteryElectronic":F
    const/4 v5, 0x0

    .line 266
    .local v5, "file":Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 267
    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v2}, Ljava/io/FileReader;->read([CII)I

    move-result v2

    .line 268
    .local v2, "len":I
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3, v6, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v6

    .line 275
    .end local v2    # "len":I
    nop

    .line 276
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 277
    const/4 v5, 0x0

    goto :goto_2

    .line 279
    :catch_0
    move-exception v2

    .line 280
    .local v2, "io":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 274
    .end local v2    # "io":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 271
    :catch_1
    move-exception v2

    .line 272
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    if-eqz v5, :cond_0

    .line 276
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 279
    :catch_2
    move-exception v2

    .line 280
    .local v2, "io":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 269
    .end local v2    # "io":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 270
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 275
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_0

    .line 276
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 277
    :goto_0
    const/4 v0, 0x0

    move-object v5, v0

    .end local v5    # "file":Ljava/io/FileReader;
    .local v0, "file":Ljava/io/FileReader;
    goto :goto_2

    .line 279
    .end local v0    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    :catch_4
    move-exception v2

    .line 280
    .local v2, "io":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v2    # "io":Ljava/io/IOException;
    goto :goto_3

    .line 281
    :cond_0
    :goto_2
    nop

    .line 283
    :goto_3
    return v4

    .line 275
    :goto_4
    if-eqz v5, :cond_1

    .line 276
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 277
    const/4 v5, 0x0

    goto :goto_5

    .line 279
    :catch_5
    move-exception v6

    .line 280
    .local v6, "io":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 281
    .end local v6    # "io":Ljava/io/IOException;
    :cond_1
    :goto_5
    nop

    .line 282
    :goto_6
    throw v2
.end method

.method private getInputElectronicNewStep()Ljava/lang/String;
    .locals 9

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsPlugUSB_AC = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mIsPlugUSB_AC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WirelessChargerTest"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mIsPlugUSB_AC:Z

    const-string v2, "fail"

    if-eqz v0, :cond_0

    .line 220
    return-object v2

    .line 222
    :cond_0
    const-string v0, ""

    .line 223
    .local v0, "result":Ljava/lang/String;
    const-string v3, ""

    .line 224
    .local v3, "inputCurrent":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInputElectronicNewStep inputCurrent["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :try_start_0
    const-string v4, "/sys/class/power_supply/battery/current_now"

    invoke-direct {p0, v4}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    .line 228
    .local v4, "c2":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getInputElectronicNewStep inputCurrent c2=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget v6, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mElecBeforeCharge:I

    sub-int v6, v4, v6

    .line 230
    .local v6, "i1":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getInputElectronicNewStep inputCurrent i1=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getInputElectronicNewStep inputCurrent mChargerVoltage=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mChargerVoltage:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    const-string v1, "success"

    const/16 v5, 0xc8

    if-lt v6, v5, :cond_1

    .line 233
    move-object v0, v1

    goto :goto_0

    .line 234
    :cond_1
    const/16 v7, 0x64

    if-le v6, v7, :cond_2

    if-ge v6, v5, :cond_2

    :try_start_1
    iget v5, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mChargerVoltage:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const v7, 0x45802000    # 4100.0f

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_2

    .line 235
    move-object v0, v1

    goto :goto_0

    .line 237
    :cond_2
    move-object v0, v2

    .line 242
    .end local v4    # "c2":I
    .end local v6    # "i1":I
    :goto_0
    goto :goto_1

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 243
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    return-object v0
.end method

.method private initView()V
    .locals 4

    .line 248
    const-string v0, "/sys/class/power_supply/battery/current_now"

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mBatteryElectronic:F

    .line 249
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mBatteryElectronicTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mBatteryElectronic:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ma"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    const-string v0, "/sys/class/power_supply/sc27xx-fgu/constant_charge_voltage"

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->getDateFromNode(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mChargerVoltage:F

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initView mChargerVoltage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mChargerVoltage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WirelessChargerTest"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mChargerVoltage:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mElectronicTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mChargerVoltage:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mElectronicTextView:Landroid/widget/TextView;

    const-string v1, "n/a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :goto_0
    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 393
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/power_supply/sy65153_wireless_charger"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    const/4 v1, 0x0

    return v1

    .line 397
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .line 359
    const-string v0, "read file close fail"

    const-string v1, "WirelessChargerTest"

    const/16 v2, 0x400

    new-array v3, v2, [C

    .line 360
    .local v3, "buffer":[C
    const-string v4, ""

    .line 361
    .local v4, "batteryElectronic":Ljava/lang/String;
    const/4 v5, 0x0

    .line 363
    .local v5, "file":Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 364
    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v2}, Ljava/io/FileReader;->read([CII)I

    move-result v2

    .line 365
    .local v2, "len":I
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3, v6, v2}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v7

    .line 370
    .end local v2    # "len":I
    nop

    .line 371
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 372
    const/4 v5, 0x0

    goto :goto_0

    .line 369
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 366
    :catch_0
    move-exception v2

    .line 367
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_0

    .line 371
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 372
    const/4 v0, 0x0

    move-object v5, v0

    .end local v5    # "file":Ljava/io/FileReader;
    .local v0, "file":Ljava/io/FileReader;
    goto :goto_0

    .line 374
    .end local v0    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .line 375
    .local v2, "io":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .end local v2    # "io":Ljava/io/IOException;
    goto :goto_1

    .line 376
    :cond_0
    :goto_0
    nop

    .line 378
    :goto_1
    return-object v4

    .line 370
    :goto_2
    if-eqz v5, :cond_1

    .line 371
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 372
    const/4 v5, 0x0

    goto :goto_3

    .line 374
    :catch_2
    move-exception v6

    .line 375
    .local v6, "io":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 376
    .end local v6    # "io":Ljava/io/IOException;
    :cond_1
    :goto_3
    nop

    .line 377
    :goto_4
    throw v2
.end method

.method private showTips()V
    .locals 3

    .line 197
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 198
    const v1, 0x7f0901b0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$5;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$5;-><init>(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)V

    .line 199
    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 205
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 206
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 207
    return-void
.end method

.method private startCharge()V
    .locals 3

    .line 387
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/PhaseCheckParse;->writeChargeSwitch(I)Z

    move-result v0

    .line 388
    .local v0, "res":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCharge res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WirelessChargerTest"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void
.end method

.method private stopCharge()V
    .locals 3

    .line 382
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/PhaseCheckParse;->writeChargeSwitch(I)Z

    move-result v0

    .line 383
    .local v0, "res":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCharge res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WirelessChargerTest"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 138
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 141
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->setTitle(I)V

    .line 142
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->setContentView(I)V

    .line 143
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mHandler:Landroid/os/Handler;

    .line 145
    const v0, 0x7f050095

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->statusTextView:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f05007a

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->pluggedTextView:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f0500fb

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->voltageTextView:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f05003c

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mElectronicTextView:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f0500b3

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mTestResultTextView:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f050020

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mBatteryElectronicTextView:Landroid/widget/TextView;

    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 351
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mCompleteTest:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 352
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->task:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 353
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 355
    :cond_0
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 356
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 211
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 212
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mElectronicUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 213
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mUpdataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mGetCurrentRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 159
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 160
    const-string v0, "/sys/class/power_supply/battery/current_now"

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mBatteryElectronic:F

    .line 161
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mBatteryElectronicTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mBatteryElectronic:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ma"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const-string v0, "/sys/class/power_supply/usb/online"

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 163
    const-string v0, "/sys/class/power_supply/ac/online"

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mIsPlugUSB_AC:Z

    .line 164
    if-eqz v1, :cond_2

    .line 165
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->showTips()V

    goto :goto_2

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mUpdataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mElectronicUpdate:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mGetCurrentRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    :goto_2
    return-void
.end method
