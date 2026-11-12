.class public Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "MSensorCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity$SensorCalibrationThread;
    }
.end annotation


# static fields
.field private static final CALIBRATION_FAIL:I = 0x3

.field private static final CALIBRATION_SUCCESS:I = 0x2

.field private static final CALI_FILE:Ljava/lang/String; = "/mnt/vendor/productinfo/sensor_calibration_data/magnetic"

.field private static final GET_RESULT:Ljava/lang/String; = "1 2 1"

.field private static final SAVE_RESULT:Ljava/lang/String; = "3 2 1"

.field private static final SET_CMD:Ljava/lang/String; = "0 2 1"

.field private static final SET_CMD_COMPLETE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MSensorCalibrationActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mR:Ljava/lang/Runnable;

.field private mSensorUtils:Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

.field private mTipsText:Landroid/widget/TextView;

.field private saveResult:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmR(Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->mR:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTipsText(Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->mTipsText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetResult(Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->getResult()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msensorCalibration(Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->sensorCalibration()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->saveResult:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->mSensorUtils:Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

    .line 49
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->mR:Ljava/lang/Runnable;

    .line 113
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity$2;-><init>(Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getResult()V
    .locals 3

    .line 101
    const-string v0, "1 2 1"

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->getResult(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 102
    const-string v0, "3 2 1"

    const-string v2, "/mnt/vendor/productinfo/sensor_calibration_data/magnetic"

    invoke-static {v0, v2}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->saveResult(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    :goto_0
    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method private sensorCalibration()V
    .locals 2

    .line 90
    const-string v0, "/sys/class/sprd_sensorhub/sensor_hub/calibrator_cmd"

    const-string v1, "0 2 1"

    invoke-static {v0, v1}, Lcom/sprd/validationtools/utils/FileUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-wide/16 v0, 0xfa0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 96
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    return-void
.end method

.method private startSensorCalibration()V
    .locals 1

    .line 77
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity$SensorCalibrationThread;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity$SensorCalibrationThread;-><init>(Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;)V

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity$SensorCalibrationThread;->start()V

    .line 78
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 62
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->setContentView(I)V

    .line 64
    iput-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->mContext:Landroid/content/Context;

    .line 65
    const v0, 0x7f0500c6

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->mTipsText:Landroid/widget/TextView;

    .line 66
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->mSensorUtils:Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

    .line 67
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->enableSensor()Z

    .line 68
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->mR:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 141
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->mSensorUtils:Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->disableSensor()V

    .line 144
    :cond_0
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 145
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 72
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 73
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->startSensorCalibration()V

    .line 74
    return-void
.end method
