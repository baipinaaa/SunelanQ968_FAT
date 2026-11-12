.class public Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "GyroscopeAutoTestActivity.java"


# static fields
.field private static final STOP_TEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GyroscopeAutoTestActivity"


# instance fields
.field private mDisplayText:Landroid/widget/TextView;

.field private mGyroscopeHandler:Landroid/os/Handler;

.field private mListener:Landroid/hardware/SensorEventListener;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorData:[F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorTestResult:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmSensorData(Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;)[F
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mSensorData:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSensorTestResult(Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mSensorTestResult:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mautoCheckResult(Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->autoCheckResult()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdiplayXYZ(Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->diplayXYZ(FFF)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 33
    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mSensor:Landroid/hardware/Sensor;

    .line 34
    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mSensorTestResult:Z

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mSensorData:[F

    .line 43
    new-instance v0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity$1;-><init>(Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mGyroscopeHandler:Landroid/os/Handler;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private autoCheckResult()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 63
    :cond_0
    iget-boolean v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mSensorTestResult:Z

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->storeRusult(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->finish()V

    .line 65
    return-void
.end method

.method private diplayXYZ(FFF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 96
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mDisplayText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nZ: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method private initSensor()V
    .locals 2

    .line 100
    const-string v0, "GyroscopeAutoTestActivity"

    const-string v1, "Gyroscope test, init..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 102
    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->storeRusult(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->finish()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mSensor:Landroid/hardware/Sensor;

    .line 107
    new-instance v0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity$2;-><init>(Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    .line 118
    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 122
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 123
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 124
    const/4 v1, 0x0

    return v1

    .line 126
    :cond_0
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 70
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->setContentView(I)V

    .line 72
    const v0, 0x7f0500e9

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mDisplayText:Landroid/widget/TextView;

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->diplayXYZ(FFF)V

    .line 74
    invoke-direct {p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->initSensor()V

    .line 75
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mGyroscopeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 76
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 87
    const-string v0, "GyroscopeAutoTestActivity"

    const-string v1, "onPause..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mGyroscopeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 92
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 93
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 80
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 81
    const-string v0, "GyroscopeAutoTestActivity"

    const-string v1, "onResume..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 83
    return-void
.end method
