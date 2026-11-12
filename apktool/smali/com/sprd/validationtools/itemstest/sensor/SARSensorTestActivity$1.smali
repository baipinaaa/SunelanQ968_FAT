.class Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity$1;
.super Ljava/lang/Object;
.source "SARSensorTestActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->initSensor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;

    .line 78
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "s"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 80
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 83
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;->-$$Nest$monSensorEvent(Lcom/sprd/validationtools/itemstest/sensor/SARSensorTestActivity;F)V

    .line 84
    return-void
.end method
