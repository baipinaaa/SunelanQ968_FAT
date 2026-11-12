.class public Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "MagneticAutoTestActivity.java"


# static fields
.field private static final STOP_TEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MagneticAutoTestActivity"


# instance fields
.field private mCount:I

.field private mDisplayText:Landroid/widget/TextView;

.field private mListener:Landroid/hardware/SensorEventListener;

.field private mMagneticHandler:Landroid/os/Handler;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorData:[F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorTestResult:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmSensorData(Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;)[F
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mSensorData:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSensorTestResult(Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mSensorTestResult:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mautoCheckResult(Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->autoCheckResult()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdiplayXYZ(Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->diplayXYZ(FFF)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 36
    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mSensor:Landroid/hardware/Sensor;

    .line 38
    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mSensorTestResult:Z

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mCount:I

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mSensorData:[F

    .line 48
    new-instance v0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity$1;-><init>(Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mMagneticHandler:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private autoCheckResult()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 68
    :cond_0
    iget-boolean v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mSensorTestResult:Z

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->storeRusult(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->finish()V

    .line 70
    return-void
.end method

.method private diplayXYZ(FFF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 90
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mDisplayText:Landroid/widget/TextView;

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

    .line 91
    return-void
.end method

.method private initSensor()V
    .locals 2

    .line 108
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 109
    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->storeRusult(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->finish()V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mSensor:Landroid/hardware/Sensor;

    .line 114
    new-instance v0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity$2;-><init>(Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    .line 125
    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 129
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 130
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 131
    const/4 v1, 0x0

    return v1

    .line 133
    :cond_0
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 75
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->setContentView(I)V

    .line 77
    const v0, 0x7f0500e9

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mDisplayText:Landroid/widget/TextView;

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->diplayXYZ(FFF)V

    .line 79
    invoke-direct {p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->initSensor()V

    .line 80
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mMagneticHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 81
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 86
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mMagneticHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 104
    :cond_0
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 105
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 95
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 96
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 97
    return-void
.end method
