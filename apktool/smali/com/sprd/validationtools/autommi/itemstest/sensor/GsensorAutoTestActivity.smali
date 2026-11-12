.class public Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "GsensorAutoTestActivity.java"


# static fields
.field private static final STOP_TEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GsensorAutoTestActivity"


# instance fields
.field private mGHandler:Landroid/os/Handler;

.field private mListener:Landroid/hardware/SensorEventListener;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorData:[F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorTestResult:Z

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSensorData(Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;)[F
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mSensorData:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSensorTestResult(Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mSensorTestResult:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mautoCheckResult(Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->autoCheckResult()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdiplayXYZ(Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->diplayXYZ(FFF)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 35
    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mSensor:Landroid/hardware/Sensor;

    .line 38
    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    .line 40
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mSensorTestResult:Z

    .line 41
    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mTextView:Landroid/widget/TextView;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mSensorData:[F

    .line 45
    new-instance v0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity$1;-><init>(Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mGHandler:Landroid/os/Handler;

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

    .line 63
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 66
    :cond_0
    iget-boolean v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mSensorTestResult:Z

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->storeRusult(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->finish()V

    .line 68
    return-void
.end method

.method private diplayXYZ(FFF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 72
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mTextView:Landroid/widget/TextView;

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

    .line 73
    return-void
.end method

.method private initSensor()V
    .locals 2

    .line 102
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 103
    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->storeRusult(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->finish()V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mSensor:Landroid/hardware/Sensor;

    .line 108
    new-instance v0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity$2;-><init>(Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    .line 119
    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 123
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 124
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-nez v2, :cond_0

    .line 125
    const/4 v1, 0x0

    return v1

    .line 127
    :cond_0
    return v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 77
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->setContentView(I)V

    .line 79
    const v0, 0x7f090094

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->setTitle(I)V

    .line 80
    const v0, 0x7f0500e9

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mTextView:Landroid/widget/TextView;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->diplayXYZ(FFF)V

    .line 82
    invoke-direct {p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->initSensor()V

    .line 83
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mGHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 84
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mGHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 98
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 99
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 88
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 89
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 90
    return-void
.end method
