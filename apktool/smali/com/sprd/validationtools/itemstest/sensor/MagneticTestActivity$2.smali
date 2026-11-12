.class Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;
.super Ljava/lang/Object;
.source "MagneticTestActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->initSensor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    .line 122
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "s"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 124
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mmi test values: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MagneticTestActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetmFailRunnable(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v4

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v3

    invoke-static {v0, v1, v5, v6}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$mdiplayXYZ(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;FFF)V

    .line 133
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 134
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 135
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 137
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetonetime(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)[F

    move-result-object v0

    aget v0, v0, v2

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)[F

    move-result-object v0

    aget v0, v0, v4

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)[F

    move-result-object v0

    aget v0, v0, v3

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0, v2}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fputonetime(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;Z)V

    .line 140
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetdata_last(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)[F

    move-result-object v1

    aget v1, v1, v2

    aput v1, v0, v2

    .line 141
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetdata_last(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)[F

    move-result-object v1

    aget v1, v1, v4

    aput v1, v0, v4

    .line 142
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetdata_last(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)[F

    move-result-object v1

    aget v1, v1, v3

    aput v1, v0, v3

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)[F

    move-result-object v0

    aget v0, v0, v2

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetdata_last(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)[F

    move-result-object v1

    aget v1, v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0, v4}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fputxPass(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;Z)V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)[F

    move-result-object v0

    aget v0, v0, v4

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetdata_last(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)[F

    move-result-object v3

    aget v3, v3, v4

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0, v4}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fputyPass(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;Z)V

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)[F

    move-result-object v0

    aget v0, v0, v4

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetdata_last(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)[F

    move-result-object v3

    aget v3, v3, v4

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0, v4}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fputzPass(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;Z)V

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetxPass(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetyPass(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetzPass(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetmSuccessFlag(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 156
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0, v4}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fputmSuccessFlag(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;Z)V

    .line 157
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090183

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 159
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-virtual {v0, v4}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->storeRusult(Z)V

    .line 160
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->finish()V

    .line 163
    :cond_4
    return-void
.end method
