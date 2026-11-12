.class public Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "MagneticTestActivity.java"


# static fields
.field private static final M_COMPAR_VALUE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "MagneticTestActivity"

.field private static final TEST_FAIL_TIMEOUT:J = 0x1388L


# instance fields
.field private data_current:[F

.field private data_last:[F

.field private mContext:Landroid/content/Context;

.field private mDisplayText:Landroid/widget/TextView;

.field private mFailFlag:Z

.field private mFailRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/hardware/SensorEventListener;

.field private mSManager:Landroid/hardware/SensorManager;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSuccessFlag:Z

.field private mWarnText:Landroid/widget/TextView;

.field private onetime:Z

.field private xPass:Z

.field private yPass:Z

.field private zPass:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)[F
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->data_current:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdata_last(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)[F
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->data_last:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFailRunnable(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mFailRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuccessFlag(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mSuccessFlag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetonetime(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->onetime:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetxPass(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->xPass:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetyPass(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->yPass:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetzPass(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->zPass:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmSuccessFlag(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mSuccessFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputonetime(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->onetime:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputxPass(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->xPass:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputyPass(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->yPass:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputzPass(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->zPass:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdiplayXYZ(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->diplayXYZ(FFF)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 33
    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->data_last:[F

    .line 35
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->data_current:[F

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mSManager:Landroid/hardware/SensorManager;

    .line 39
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mSensor:Landroid/hardware/Sensor;

    .line 41
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->onetime:Z

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->xPass:Z

    .line 52
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->yPass:Z

    .line 53
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->zPass:Z

    .line 55
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mSuccessFlag:Z

    .line 56
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mFailFlag:Z

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mFailRunnable:Ljava/lang/Runnable;

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

    .line 100
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mDisplayText:Landroid/widget/TextView;

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

    .line 101
    return-void
.end method

.method private initSensor()V
    .locals 2

    .line 119
    nop

    .line 120
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mSManager:Landroid/hardware/SensorManager;

    .line 121
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mSensor:Landroid/hardware/Sensor;

    .line 122
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;-><init>(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    .line 165
    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 169
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 170
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 171
    const/4 v1, 0x0

    return v1

    .line 173
    :cond_0
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 78
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    iput-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mContext:Landroid/content/Context;

    .line 80
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->setContentView(I)V

    .line 81
    const v0, 0x7f05006a

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mDisplayText:Landroid/widget/TextView;

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->diplayXYZ(FFF)V

    .line 83
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->initSensor()V

    .line 85
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mFailRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mSuccessFlag:Z

    .line 88
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method protected onDestroy()V
    .locals 2

    .line 93
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 95
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mFailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mSManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 115
    :cond_0
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 116
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 105
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 106
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mSManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 108
    return-void
.end method
