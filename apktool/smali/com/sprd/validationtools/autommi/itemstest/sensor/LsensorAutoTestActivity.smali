.class public Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "LsensorAutoTestActivity.java"


# static fields
.field private static final STOP_TEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LsensorAutoTestActivity"


# instance fields
.field private mLHandler:Landroid/os/Handler;

.field private mListener:Landroid/hardware/SensorEventListener;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorData:F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorTestResult:Z

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSensorData(Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;)F
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mSensorData:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmSensorData(Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;F)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mSensorData:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSensorTestResult(Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mSensorTestResult:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mautoCheckResult(Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->autoCheckResult()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdiplaySensorData(Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->diplaySensorData(F)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mTextView:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 40
    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mSensor:Landroid/hardware/Sensor;

    .line 43
    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mSensorTestResult:Z

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mSensorData:F

    .line 51
    new-instance v0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity$1;-><init>(Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mLHandler:Landroid/os/Handler;

    return-void
.end method

.method private autoCheckResult()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 71
    :cond_0
    iget-boolean v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mSensorTestResult:Z

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->storeRusult(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->finish()V

    .line 73
    return-void
.end method

.method private diplaySensorData(F)V
    .locals 3
    .param p1, "x"    # F

    .line 76
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method private initSensor()V
    .locals 2

    .line 106
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 107
    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->storeRusult(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->finish()V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mSensor:Landroid/hardware/Sensor;

    .line 112
    new-instance v0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity$2;-><init>(Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    .line 121
    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 125
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 126
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 127
    const/4 v1, 0x0

    return v1

    .line 129
    :cond_0
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 81
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->setContentView(I)V

    .line 83
    const v0, 0x7f090120

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->setTitle(I)V

    .line 84
    const v0, 0x7f0500e9

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mTextView:Landroid/widget/TextView;

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->diplaySensorData(F)V

    .line 86
    invoke-direct {p0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->initSensor()V

    .line 87
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mLHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 88
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mLHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 102
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 103
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 92
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 94
    return-void
.end method
