.class public Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "PressureTestActivity.java"


# static fields
.field private static final P_MAX_VALUE:I = 0x44c

.field private static final P_MIN_VALUE:I = 0x384

.field private static final P_PASS_TIMES:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PressureTestActivity"


# instance fields
.field private cnt:I

.field private dataPressure:F

.field private listener:Landroid/hardware/SensorEventListener;

.field private mContext:Landroid/content/Context;

.field private mDisplayText:Landroid/widget/TextView;

.field private mPass:Z

.field private manager:Landroid/hardware/SensorManager;

.field private pressureValue:F

.field private sensor:Landroid/hardware/Sensor;


# direct methods
.method static bridge synthetic -$$Nest$fgetcnt(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->cnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdataPressure(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;)F
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->dataPressure:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPass(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->mPass:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpressureValue(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;)F
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->pressureValue:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcnt(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->cnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdataPressure(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;F)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->dataPressure:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPass(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->mPass:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpressureValue(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;F)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->pressureValue:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisplayValue(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->displayValue(F)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->manager:Landroid/hardware/SensorManager;

    .line 34
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->sensor:Landroid/hardware/Sensor;

    .line 35
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->listener:Landroid/hardware/SensorEventListener;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->cnt:I

    .line 40
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->mPass:Z

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->pressureValue:F

    .line 43
    iput v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->dataPressure:F

    return-void
.end method

.method private displayValue(F)V
    .locals 4
    .param p1, "x"    # F

    .line 76
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->mDisplayText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09010e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hPa"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method private initSensor()V
    .locals 2

    .line 82
    const-string v0, "PressureTestActivity"

    const-string v1, "pressure test, init..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->manager:Landroid/hardware/SensorManager;

    .line 84
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->sensor:Landroid/hardware/Sensor;

    .line 85
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->listener:Landroid/hardware/SensorEventListener;

    .line 116
    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 120
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 121
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 122
    const/4 v1, 0x0

    return v1

    .line 124
    :cond_0
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->setContentView(I)V

    .line 51
    iput-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->mContext:Landroid/content/Context;

    .line 52
    const v0, 0x7f0500eb

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->mDisplayText:Landroid/widget/TextView;

    .line 53
    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->initSensor()V

    .line 55
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method protected onPause()V
    .locals 2

    .line 68
    const-string v0, "PressureTestActivity"

    const-string v1, "onPause..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->manager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->listener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 72
    :cond_0
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 73
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 59
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 60
    const-string v0, "PressureTestActivity"

    const-string v1, "onResume..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->manager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->listener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->sensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 64
    return-void
.end method
