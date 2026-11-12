.class public Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "GyroscopeTestActivity.java"


# static fields
.field private static final M_COMPAR_VALUE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GyroscopeTestActivity"


# instance fields
.field private data_current:[F

.field private data_last:[F

.field private listener:Landroid/hardware/SensorEventListener;

.field private mContext:Landroid/content/Context;

.field private mDisplayText:Landroid/widget/TextView;

.field private mPassed:Z

.field private mSuccessFlag:Z

.field private mXsensorText:Landroid/widget/TextView;

.field private mYsensorText:Landroid/widget/TextView;

.field private mZsensorText:Landroid/widget/TextView;

.field private manager:Landroid/hardware/SensorManager;

.field private onetime:Z

.field private sensor:Landroid/hardware/Sensor;

.field private xPass:Z

.field private yPass:Z

.field private zPass:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)[F
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->data_current:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdata_last(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)[F
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->data_last:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPassed(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mPassed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetonetime(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->onetime:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetxPass(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->xPass:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetyPass(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->yPass:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetzPass(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->zPass:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmPassed(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mPassed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputonetime(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->onetime:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputxPass(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->xPass:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputyPass(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->yPass:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputzPass(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->zPass:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdiplayXYZ(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->diplayXYZ(FFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgsensorCheck(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;F)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->gsensorCheck(F)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowPass(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->showPass(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->manager:Landroid/hardware/SensorManager;

    .line 32
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->sensor:Landroid/hardware/Sensor;

    .line 33
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->listener:Landroid/hardware/SensorEventListener;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->onetime:Z

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->xPass:Z

    .line 40
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->yPass:Z

    .line 41
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->zPass:Z

    .line 43
    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->data_last:[F

    .line 45
    new-array v1, v1, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->data_current:[F

    .line 53
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mPassed:Z

    .line 55
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mSuccessFlag:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private diplayXYZ(FFF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 129
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mDisplayText:Landroid/widget/TextView;

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

    .line 130
    return-void
.end method

.method private gsensorCheck(F)Z
    .locals 2
    .param p1, "data"    # F

    .line 122
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 123
    const/4 v0, 0x1

    return v0

    .line 125
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initSensor()V
    .locals 2

    .line 133
    const-string v0, "GyroscopeTestActivity"

    const-string v1, "Gyroscope test, init..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mPassed:Z

    .line 136
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->manager:Landroid/hardware/SensorManager;

    .line 137
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->sensor:Landroid/hardware/Sensor;

    .line 138
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->listener:Landroid/hardware/SensorEventListener;

    .line 188
    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 192
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 193
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 194
    const/4 v1, 0x0

    return v1

    .line 196
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private showPass(II)V
    .locals 4
    .param p1, "colorId"    # I
    .param p2, "postionId"    # I

    .line 92
    const/4 v0, -0x1

    const v1, -0xff0100

    if-nez p2, :cond_1

    .line 93
    if-nez p1, :cond_0

    .line 94
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mXsensorText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mXsensorText:Landroid/widget/TextView;

    const-string v3, "X-axis: "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mXsensorText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mXsensorText:Landroid/widget/TextView;

    const-string v3, "X-axis: Pass!"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_1
    :goto_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    .line 102
    if-nez p1, :cond_2

    .line 103
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mYsensorText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mYsensorText:Landroid/widget/TextView;

    const-string v3, "Y-axis: "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 106
    :cond_2
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mYsensorText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mYsensorText:Landroid/widget/TextView;

    const-string v3, "Y-axis: Pass!"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_3
    :goto_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_5

    .line 111
    if-nez p1, :cond_4

    .line 112
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mZsensorText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mZsensorText:Landroid/widget/TextView;

    const-string v1, "Z-axis: "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 115
    :cond_4
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mZsensorText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mZsensorText:Landroid/widget/TextView;

    const-string v1, "Z-axis: Pass!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 59
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->setContentView(I)V

    .line 61
    iput-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mContext:Landroid/content/Context;

    .line 62
    const v0, 0x7f0500e6

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mDisplayText:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0500f3

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mXsensorText:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0500f4

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mYsensorText:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0500f5

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->mZsensorText:Landroid/widget/TextView;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->diplayXYZ(FFF)V

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->showPass(II)V

    .line 68
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->showPass(II)V

    .line 69
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->showPass(II)V

    .line 70
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->initSensor()V

    .line 71
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 84
    const-string v0, "GyroscopeTestActivity"

    const-string v1, "onPause..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->manager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->listener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 88
    :cond_0
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 75
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 76
    const-string v0, "GyroscopeTestActivity"

    const-string v1, "onResume..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->manager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->listener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->sensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 80
    return-void
.end method
