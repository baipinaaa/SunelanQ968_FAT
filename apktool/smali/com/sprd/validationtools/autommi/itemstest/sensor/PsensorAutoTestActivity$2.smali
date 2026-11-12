.class Lcom/sprd/validationtools/autommi/itemstest/sensor/PsensorAutoTestActivity$2;
.super Ljava/lang/Object;
.source "PsensorAutoTestActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/autommi/itemstest/sensor/PsensorAutoTestActivity;->initSensor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/PsensorAutoTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/autommi/itemstest/sensor/PsensorAutoTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/autommi/itemstest/sensor/PsensorAutoTestActivity;

    .line 112
    iput-object p1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/PsensorAutoTestActivity$2;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/PsensorAutoTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "s"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 114
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 117
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/PsensorAutoTestActivity$2;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/PsensorAutoTestActivity;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/sprd/validationtools/autommi/itemstest/sensor/PsensorAutoTestActivity;->-$$Nest$fputmSensorData(Lcom/sprd/validationtools/autommi/itemstest/sensor/PsensorAutoTestActivity;F)V

    .line 118
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/PsensorAutoTestActivity$2;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/PsensorAutoTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/PsensorAutoTestActivity;->-$$Nest$fgetmSensorData(Lcom/sprd/validationtools/autommi/itemstest/sensor/PsensorAutoTestActivity;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/sprd/validationtools/autommi/itemstest/sensor/PsensorAutoTestActivity;->-$$Nest$mdiplaySensorData(Lcom/sprd/validationtools/autommi/itemstest/sensor/PsensorAutoTestActivity;F)V

    .line 119
    return-void
.end method
