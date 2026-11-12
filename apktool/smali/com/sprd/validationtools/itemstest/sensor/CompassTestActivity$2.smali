.class Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity$2;
.super Ljava/lang/Object;
.source "CompassTestActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->initSensor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;

    .line 97
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 106
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 99
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 100
    .local v0, "x":F
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 101
    .local v1, "y":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    .line 102
    .local v2, "z":F
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;

    invoke-static {v3, v0, v1, v2}, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->-$$Nest$mshowInfo(Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;FFF)V

    .line 103
    return-void
.end method
