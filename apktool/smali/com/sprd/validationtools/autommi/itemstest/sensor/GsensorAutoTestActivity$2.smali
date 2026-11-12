.class Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity$2;
.super Ljava/lang/Object;
.source "GsensorAutoTestActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->initSensor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;

    .line 108
    iput-object p1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity$2;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "s"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 110
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 113
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity$2;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->-$$Nest$fgetmSensorData(Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 114
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity$2;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->-$$Nest$fgetmSensorData(Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    .line 115
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity$2;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->-$$Nest$fgetmSensorData(Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v1, v1, v4

    aput v1, v0, v4

    .line 116
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity$2;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->-$$Nest$fgetmSensorData(Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;)[F

    move-result-object v1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity$2;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->-$$Nest$fgetmSensorData(Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;)[F

    move-result-object v2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity$2;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;

    invoke-static {v3}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->-$$Nest$fgetmSensorData(Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;)[F

    move-result-object v3

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;->-$$Nest$mdiplayXYZ(Lcom/sprd/validationtools/autommi/itemstest/sensor/GsensorAutoTestActivity;FFF)V

    .line 117
    return-void
.end method
