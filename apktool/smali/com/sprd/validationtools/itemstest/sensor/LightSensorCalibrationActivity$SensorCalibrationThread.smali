.class Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$SensorCalibrationThread;
.super Ljava/lang/Thread;
.source "LightSensorCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorCalibrationThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    .line 95
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$SensorCalibrationThread;->this$0:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$SensorCalibrationThread;->this$0:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->-$$Nest$msensorCalibration(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)V

    .line 98
    return-void
.end method
