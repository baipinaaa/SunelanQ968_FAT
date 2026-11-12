.class public Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "SARSensorTestActivity.java"


# static fields
.field private static final SAR_SENSOR_DEFAULT_VALUE:F = 1.0f

.field private static final SAR_SENSOR_TYPE:I = 0x10037

.field private static final TAG:Ljava/lang/String; = "SARSensorTestActivity"

.field private static final VALUE_CLOSE:Ljava/lang/String; = "Closer"

.field private static final VALUE_FAR:Ljava/lang/String; = "Distant"

.field private static final VALUE_OF_CHANGE_COLOR:F = 0.5f


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayText:Landroid/widget/TextView;

.field private mIsCloseDone:Z

.field private mIsDistantDone:Z

.field private mListener:Landroid/hardware/SensorEventListener;

.field private mSarSensorTextView:Landroid/widget/TextView;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTestPass:Z


# direct methods
.method static bridge synthetic -$$Nest$monSensorEvent(Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->onSensorEvent(F)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 39
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mSensor:Landroid/hardware/Sensor;

    .line 40
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mIsCloseDone:Z

    .line 47
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mIsDistantDone:Z

    .line 48
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mTestPass:Z

    return-void
.end method

.method private initSensor()V
    .locals 3

    .line 76
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 77
    const v1, 0x10037

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mSensor:Landroid/hardware/Sensor;

    .line 78
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    .line 86
    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 133
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 134
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const v1, 0x10037

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    const-string v3, "SARSensorTestActivity"

    if-nez v1, :cond_0

    .line 135
    const-string v1, "is not support sar sensor"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v1, 0x0

    return v1

    .line 138
    :cond_0
    const-string v1, "is support sar sensor"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return v2
.end method

.method private onSensorEvent(F)V
    .locals 5
    .param p1, "x"    # F

    .line 89
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mTestPass:Z

    if-eqz v0, :cond_0

    .line 90
    return-void

    .line 92
    :cond_0
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 93
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    .line 94
    iput-boolean v3, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mTestPass:Z

    .line 95
    invoke-virtual {p0, v3}, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->storeRusult(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->finish()V

    goto :goto_0

    .line 98
    :cond_1
    iput-boolean v3, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mTestPass:Z

    .line 99
    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->storeRusult(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->finish()V

    .line 103
    :cond_2
    :goto_0
    cmpg-float v0, p1, v2

    const-string v2, "SARSensorTestActivity"

    if-gtz v0, :cond_3

    .line 104
    const/high16 v0, -0x10000

    const-string v4, "Closer"

    invoke-direct {p0, v4, p1, v0}, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->setSARSensorDisplay(Ljava/lang/String;FI)V

    .line 105
    iput-boolean v3, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mIsCloseDone:Z

    goto :goto_1

    .line 107
    :cond_3
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mIsCloseDone:Z

    if-eqz v0, :cond_4

    .line 108
    const/4 v0, -0x1

    const-string v4, "Distant"

    invoke-direct {p0, v4, p1, v0}, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->setSARSensorDisplay(Ljava/lang/String;FI)V

    .line 109
    iput-boolean v3, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mIsDistantDone:Z

    goto :goto_1

    .line 111
    :cond_4
    const-string v0, "Must be test near first!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsCloseDone="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mIsCloseDone:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",mIsDistantDone="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mIsDistantDone:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mIsCloseDone:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mIsDistantDone:Z

    if-eqz v0, :cond_5

    .line 116
    iput-boolean v3, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mTestPass:Z

    .line 117
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f090183

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    invoke-virtual {p0, v3}, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->storeRusult(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->finish()V

    .line 121
    :cond_5
    return-void
.end method

.method private setSARSensorDisplay(Ljava/lang/String;FI)V
    .locals 4
    .param p1, "dis"    # Ljava/lang/String;
    .param p2, "data"    # F
    .param p3, "color"    # I

    .line 65
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mSarSensorTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mSensor:Landroid/hardware/Sensor;

    const-string v1, "\n"

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mSarSensorTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chip id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mSarSensorTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090124

    invoke-virtual {p0, v3}, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mSarSensorTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090126

    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mSarSensorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 73
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    iput-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mContext:Landroid/content/Context;

    .line 54
    const v0, 0x7f060036

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->setContentView(I)V

    .line 55
    const v0, 0x7f09013c

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->setTitle(I)V

    .line 57
    const v0, 0x7f0500c7

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mDisplayText:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0500ee

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mSarSensorTextView:Landroid/widget/TextView;

    .line 59
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->initSensor()V

    .line 60
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 61
    const-string v0, "Distant"

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->setSARSensorDisplay(Ljava/lang/String;FI)V

    .line 62
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method protected onDestroy()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 128
    :cond_0
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 129
    return-void
.end method
