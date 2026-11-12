.class public Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "LsensorTestActivity.java"


# static fields
.field private static final BRIGHTNESS_CURRENT_VALUE:I = 0xb4

.field private static final BRIGHTNESS_MAX_VALUE:F = 255.0f

.field private static final BRIGHTNESS_THRESHOLD:I = 0x1e

.field private static final LSENSOR_DEFAULT_VALUE:I = 0x0

.field private static final MAXIMUM_BACKLIGHT:F = 1.0f

.field private static final MAX_VALUE_PROGRESSBAR:I = 0x12c

.field private static final MINIMUM_BACKLIGHT:F = 0.1f

.field private static final TAG:Ljava/lang/String; = "LsensorTestActivity"


# instance fields
.field private mBrightnessValue:F

.field private mContext:Landroid/content/Context;

.field private mCurrentValue:I

.field private mListener:Landroid/hardware/SensorEventListener;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorMax:I

.field private mSensorMin:I

.field private mSensorProgressBar:Landroid/widget/ProgressBar;

.field private mTestPass:Z

.field private mValueIllumination:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$monSensorEvent(Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->onSensorEvent(F)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mSensorMin:I

    .line 47
    iput v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mSensorMax:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 51
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mSensor:Landroid/hardware/Sensor;

    .line 53
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mTestPass:Z

    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 159
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 160
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 161
    const-string v1, "LsensorTestActivity"

    const-string v2, "Not support light sensor!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v1, 0x0

    return v1

    .line 164
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private onSensorEvent(F)V
    .locals 5
    .param p1, "x"    # F

    .line 117
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mTestPass:Z

    if-eqz v0, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    float-to-int v0, p1

    .line 121
    .local v0, "processInt":I
    iget v1, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mSensorMin:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    int-to-float v1, v1

    cmpl-float v1, v1, p1

    if-lez v1, :cond_2

    .line 122
    :cond_1
    iput v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mSensorMin:I

    .line 124
    :cond_2
    iget v1, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mSensorMax:I

    if-eq v1, v2, :cond_3

    int-to-float v1, v1

    cmpg-float v1, v1, p1

    if-gez v1, :cond_4

    .line 125
    :cond_3
    iput v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mSensorMax:I

    .line 127
    :cond_4
    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->showStatus(F)V

    .line 128
    iget v1, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mSensorMax:I

    iget v2, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mSensorMin:I

    sub-int/2addr v1, v2

    const/16 v2, 0x1e

    if-le v1, v2, :cond_5

    .line 129
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mTestPass:Z

    .line 130
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f090183

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 131
    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->storeRusult(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->finish()V

    .line 134
    :cond_5
    return-void
.end method

.method private setBrightness(F)V
    .locals 2
    .param p1, "brightness"    # F

    .line 152
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 153
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 154
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 155
    return-void
.end method

.method private showStatus(F)V
    .locals 4
    .param p1, "x"    # F

    .line 137
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mValueIllumination:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0900ce

    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    float-to-int v0, p1

    .line 139
    .local v0, "valueProgress":I
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mSensorProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 140
    const/high16 v1, 0x437f0000    # 255.0f

    div-float v1, p1, v1

    .line 141
    .local v1, "currentBrightnessValue":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentBrightnessValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LsensorTestActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    .line 143
    invoke-direct {p0, v2}, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->setBrightness(F)V

    goto :goto_0

    .line 144
    :cond_0
    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_1

    .line 145
    invoke-direct {p0, v2}, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->setBrightness(F)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-direct {p0, v1}, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->setBrightness(F)V

    .line 149
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 67
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    iput-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mContext:Landroid/content/Context;

    .line 69
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->setContentView(I)V

    .line 70
    const v0, 0x7f0900c8

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->setTitle(I)V

    .line 71
    const v0, 0x7f0500b5

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    .local v0, "textTile":Landroid/widget/TextView;
    const v1, 0x7f090186

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mCurrentValue:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v2, 0xb4

    iput v2, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mCurrentValue:I

    .line 79
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentValue ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mCurrentValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LsensorTestActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget v1, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mCurrentValue:I

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mBrightnessValue:F

    .line 81
    const v1, 0x7f0500f6

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mValueIllumination:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f05007c

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mSensorProgressBar:Landroid/widget/ProgressBar;

    .line 83
    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 84
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 85
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mSensor:Landroid/hardware/Sensor;

    .line 86
    new-instance v1, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;)V

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    .line 96
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 97
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 111
    :cond_0
    iget v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mBrightnessValue:F

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->setBrightness(F)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestory mBrightnessValue ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mBrightnessValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LsensorTestActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 114
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 101
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mValueIllumination:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0900ce

    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LsensorTestActivity;->mSensorProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 104
    return-void
.end method
