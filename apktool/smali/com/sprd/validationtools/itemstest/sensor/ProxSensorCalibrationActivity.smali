.class public Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "ProxSensorCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;
    }
.end annotation


# static fields
.field private static final AUTO_SET_CMD:Ljava/lang/String; = "0 8 1"

.field private static final AUTO_TEST:I = 0x0

.field private static final CALIB_STATUS_FAIL:I = 0xff

.field private static final CALIB_STATUS_INPROCESS:I = 0x1

.field private static final CALIB_STATUS_NON:I = 0x0

.field private static final CALIB_STATUS_OUT_OF_MINRANGE:I = 0xfd

.field private static final CALIB_STATUS_OUT_OF_RANGE:I = 0xfe

.field private static final CALIB_STATUS_PASS:I = 0x2

.field private static final CALI_FILE:Ljava/lang/String; = "/mnt/vendor/productinfo/sensor_calibration_data/proximity"

.field private static final FOUR_SECONDS:I = 0xfa0

.field private static final MANUAL_FAR_SET_CMD:Ljava/lang/String; = "0 8 6"

.field private static final MANUAL_NEAR_SET_CMD:Ljava/lang/String; = "0 8 5"

.field private static final MANUAL_TEST_FAR:I = 0x2

.field private static final MANUAL_TEST_NEAR:I = 0x1

.field private static final RESULT_AUTO_TEST:I = 0x1

.field private static final RESULT_MANUAL_FAR_TEST:I = 0x7

.field private static final RESULT_MANUAL_NEAR_TEST:I = 0x4

.field private static final SAVEDATA_STATUS_FAIL:I = 0xff

.field private static final SAVEDATA_STATUS_OUT_OF_MINRANGE:I = 0xfd

.field private static final SAVEDATA_STATUS_PASS:I = 0x0

.field private static final START_AUTO_TEST:I = 0x0

.field private static final START_MANUAL_FAR_TEST:I = 0x6

.field private static final START_MANUAL_NEAR_TEST:I = 0x3

.field private static final SVAE_AUTO_TEST:I = 0x2

.field private static final SVAE_MANUAL_FAR_TEST:I = 0x8

.field private static final SVAE_MANUAL_NEAR_TEST:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ProxSensorCalibrationActivity"

.field private static final TEST_GET_RESULT:Ljava/lang/String; = "1 8 1"

.field private static final TEST_SAVE_RESULT:Ljava/lang/String; = "3 8 1"

.field private static final TWO_SECONDS:I = 0x7d0


# instance fields
.field private autoResult:Z

.field private autoSaveResult:Z

.field private farResult:Z

.field private farSaveResult:Z

.field private mAutoButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mManualButton:Landroid/widget/Button;

.field private mProxHandler:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;

.field private mSensorUtils:Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

.field private mTestTips:Landroid/widget/TextView;

.field private nearResult:Z

.field private nearSaveResult:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetautoResult(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->autoResult:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetautoSaveResult(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->autoSaveResult:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfarResult(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->farResult:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfarSaveResult(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->farSaveResult:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutoButton(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mAutoButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmManualButton(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mManualButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProxHandler(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mProxHandler:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTestTips(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mTestTips:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputautoResult(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->autoResult:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputautoSaveResult(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->autoSaveResult:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfarResult(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->farResult:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfarSaveResult(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->farSaveResult:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowTipsDialog(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->showTipsDialog(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartCalibration(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->startCalibration(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->autoResult:Z

    .line 77
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->nearResult:Z

    .line 78
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->farResult:Z

    .line 81
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->autoSaveResult:Z

    .line 82
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->nearSaveResult:Z

    .line 83
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->farSaveResult:Z

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mSensorUtils:Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

    return-void
.end method

.method private ThreadSleep(I)V
    .locals 2
    .param p1, "sleep"    # I

    .line 197
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 201
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    .line 31
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mPassButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    .line 31
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mPassButton:Landroid/widget/Button;

    return-object v0
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 329
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 330
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/sprd/validationtools/Const;->IS_SUPPORT_CALIBTATION_TEST:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 332
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private showTipsDialog(I)V
    .locals 5
    .param p1, "type"    # I

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showTipsDialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProxSensorCalibrationActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    move v0, p1

    .line 157
    .local v0, "step":I
    const/4 v1, 0x0

    .line 158
    .local v1, "tips":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f09011a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f090116

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090115

    .line 164
    invoke-virtual {p0, v3}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 165
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09000e

    .line 166
    invoke-virtual {p0, v3}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$3;

    invoke-direct {v4, p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$3;-><init>(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 179
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 180
    .local v2, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 181
    return-void
.end method

.method private startCalibration(I)V
    .locals 2
    .param p1, "type"    # I

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startCalibration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProxSensorCalibrationActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v0, "/sys/class/sprd_sensorhub/sensor_hub/calibrator_cmd"

    if-nez p1, :cond_0

    .line 143
    const-string v1, "0 8 1"

    invoke-static {v0, v1}, Lcom/sprd/validationtools/utils/FileUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void

    .line 145
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 146
    const-string v1, "0 8 5"

    invoke-static {v0, v1}, Lcom/sprd/validationtools/utils/FileUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void

    .line 148
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 149
    const-string v1, "0 8 6"

    invoke-static {v0, v1}, Lcom/sprd/validationtools/utils/FileUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void

    .line 152
    :cond_2
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 92
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f060034

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->setContentView(I)V

    .line 94
    iput-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ProxSensorCalibrationActivity"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v1, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;-><init>(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mProxHandler:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;

    .line 98
    const v1, 0x7f05007d

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mAutoButton:Landroid/widget/Button;

    .line 99
    const v1, 0x7f05007e

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mManualButton:Landroid/widget/Button;

    .line 100
    const v1, 0x7f0500b6

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mTestTips:Landroid/widget/TextView;

    .line 101
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mAutoButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 103
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mManualButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mTestTips:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mTestTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090113

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mProxHandler:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;

    invoke-virtual {v1, v3}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;->sendMessage(Landroid/os/Message;)Z

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mAutoButton:Landroid/widget/Button;

    new-instance v3, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$1;

    invoke-direct {v3, p0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mManualButton:Landroid/widget/Button;

    new-instance v3, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$2;

    invoke-direct {v3, p0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$2;-><init>(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    new-instance v1, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

    invoke-direct {v1, p0, v2}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mSensorUtils:Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

    .line 128
    invoke-virtual {v1}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->enableSensor()Z

    .line 129
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method public onDestroy()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mProxHandler:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "ProxSensorCalibrationActivity"

    const-string v1, "HandlerThread has quit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mProxHandler:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->mSensorUtils:Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->disableSensor()V

    .line 192
    :cond_1
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 193
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 133
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 134
    return-void
.end method
