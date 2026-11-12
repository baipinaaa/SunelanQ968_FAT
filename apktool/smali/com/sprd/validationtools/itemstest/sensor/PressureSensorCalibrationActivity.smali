.class public Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "PressureSensorCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$SensorCalibrationThread;
    }
.end annotation


# static fields
.field private static final CALIBRATION_FAIL:I = 0x3

.field private static final CALIBRATION_SUCCESS:I = 0x2

.field private static final CALI_FILE:Ljava/lang/String; = "/mnt/vendor/productinfo/sensor_calibration_data/pressure"

.field private static final GET_RESULT:Ljava/lang/String; = "1 6 1"

.field private static final SAVE_RESULT:Ljava/lang/String; = "3 6 1"

.field private static final SET_CMD:Ljava/lang/String; = "0 6 1"

.field private static final SET_CMD_COMPLETE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PressureSensorCalibrationActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentInputValue:Landroid/widget/EditText;

.field private mDisplayText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mSensorUtils:Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

.field private mStartCalibration:Landroid/widget/Button;

.field private mTipText:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentInputValue(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mCurrentInputValue:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayText(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mDisplayText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartCalibration(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mStartCalibration:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTipText(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mTipText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetResult(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->getResult()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msensorCalibration(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->sensorCalibration()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartSensorCalibration(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->startSensorCalibration()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mSensorUtils:Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

    .line 183
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$2;-><init>(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    .line 32
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mPassButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    .line 32
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mFailButton:Landroid/widget/Button;

    return-object v0
.end method

.method private getResult()V
    .locals 3

    .line 171
    const-string v0, "1 6 1"

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->getResult(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 172
    const-string v0, "3 6 1"

    const-string v2, "/mnt/vendor/productinfo/sensor_calibration_data/pressure"

    invoke-static {v0, v2}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->saveResult(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 181
    :goto_0
    return-void
.end method

.method private hideInput(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 144
    if-eqz p1, :cond_0

    .line 145
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 146
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 150
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 219
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 220
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/sprd/validationtools/Const;->IS_SUPPORT_CALIBTATION_TEST:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 222
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private sensorCalibration()V
    .locals 4

    .line 100
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_0

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 105
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->customSetCMD()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "cmd":Ljava/lang/String;
    const-string v3, "/sys/class/sprd_sensorhub/sensor_hub/calibrator_cmd"

    invoke-static {v3, v2}, Lcom/sprd/validationtools/utils/FileUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    goto :goto_1

    .line 109
    :catch_1
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 112
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 114
    return-void
.end method

.method private startSensorCalibration()V
    .locals 1

    .line 89
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$SensorCalibrationThread;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$SensorCalibrationThread;-><init>(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)V

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$SensorCalibrationThread;->start()V

    .line 90
    return-void
.end method


# virtual methods
.method public customSetCMD()Ljava/lang/String;
    .locals 6

    .line 118
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mCurrentInputValue:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mCurrentInputValue:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "string":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    .line 121
    .local v1, "fValue":F
    float-to-long v2, v1

    .line 122
    .local v2, "normalizedValue":J
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0 6 1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 125
    .end local v0    # "string":Ljava/lang/String;
    .end local v1    # "fValue":F
    .end local v2    # "normalizedValue":J
    :cond_0
    const-string v0, "0 6 1 0"

    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0, p1}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->hideInput(Landroid/view/View;)V

    .line 135
    :cond_0
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 137
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    const/4 v0, 0x1

    return v0

    .line 140
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 153
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 154
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 155
    .local v1, "leftAndTop":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 156
    aget v2, v1, v0

    .line 157
    .local v2, "left":I
    const/4 v3, 0x1

    aget v4, v1, v3

    .line 158
    .local v4, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    .line 159
    .local v5, "bottom":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    .line 160
    .local v6, "right":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v8, v2

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v8, v6

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    .line 161
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    int-to-float v8, v4

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    int-to-float v8, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    .line 162
    return v0

    .line 164
    :cond_0
    return v3

    .line 167
    .end local v1    # "leftAndTop":[I
    .end local v2    # "left":I
    .end local v4    # "top":I
    .end local v5    # "bottom":I
    .end local v6    # "right":I
    :cond_1
    return v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f060033

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->setContentView(I)V

    .line 56
    iput-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mContext:Landroid/content/Context;

    .line 57
    const v0, 0x7f05008a

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mDisplayText:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f05008e

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mTipText:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f050044

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mCurrentInputValue:Landroid/widget/EditText;

    .line 60
    const v0, 0x7f050093

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mStartCalibration:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mPassButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mFailButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 63
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mSensorUtils:Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

    .line 64
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->enableSensor()Z

    .line 65
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->startSensorCalibration()V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mStartCalibration:Landroid/widget/Button;

    new-instance v1, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->mSensorUtils:Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->disableSensor()V

    .line 214
    :cond_0
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 215
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 85
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 86
    return-void
.end method
