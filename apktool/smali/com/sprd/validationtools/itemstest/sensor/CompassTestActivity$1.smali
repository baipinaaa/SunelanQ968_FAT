.class Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity$1;
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

    .line 85
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 93
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 87
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 88
    .local v0, "x":F
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;

    invoke-static {v1, v0}, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->-$$Nest$mshowOrien(Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;F)V

    .line 89
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;

    invoke-static {v1, v0}, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->-$$Nest$mdraw(Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;F)V

    .line 90
    return-void
.end method
