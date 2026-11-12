.class public Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "PsensorTestActivity.java"


# static fields
.field private static final PSENSOR_DEFAULT_VALUE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "PsensorTestActivity"

.field private static final VALUE_CLOSE:Ljava/lang/String; = "Closer"

.field private static final VALUE_FAR:Ljava/lang/String; = "Distant"

.field private static final VALUE_OF_CHANGE_COLOR:F = 0.5f


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsCloseDone:Z

.field private mIsDistantDone:Z

.field private mListener:Landroid/hardware/SensorEventListener;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorTextView:Landroid/widget/TextView;

.field private mTestPass:Z


# direct methods
.method static bridge synthetic -$$Nest$monSensorEvent(Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->onSensorEvent(F)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 42
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mSensor:Landroid/hardware/Sensor;

    .line 44
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mIsCloseDone:Z

    .line 49
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mIsDistantDone:Z

    .line 50
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mTestPass:Z

    return-void
.end method

.method private initSensor()V
    .locals 2

    .line 79
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 80
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mSensor:Landroid/hardware/Sensor;

    .line 81
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    .line 89
    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 127
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 128
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 129
    const-string v1, "PsensorTestActivity"

    const-string v2, "Not support p sensor!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v1, 0x0

    return v1

    .line 132
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private onSensorEvent(F)V
    .locals 4
    .param p1, "x"    # F

    .line 92
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mTestPass:Z

    if-eqz v0, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    if-gtz v0, :cond_1

    .line 96
    const/high16 v0, -0x10000

    const-string v2, "Closer"

    invoke-direct {p0, v2, p1, v0}, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->setPsensorDisplay(Ljava/lang/String;FI)V

    .line 97
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mIsCloseDone:Z

    goto :goto_0

    .line 99
    :cond_1
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mIsCloseDone:Z

    if-eqz v0, :cond_2

    .line 100
    const/4 v0, -0x1

    const-string v2, "Distant"

    invoke-direct {p0, v2, p1, v0}, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->setPsensorDisplay(Ljava/lang/String;FI)V

    .line 101
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mIsDistantDone:Z

    goto :goto_0

    .line 103
    :cond_2
    const-string v0, ""

    const-string v2, "Must be test near first!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsCloseDone="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mIsCloseDone:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",mIsDistantDone="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mIsDistantDone:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PsensorTestActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mIsCloseDone:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mIsDistantDone:Z

    if-eqz v0, :cond_3

    .line 108
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mTestPass:Z

    .line 109
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f090183

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->storeRusult(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->finish()V

    .line 113
    :cond_3
    return-void
.end method

.method private setPsensorDisplay(Ljava/lang/String;FI)V
    .locals 4
    .param p1, "dis"    # Ljava/lang/String;
    .param p2, "data"    # F
    .param p3, "color"    # I

    .line 116
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mSensorTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mSensor:Landroid/hardware/Sensor;

    const-string v1, "\n"

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mSensorTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chip id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mSensorTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090124

    invoke-virtual {p0, v3}, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->getString(I)Ljava/lang/String;

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

    .line 121
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mSensorTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090126

    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->getString(I)Ljava/lang/String;

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

    .line 122
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mSensorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 123
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    iput-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mContext:Landroid/content/Context;

    .line 56
    const v0, 0x7f060035

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->setContentView(I)V

    .line 57
    const v0, 0x7f090120

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->setTitle(I)V

    .line 58
    const v0, 0x7f0500ec

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mSensorTextView:Landroid/widget/TextView;

    .line 59
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->initSensor()V

    .line 60
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 61
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 75
    :cond_0
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 76
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 65
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 66
    const-string v0, "Distant"

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->setPsensorDisplay(Ljava/lang/String;FI)V

    .line 67
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PsensorTestActivity;->mSensorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 68
    return-void
.end method
