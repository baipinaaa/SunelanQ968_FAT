.class public Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "QuickChargerTest.java"


# static fields
.field private static final BATTERY_CHARGER_VOLTAGE:Ljava/lang/String; = "/sys/class/power_supply/sc27xx-fgu/VOLTAGE_AVG"

.field private static final BATTERY_CURRENT_VOLTAGE:Ljava/lang/String; = "/sys/class/power_supply/battery/voltage_now"

.field private static final ENABLE_BATTRY_TEMPERATURE:Z

.field private static final ENG_CHARGER_CURRENT:Ljava/lang/String; = "/sys/class/power_supply/battery/current_now"

.field private static final ENG_CHARGER_TEMP:Ljava/lang/String; = "sys/class/power_supply/battery/temp"

.field private static final ENG_CHARGER_VOLTAGE:Ljava/lang/String; = "/sys/class/power_supply/sc27xx-fgu/constant_charge_voltage"

.field private static final ENG_REAL_BATTERY_TEMPERATURE:Ljava/lang/String; = "sys/class/power_supply/sc27xx-fgu/temp"

.field private static final ENG_REAL_CHARGER_TYPE:Ljava/lang/String; = "/sys/class/power_supply/battery/charge_type"

.field private static final PLUGGED:Ljava/lang/String; = "plugged"

.field public static final QUICK_CHARGER_TYPE_PD_PPS:Ljava/lang/String; = "/sys/class/power_supply/bq2597x-standalone"

.field private static final STATUS:Ljava/lang/String; = "status"

.field private static final TAG:Ljava/lang/String; = "QuickChargerTest"

.field private static final TEST_RESULT_FAIL:Ljava/lang/String; = "fail"

.field private static final TEST_RESULT_SUCCESS:Ljava/lang/String; = "success"

.field private static final VOLTAGE:Ljava/lang/String; = "voltage"


# instance fields
.field private mBatteryElectronic:F

.field private mBatteryElectronicTextView:Landroid/widget/TextView;

.field private mBatteryPercent:I

.field private mBatteryTemperature:F

.field private mBatteryVoltageTextView:Landroid/widget/TextView;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mChargerType:Ljava/lang/String;

.field private mChargerVolatgeTextView:Landroid/widget/TextView;

.field private mChargerVoltage:F

.field private mChargingProtocolTextView:Landroid/widget/TextView;

.field public mCheckRunnable:Ljava/lang/Runnable;

.field private mCompleteTest:Ljava/lang/Runnable;

.field private mElecBeforeCharge:I

.field private mElectronicUpdate:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIsQuickCharger:Z

.field private mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

.field private mPluggeString:Ljava/lang/String;

.field private mPluggedType:I

.field private mRetryNum:I

.field private mTemperatureTableRow:Landroid/widget/TableRow;

.field private mTemperatureTextView:Landroid/widget/TextView;

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

.field private updateTime:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBatteryElectronic(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)F
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryElectronic:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryElectronicTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryElectronicTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryPercent(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryPercent:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryTemperature(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)F
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryTemperature:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryVoltageTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryVoltageTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChargerType(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mChargerType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChargerVoltage(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)F
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mChargerVoltage:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmChargingProtocolTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mChargingProtocolTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCompleteTest(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mCompleteTest:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmElecBeforeCharge(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mElecBeforeCharge:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmElectronicUpdate(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mElectronicUpdate:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsQuickCharger(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mIsQuickCharger:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPluggeString(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mPluggeString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPluggedType(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mPluggedType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetryNum(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mRetryNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTemperatureTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mTemperatureTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mTestResultTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitTime(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mWaitTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpluggedTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->pluggedTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstatusTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->statusTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetupdateTime(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->updateTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmBatteryElectronic(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;F)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryElectronic:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBatteryPercent(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryPercent:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBatteryTemperature(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;F)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryTemperature:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmElecBeforeCharge(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mElecBeforeCharge:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsQuickCharger(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mIsQuickCharger:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPluggeString(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mPluggeString:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPluggedType(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mPluggedType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRetryNum(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mRetryNum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWaitTime(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mWaitTime:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputupdateTime(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->updateTime:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetChargerTypeTip(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getChargerTypeTip()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetDateFromNode(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;Ljava/lang/String;)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getDateFromNode(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetInputElectronicNewStep(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getInputElectronicNewStep()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->initView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreadFile(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartCharge(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->startCharge()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopCharge(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->stopCharge()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetENABLE_BATTRY_TEMPERATURE()Z
    .locals 1

    sget-boolean v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->ENABLE_BATTRY_TEMPERATURE:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-string v0, "sys/class/power_supply/sc27xx-fgu/temp"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->fileIsExists(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->ENABLE_BATTRY_TEMPERATURE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mPluggeString:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    .line 75
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->task:Landroid/os/AsyncTask;

    .line 78
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mChargerType:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mIsQuickCharger:Z

    .line 80
    iput v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mRetryNum:I

    .line 81
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mWaitTime:I

    .line 82
    iput v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->updateTime:I

    .line 83
    iput v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryPercent:I

    .line 84
    iput v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mElecBeforeCharge:I

    .line 88
    new-instance v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;-><init>(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mElectronicUpdate:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$2;-><init>(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mCompleteTest:Ljava/lang/Runnable;

    .line 192
    new-instance v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$3;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$3;-><init>(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mUpdataRunnable:Ljava/lang/Runnable;

    .line 210
    new-instance v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;-><init>(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mCheckRunnable:Ljava/lang/Runnable;

    .line 359
    new-instance v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;-><init>(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getChargerTypeTip()Ljava/lang/String;
    .locals 4

    .line 320
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/power_supply/bq2597x-standalone"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 322
    .local v1, "isFileExist":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quick charger type PD_PPS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuickChargerTest"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mChargerType:Ljava/lang/String;

    const-string v3, "PD_PPS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    const-string v2, "PPS "

    return-object v2

    .line 325
    :cond_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mChargerType:Ljava/lang/String;

    const-string v3, "PD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 326
    const-string v2, "PD "

    return-object v2

    .line 328
    :cond_1
    const-string v2, ""

    return-object v2
.end method

.method private getDateFromNode(Ljava/lang/String;)F
    .locals 8
    .param p1, "nodeString"    # Ljava/lang/String;

    .line 333
    const-string v0, "getDateFromNode fail , nodeString is:"

    const-string v1, "QuickChargerTest"

    const/16 v2, 0x400

    new-array v3, v2, [C

    .line 336
    .local v3, "buffer":[C
    const/high16 v4, -0x3d380000    # -100.0f

    .line 337
    .local v4, "batteryElectronic":F
    const/4 v5, 0x0

    .line 339
    .local v5, "file":Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 340
    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v2}, Ljava/io/FileReader;->read([CII)I

    move-result v2

    .line 341
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

    .line 348
    .end local v2    # "len":I
    nop

    .line 349
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 350
    const/4 v5, 0x0

    goto :goto_2

    .line 352
    :catch_0
    move-exception v2

    .line 353
    .local v2, "io":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 347
    .end local v2    # "io":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 344
    :catch_1
    move-exception v2

    .line 345
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 348
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    if-eqz v5, :cond_0

    .line 349
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 352
    :catch_2
    move-exception v2

    .line 353
    .local v2, "io":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 342
    .end local v2    # "io":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 343
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 348
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_0

    .line 349
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 350
    :goto_0
    const/4 v0, 0x0

    move-object v5, v0

    .end local v5    # "file":Ljava/io/FileReader;
    .local v0, "file":Ljava/io/FileReader;
    goto :goto_2

    .line 352
    .end local v0    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    :catch_4
    move-exception v2

    .line 353
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

    .line 355
    .end local v2    # "io":Ljava/io/IOException;
    goto :goto_3

    .line 354
    :cond_0
    :goto_2
    nop

    .line 356
    :goto_3
    return v4

    .line 348
    :goto_4
    if-eqz v5, :cond_1

    .line 349
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 350
    const/4 v5, 0x0

    goto :goto_5

    .line 352
    :catch_5
    move-exception v6

    .line 353
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

    .line 354
    .end local v6    # "io":Ljava/io/IOException;
    :cond_1
    :goto_5
    nop

    .line 355
    :goto_6
    throw v2
.end method

.method private getInputElectronicNewStep()Ljava/lang/String;
    .locals 9

    .line 262
    const-string v0, ""

    .line 263
    .local v0, "result":Ljava/lang/String;
    const-string v1, ""

    .line 264
    .local v1, "inputCurrent":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInputElectronicNewStep inputCurrent["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "QuickChargerTest"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v2, 0x0

    .line 267
    .local v2, "c2":I
    :try_start_0
    const-string v5, "/sys/class/power_supply/battery/current_now"

    invoke-direct {p0, v5}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x3e8

    div-int/2addr v5, v6

    move v2, v5

    .line 268
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getInputElectronicNewStep inputCurrent c2=["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget v5, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mElecBeforeCharge:I

    sub-int v5, v2, v5

    .line 270
    .local v5, "i1":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getInputElectronicNewStep inputCurrent i1=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getInputElectronicNewStep inputCurrent mChargerVoltage=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mChargerVoltage:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    if-lt v5, v6, :cond_0

    .line 274
    const-string v3, "success"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 278
    .end local v2    # "c2":I
    .end local v5    # "i1":I
    :cond_0
    goto :goto_0

    .line 276
    :catch_0
    move-exception v2

    .line 277
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 279
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return-object v0
.end method

.method private initView()V
    .locals 4

    .line 284
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/PhaseCheckParse;->getChargeChargingstatus(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mChargerVoltage:F

    .line 285
    const-string v0, "/sys/class/power_supply/battery/current_now"

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryElectronic:F

    .line 286
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryElectronicTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryElectronic:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ma"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryVoltageTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/class/power_supply/battery/voltage_now"

    invoke-direct {p0, v2}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getDateFromNode(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initView mChargerVoltage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mChargerVoltage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickChargerTest"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-boolean v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->ENABLE_BATTRY_TEMPERATURE:Z

    if-eqz v0, :cond_0

    .line 291
    const-string v0, "sys/class/power_supply/sc27xx-fgu/temp"

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getDateFromNode(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryTemperature:F

    goto :goto_0

    .line 293
    :cond_0
    const-string v0, "sys/class/power_supply/battery/temp"

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getDateFromNode(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryTemperature:F

    .line 295
    :goto_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mTemperatureTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryTemperature:F

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u2103"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mChargerVoltage:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mPluggedType:I

    if-ltz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mChargerVolatgeTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mChargerVoltage:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mChargerVolatgeTextView:Landroid/widget/TextView;

    const-string v1, "n/a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    :goto_1
    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 479
    const-string v0, "/sys/class/power_supply/battery/charger.0/support_fast_charge"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "res":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    const/4 v1, 0x1

    return v1

    .line 483
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .line 445
    const-string v0, "read file close fail"

    const-string v1, "QuickChargerTest"

    const/16 v2, 0x400

    new-array v3, v2, [C

    .line 446
    .local v3, "buffer":[C
    const-string v4, ""

    .line 447
    .local v4, "batteryElectronic":Ljava/lang/String;
    const/4 v5, 0x0

    .line 449
    .local v5, "file":Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 450
    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v2}, Ljava/io/FileReader;->read([CII)I

    move-result v2

    .line 451
    .local v2, "len":I
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3, v6, v2}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v7

    .line 456
    .end local v2    # "len":I
    nop

    .line 457
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 458
    const/4 v5, 0x0

    goto :goto_0

    .line 455
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 452
    :catch_0
    move-exception v2

    .line 453
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 456
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_0

    .line 457
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 458
    const/4 v0, 0x0

    move-object v5, v0

    .end local v5    # "file":Ljava/io/FileReader;
    .local v0, "file":Ljava/io/FileReader;
    goto :goto_0

    .line 460
    .end local v0    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .line 461
    .local v2, "io":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .end local v2    # "io":Ljava/io/IOException;
    goto :goto_1

    .line 462
    :cond_0
    :goto_0
    nop

    .line 464
    :goto_1
    return-object v4

    .line 456
    :goto_2
    if-eqz v5, :cond_1

    .line 457
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 458
    const/4 v5, 0x0

    goto :goto_3

    .line 460
    :catch_2
    move-exception v6

    .line 461
    .local v6, "io":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 462
    .end local v6    # "io":Ljava/io/IOException;
    :cond_1
    :goto_3
    nop

    .line 463
    :goto_4
    throw v2
.end method

.method private startCharge()V
    .locals 3

    .line 473
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/PhaseCheckParse;->writeChargeSwitch(I)Z

    move-result v0

    .line 474
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

    const-string v2, "QuickChargerTest"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void
.end method

.method private stopCharge()V
    .locals 3

    .line 468
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/PhaseCheckParse;->writeChargeSwitch(I)Z

    move-result v0

    .line 469
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

    const-string v2, "QuickChargerTest"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void
.end method


# virtual methods
.method public getChargerType()Z
    .locals 3

    .line 309
    const-string v0, "/sys/class/power_supply/battery/charge_type"

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "currentState":Ljava/lang/String;
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mChargingProtocolTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chargerType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickChargerTest"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v1, "Fast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Adaptive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 313
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 150
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 153
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->setTitle(I)V

    .line 154
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->setContentView(I)V

    .line 155
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mHandler:Landroid/os/Handler;

    .line 157
    const v0, 0x7f0500d8

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->statusTextView:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f0500d4

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mChargingProtocolTextView:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f0500d7

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->pluggedTextView:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f0500d0

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryVoltageTextView:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f0500d3

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mChargerVolatgeTextView:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f0500d9

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mTestResultTextView:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f0500d1

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mTemperatureTextView:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mTemperatureTableRow:Landroid/widget/TableRow;

    .line 166
    const v0, 0x7f0500cf

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryElectronicTextView:Landroid/widget/TextView;

    .line 167
    sget-boolean v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->ENABLE_BATTRY_TEMPERATURE:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mTemperatureTableRow:Landroid/widget/TableRow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 171
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    .line 175
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 437
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mCompleteTest:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 438
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->task:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 439
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 441
    :cond_0
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 442
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 255
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 256
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mElectronicUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mUpdataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 259
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 179
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 181
    sget-boolean v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->ENABLE_BATTRY_TEMPERATURE:Z

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "/sys/class/power_supply/battery/current_now"

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryElectronic:F

    .line 183
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryElectronicTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryElectronic:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ma"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    const-string v0, "sys/class/power_supply/sc27xx-fgu/temp"

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getDateFromNode(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryTemperature:F

    .line 186
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mTemperatureTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mBatteryTemperature:F

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u2103"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mUpdataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    return-void
.end method
