.class public Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;
.super Ljava/lang/Object;
.source "SensorUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SensorUtils"

.field private static final TEST_OK:Ljava/lang/String; = "2"

.field private static final mSensorCaliSaveResultPass:I = 0x1e


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorType"    # I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mSensorManager:Landroid/hardware/SensorManager;

    .line 21
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mSensor:Landroid/hardware/Sensor;

    .line 22
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mContext:Landroid/content/Context;

    .line 23
    const/4 v1, -0x1

    iput v1, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mSensorType:I

    .line 24
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 30
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mSensorManager:Landroid/hardware/SensorManager;

    .line 31
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mContext:Landroid/content/Context;

    .line 32
    iput p2, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mSensorType:I

    .line 33
    invoke-virtual {v0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mSensor:Landroid/hardware/Sensor;

    .line 34
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils$1;-><init>(Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 41
    return-void
.end method

.method public static getResult(Ljava/lang/String;)Z
    .locals 3
    .param p0, "getResultCmd"    # Ljava/lang/String;

    .line 71
    const-string v0, "/sys/class/sprd_sensorhub/sensor_hub/calibrator_cmd"

    invoke-static {v0, p0}, Lcom/sprd/validationtools/utils/FileUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "/sys/class/sprd_sensorhub/sensor_hub/calibrator_data"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "getResult":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResult the result of boolen Result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SensorUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const/4 v1, 0x1

    return v1

    .line 77
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static saveResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "saveResultCmd"    # Ljava/lang/String;
    .param p1, "saveResultPath"    # Ljava/lang/String;

    .line 86
    const-string v0, "SensorUtils"

    const-string v1, "saveResult..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v1, "/sys/class/sprd_sensorhub/sensor_hub/calibrator_cmd"

    invoke-static {v1, p0}, Lcom/sprd/validationtools/utils/FileUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "/sys/class/sprd_sensorhub/sensor_hub/calibrator_data"

    invoke-static {v1}, Lcom/sprd/validationtools/utils/FileUtils;->readFileData(Ljava/lang/String;)I

    move-result v2

    .line 89
    .local v2, "readResult":I
    const/4 v3, 0x0

    const/16 v4, 0x1e

    if-ne v2, v4, :cond_1

    .line 90
    invoke-static {v1, p1}, Lcom/sprd/validationtools/utils/FileUtils;->saveFileData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 91
    .local v1, "saveResultLen":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "save result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-ne v1, v4, :cond_0

    .line 93
    const/4 v0, 0x1

    return v0

    .line 95
    :cond_0
    return v3

    .line 98
    .end local v1    # "saveResultLen":I
    :cond_1
    return v3
.end method


# virtual methods
.method public disableSensor()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mSensorManager:Landroid/hardware/SensorManager;

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSensor mSensorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mSensorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SensorUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 62
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 64
    :cond_1
    return-void
.end method

.method public enableSensor()Z
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mSensorManager:Landroid/hardware/SensorManager;

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSensor mSensorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mSensorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SensorUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 49
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/sensor/SensorUtils;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 51
    .local v0, "ret":Z
    return v0

    .line 53
    .end local v0    # "ret":Z
    :cond_1
    return v1
.end method
