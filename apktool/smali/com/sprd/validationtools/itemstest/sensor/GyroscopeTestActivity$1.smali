.class Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;
.super Ljava/lang/Object;
.source "GyroscopeTestActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->initSensor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    .line 138
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "s"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 140
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 143
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 144
    .local v0, "x":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 145
    .local v2, "y":F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    .line 146
    .local v4, "z":F
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mmi test values: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GyroscopeTestActivity"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6, v0, v2, v4}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$mdiplayXYZ(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;FFF)V

    .line 148
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)[F

    move-result-object v6

    aput v0, v6, v1

    .line 149
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)[F

    move-result-object v6

    aput v2, v6, v3

    .line 150
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)[F

    move-result-object v6

    aput v4, v6, v5

    .line 151
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetonetime(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    cmpl-float v7, v0, v6

    if-eqz v7, :cond_0

    cmpl-float v7, v2, v6

    if-eqz v7, :cond_0

    cmpl-float v6, v4, v6

    if-eqz v6, :cond_0

    .line 152
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6, v1}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fputonetime(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;Z)V

    .line 153
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetdata_last(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)[F

    move-result-object v6

    aput v0, v6, v1

    .line 154
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetdata_last(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)[F

    move-result-object v6

    aput v2, v6, v3

    .line 155
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetdata_last(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)[F

    move-result-object v6

    aput v4, v6, v5

    .line 157
    :cond_0
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetxPass(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)[F

    move-result-object v7

    aget v7, v7, v1

    invoke-static {v6, v7}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$mgsensorCheck(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;F)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)[F

    move-result-object v6

    aget v6, v6, v1

    iget-object v7, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v7}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetdata_last(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)[F

    move-result-object v7

    aget v7, v7, v1

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    .line 159
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6, v3}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fputxPass(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;Z)V

    .line 160
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6, v3, v1}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$mshowPass(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;II)V

    .line 162
    :cond_1
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetyPass(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)[F

    move-result-object v7

    aget v7, v7, v3

    invoke-static {v6, v7}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$mgsensorCheck(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;F)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)[F

    move-result-object v6

    aget v6, v6, v3

    iget-object v7, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v7}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetdata_last(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)[F

    move-result-object v7

    aget v7, v7, v3

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    .line 164
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6, v3}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fputyPass(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;Z)V

    .line 165
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6, v3, v3}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$mshowPass(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;II)V

    .line 167
    :cond_2
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetzPass(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)[F

    move-result-object v7

    aget v7, v7, v5

    invoke-static {v6, v7}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$mgsensorCheck(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;F)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetdata_current(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)[F

    move-result-object v6

    aget v6, v6, v5

    iget-object v7, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v7}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetdata_last(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)[F

    move-result-object v7

    aget v7, v7, v5

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_3

    .line 169
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6, v3}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fputzPass(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;Z)V

    .line 170
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v6, v3, v5}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$mshowPass(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;II)V

    .line 172
    :cond_3
    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v5}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetxPass(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v5}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetyPass(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v5}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetzPass(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 174
    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v5}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetmPassed(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 175
    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v5, v3}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fputmPassed(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;Z)V

    .line 176
    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-static {v5}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->-$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090183

    invoke-static {v5, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 178
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-virtual {v1, v3}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->storeRusult(Z)V

    .line 180
    :cond_4
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-virtual {v1}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-virtual {v1}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 181
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;

    invoke-virtual {v1}, Lcom/sprd/validationtools/itemstest/sensor/GyroscopeTestActivity;->finish()V

    .line 186
    :cond_5
    return-void
.end method
