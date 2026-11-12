.class Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$SensorCalibrationThread;
.super Ljava/lang/Thread;
.source "PressureSensorCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorCalibrationThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    .line 92
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$SensorCalibrationThread;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$SensorCalibrationThread;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->-$$Nest$msensorCalibration(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)V

    .line 95
    return-void
.end method
