.class public Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "ProxSensorNoiseTestActivity.java"


# static fields
.field private static final PSENSOR_DEFAULT_VALUE:F = 1.0f

.field public static final SensorNoiseFile:Ljava/lang/String; = "/sys/class/xr-pls/device/ps_noise"

.field private static final TAG:Ljava/lang/String; = "ProxSensorNoiseTestActivity"

.field private static final VALUE_CLOSE:Ljava/lang/String; = "Closer"

.field private static final VALUE_FAR:Ljava/lang/String; = "Distant"

.field private static final VALUE_OF_CHANGE_COLOR:F = 0.5f


# instance fields
.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsCloseDone:Z

.field private mIsDistantDone:Z

.field private pListener:Landroid/hardware/SensorEventListener;

.field private pManager:Landroid/hardware/SensorManager;

.field private pSensor:Landroid/hardware/Sensor;

.field private psensorTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$mcheckLightSensorNoise(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->checkLightSensorNoise(F)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->pManager:Landroid/hardware/SensorManager;

    .line 50
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->pSensor:Landroid/hardware/Sensor;

    .line 53
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->pListener:Landroid/hardware/SensorEventListener;

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->mIsCloseDone:Z

    .line 61
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->mIsDistantDone:Z

    .line 160
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 161
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkLightSensorNoise(F)V
    .locals 7
    .param p1, "x"    # F

    .line 164
    const-string v0, "/sys/class/xr-pls/device/ps_noise"

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->getValueFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPsensorDisplay value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProxSensorNoiseTestActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gtz v1, :cond_0

    .line 167
    const/high16 v1, -0x10000

    const-string v5, "Closer"

    invoke-direct {p0, v5, p1, v1, v0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->setPsensorDisplay(Ljava/lang/String;FILjava/lang/String;)V

    .line 168
    iput-boolean v4, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->mIsDistantDone:Z

    goto :goto_0

    .line 170
    :cond_0
    const/4 v1, -0x1

    const-string v5, "Distant"

    invoke-direct {p0, v5, p1, v1, v0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->setPsensorDisplay(Ljava/lang/String;FILjava/lang/String;)V

    .line 171
    iput-boolean v3, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->mIsDistantDone:Z

    .line 173
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSensorChanged value="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",mIsCloseDone="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->mIsCloseDone:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",mIsDistantDone="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->mIsDistantDone:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v1, 0x0

    .line 177
    .local v1, "inValues":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v5

    .line 180
    goto :goto_1

    .line 178
    :catch_0
    move-exception v5

    .line 179
    .local v5, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 181
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSensorChanged inValues="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-boolean v2, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->mIsDistantDone:Z

    if-eqz v2, :cond_1

    const/16 v2, 0xbe

    if-le v1, v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f090181

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 184
    invoke-virtual {p0, v4}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->storeRusult(Z)V

    .line 185
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->finish()V

    goto :goto_2

    .line 187
    :cond_1
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    invoke-virtual {p0, v3}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->storeRusult(Z)V

    .line 189
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->finish()V

    .line 192
    :cond_2
    :goto_2
    return-void
.end method

.method private static getValueFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;

    .line 127
    const-string v0, "0"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 129
    .local v2, "fIn":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 131
    .local v3, "isr":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 132
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v3, v4

    .line 133
    const/16 v4, 0x400

    new-array v4, v4, [C

    .line 134
    .local v4, "inputBuffer":[C
    const/4 v5, -0x1

    .line 136
    .local v5, "q":I
    invoke-virtual {v3, v4}, Ljava/io/InputStreamReader;->read([C)I

    move-result v6

    move v5, v6

    .line 137
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 138
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 140
    if-lez v5, :cond_0

    .line 141
    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    nop

    .line 148
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 150
    nop

    .line 151
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    goto :goto_0

    .line 153
    :catch_0
    move-exception v6

    .line 154
    .local v6, "e2":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    .end local v6    # "e2":Ljava/io/IOException;
    :goto_0
    return-object v0

    .line 147
    .end local v4    # "inputBuffer":[C
    .end local v5    # "q":I
    :cond_0
    nop

    .line 148
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 150
    nop

    .line 151
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 155
    goto :goto_1

    .line 153
    :catch_1
    move-exception v4

    .line 154
    .local v4, "e2":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 156
    .end local v4    # "e2":Ljava/io/IOException;
    nop

    .line 157
    :goto_1
    return-object v0

    .line 146
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 142
    :catch_2
    move-exception v4

    .line 143
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    nop

    .line 147
    if-eqz v3, :cond_1

    .line 148
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    goto :goto_2

    .line 153
    :catch_3
    move-exception v5

    goto :goto_3

    .line 150
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 151
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 154
    .local v5, "e2":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 155
    .end local v5    # "e2":Ljava/io/IOException;
    :cond_2
    :goto_4
    nop

    .line 144
    :goto_5
    return-object v0

    .line 147
    .end local v4    # "e":Ljava/io/IOException;
    :goto_6
    if-eqz v3, :cond_3

    .line 148
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    goto :goto_7

    .line 153
    :catch_4
    move-exception v4

    goto :goto_8

    .line 150
    :cond_3
    :goto_7
    if-eqz v2, :cond_4

    .line 151
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    .line 154
    .local v4, "e2":Ljava/io/IOException;
    :goto_8
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 155
    .end local v4    # "e2":Ljava/io/IOException;
    :cond_4
    :goto_9
    nop

    .line 156
    :goto_a
    throw v0
.end method

.method private initSensor()V
    .locals 2

    .line 114
    nop

    .line 115
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->pManager:Landroid/hardware/SensorManager;

    .line 116
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->pSensor:Landroid/hardware/Sensor;

    .line 117
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity$2;-><init>(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->pListener:Landroid/hardware/SensorEventListener;

    .line 124
    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 221
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 222
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ProxSensorNoiseTestActivity false"

    const-string v4, "ProxSensorNoiseTestActivity"

    if-nez v1, :cond_0

    .line 223
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return v2

    .line 227
    :cond_0
    const-string v1, "/sys/class/xr-pls/device/ps_noise"

    invoke-static {v1}, Lcom/sprd/validationtools/utils/FileUtils;->fileIsExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    const-string v1, "ProxSensorNoiseTestActivity true"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v1, 0x1

    return v1

    .line 231
    :cond_1
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return v2
.end method

.method private setPsensorDisplay(Ljava/lang/String;FILjava/lang/String;)V
    .locals 4
    .param p1, "dis"    # Ljava/lang/String;
    .param p2, "data"    # F
    .param p3, "color"    # I
    .param p4, "noiseValue"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->psensorTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->pSensor:Landroid/hardware/Sensor;

    const-string v1, "\n"

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->psensorTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chip id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->pSensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->psensorTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090129

    invoke-virtual {p0, v3}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->psensorTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090126

    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->getString(I)Ljava/lang/String;

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

    .line 110
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->psensorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 111
    return-void
.end method

.method private startBackgroundThread()V
    .locals 2

    .line 198
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 199
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 200
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->mHandler:Landroid/os/Handler;

    .line 201
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 1

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 209
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 211
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 212
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 216
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    nop

    .line 217
    :goto_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 67
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    iput-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->mContext:Landroid/content/Context;

    .line 69
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->setContentView(I)V

    .line 71
    const v0, 0x7f0500ec

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->psensorTextView:Landroid/widget/TextView;

    .line 72
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->initSensor()V

    .line 73
    const-string v0, "Distant"

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    const-string v3, "0"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->setPsensorDisplay(Ljava/lang/String;FILjava/lang/String;)V

    .line 74
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method protected onPause()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->pManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->pListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->stopBackgroundThread()V

    .line 98
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 99
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 78
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 79
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->psensorTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 80
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->pManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->pListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->pSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 82
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->startBackgroundThread()V

    .line 83
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    return-void
.end method
