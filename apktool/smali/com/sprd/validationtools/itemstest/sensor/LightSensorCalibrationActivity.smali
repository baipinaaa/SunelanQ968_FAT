.class public Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "LightSensorCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$SensorCalibrationThread;
    }
.end annotation


# static fields
.field private static final CALIBRATION_FAIL:I = 0x3

.field private static final CALIBRATION_SUCCESS:I = 0x2

.field private static final CALI_FILE:Ljava/lang/String; = "/mnt/vendor/productinfo/sensor_calibration_data/light"

.field private static final GET_RESULT:Ljava/lang/String; = "1 5 1"

.field private static final PASS_DATA_LEN:I = 0x1e

.field private static final SAVE_RESULT:Ljava/lang/String; = "3 5 1"

.field private static final SET_CMD:Ljava/lang/String; = "0 5 1"

.field private static final START_CALIBRATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LightSensorCalibrationActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mR:Ljava/lang/Runnable;

.field private mSensorUtils:Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

.field private startCalibration:Landroid/widget/Button;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayText(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->mDisplayText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmR(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->mR:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstartCalibration(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->startCalibration:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetResult(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->getResult()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msensorCalibration(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->sensorCalibration()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartSensorCalibration(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->startSensorCalibration()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->mSensorUtils:Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

    .line 52
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->mR:Ljava/lang/Runnable;

    .line 140
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$3;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$3;-><init>(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getResult()V
    .locals 5

    .line 119
    sget-boolean v0, Lcom/sprd/validationtools/Const;->IS_SUPPORT_LIGHT_CALIBTATION_TEST:Z

    const/4 v1, 0x2

    const-string v2, "/mnt/vendor/productinfo/sensor_calibration_data/light"

    const/4 v3, 0x3

    if-eqz v0, :cond_1

    .line 120
    const-string v0, "/sys/class/sprd_sensorhub/sensor_hub/light_sensor_calibrator"

    invoke-static {v0, v2}, Lcom/sprd/validationtools/utils/FileUtils;->saveFileData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 121
    .local v0, "saveResultLen":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save result: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "LightSensorCalibrationActivity"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/16 v2, 0x1e

    if-ne v0, v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 127
    .end local v0    # "saveResultLen":I
    :goto_0
    goto :goto_1

    .line 128
    :cond_1
    const-string v0, "1 5 1"

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->getResult(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    const-string v0, "3 5 1"

    invoke-static {v0, v2}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->saveResult(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    :goto_1
    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 174
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 175
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/sprd/validationtools/Const;->IS_SUPPORT_CALIBTATION_TEST:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 177
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private sensorCalibration()V
    .locals 4

    .line 105
    sget-boolean v0, Lcom/sprd/validationtools/Const;->IS_SUPPORT_LIGHT_CALIBTATION_TEST:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 108
    :cond_0
    const-string v0, "/sys/class/sprd_sensorhub/sensor_hub/calibrator_cmd"

    const-string v2, "0 5 1"

    invoke-static {v0, v2}, Lcom/sprd/validationtools/utils/FileUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-wide/16 v2, 0xfa0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 114
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    :goto_1
    return-void
.end method

.method private startSensorCalibration()V
    .locals 1

    .line 92
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$SensorCalibrationThread;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$SensorCalibrationThread;-><init>(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)V

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$SensorCalibrationThread;->start()V

    .line 93
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 65
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f06002d

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->setContentView(I)V

    .line 67
    iput-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->mContext:Landroid/content/Context;

    .line 68
    const v0, 0x7f050089

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->mDisplayText:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f050093

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->startCalibration:Landroid/widget/Button;

    .line 70
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->mSensorUtils:Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

    .line 71
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->enableSensor()Z

    .line 72
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->startSensorCalibration()V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->startCalibration:Landroid/widget/Button;

    new-instance v1, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$2;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$2;-><init>(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->mR:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->mSensorUtils:Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->disableSensor()V

    .line 170
    :cond_0
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 171
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 88
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 89
    return-void
.end method
