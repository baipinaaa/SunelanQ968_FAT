.class Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$3$1;
.super Ljava/lang/Object;
.source "LightSensorCalibrationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$3;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$3;

    .line 144
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$3$1;->this$1:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$3$1;->this$1:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$3;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->-$$Nest$mgetResult(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)V

    .line 147
    return-void
.end method
