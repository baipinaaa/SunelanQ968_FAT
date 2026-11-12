.class public Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "ASensorCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity$SensorCalibrationThread;
    }
.end annotation


# static fields
.field private static final CALIBRATION_FAIL:I = 0x3

.field private static final CALIBRATION_SUCCESS:I = 0x2

.field private static final CALI_FILE:Ljava/lang/String; = "/mnt/vendor/productinfo/sensor_calibration_data/acc"

.field private static final GET_RESULT:Ljava/lang/String; = "1 1 1"

.field private static final SAVE_RESULT:Ljava/lang/String; = "3 1 1"

.field private static final SET_CMD:Ljava/lang/String; = "0 1 1"

.field private static final SET_CMD_COMPLETE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ASensorCalibrationActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mR:Ljava/lang/Runnable;

.field private mSensorUtils:Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

.field private saveResult:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayText(Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->mDisplayText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmR(Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->mR:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetResult(Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->getResult()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msensorCalibration(Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->sensorCalibration()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->saveResult:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->mSensorUtils:Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

    .line 48
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->mR:Ljava/lang/Runnable;

    .line 119
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity$2;-><init>(Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getResult()V
    .locals 3

    .line 107
    const-string v0, "1 1 1"

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->getResult(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 108
    const-string v0, "3 1 1"

    const-string v2, "/mnt/vendor/productinfo/sensor_calibration_data/acc"

    invoke-static {v0, v2}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->saveResult(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    :goto_0
    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 155
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 156
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/sprd/validationtools/Const;->IS_SUPPORT_CALIBTATION_TEST:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    return v1

    .line 158
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private sensorCalibration()V
    .locals 4

    .line 91
    const-wide/16 v0, 0xfa0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_0

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 96
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const-string v2, "/sys/class/sprd_sensorhub/sensor_hub/calibrator_cmd"

    const-string v3, "0 1 1"

    invoke-static {v2, v3}, Lcom/sprd/validationtools/utils/FileUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    goto :goto_1

    .line 99
    :catch_1
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 102
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    return-void
.end method

.method private startSensorCalibration()V
    .locals 1

    .line 76
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity$SensorCalibrationThread;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity$SensorCalibrationThread;-><init>(Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;)V

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity$SensorCalibrationThread;->start()V

    .line 77
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f060027

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->setContentView(I)V

    .line 63
    iput-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->mContext:Landroid/content/Context;

    .line 64
    const v0, 0x7f050087

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->mDisplayText:Landroid/widget/TextView;

    .line 65
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->mSensorUtils:Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

    .line 66
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->enableSensor()Z

    .line 67
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method public onDestroy()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->mR:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->mSensorUtils:Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->disableSensor()V

    .line 150
    :cond_0
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 151
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 71
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 72
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->startSensorCalibration()V

    .line 73
    return-void
.end method
