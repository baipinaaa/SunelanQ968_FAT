.class Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity$1;
.super Ljava/lang/Object;
.source "PressureTestActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->initSensor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;

    .line 85
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "s"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 87
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 90
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 91
    .local v0, "x":F
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;

    invoke-static {v2, v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->-$$Nest$mdisplayValue(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;F)V

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mmitest get value of pressure sensor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PressureTestActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;

    invoke-static {v2, v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->-$$Nest$fputdataPressure(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;F)V

    .line 94
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->-$$Nest$fgetpressureValue(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;)F

    move-result v2

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->-$$Nest$fgetdataPressure(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;)F

    move-result v3

    cmpl-float v2, v2, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/high16 v2, 0x44610000    # 900.0f

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;

    invoke-static {v4}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->-$$Nest$fgetdataPressure(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;)F

    move-result v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_1

    const v2, 0x44898000    # 1100.0f

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;

    invoke-static {v4}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->-$$Nest$fgetdataPressure(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;)F

    move-result v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->-$$Nest$fgetcnt(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v2, v4}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->-$$Nest$fputcnt(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;I)V

    .line 98
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->-$$Nest$fgetcnt(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;)I

    move-result v2

    const/4 v4, 0x5

    if-le v2, v4, :cond_0

    .line 99
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;

    invoke-static {v2, v3}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->-$$Nest$fputmPass(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;Z)V

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->-$$Nest$fgetdataPressure(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;)F

    move-result v4

    invoke-static {v2, v4}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->-$$Nest$fputpressureValue(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;F)V

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->-$$Nest$fgetmPass(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->-$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f090183

    invoke-static {v2, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 106
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;

    invoke-virtual {v1, v3}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->storeRusult(Z)V

    .line 107
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;

    invoke-virtual {v1}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->finish()V

    goto :goto_0

    .line 109
    :cond_2
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 110
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;

    invoke-virtual {v2, v1}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->storeRusult(Z)V

    .line 111
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;

    invoke-virtual {v1}, Lcom/sprd/validationtools/itemstest/sensor/PressureTestActivity;->finish()V

    .line 114
    :cond_3
    :goto_0
    return-void
.end method
