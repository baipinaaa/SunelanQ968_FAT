.class Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$3;
.super Ljava/lang/Object;
.source "GsensorTestActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->initSensor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    .line 150
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "s"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 152
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 17
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 155
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v2, v3}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->-$$Nest$fputmValues(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;[F)V

    .line 156
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 157
    .local v2, "x":F
    iget-object v4, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 158
    .local v4, "y":F
    iget-object v6, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    .line 159
    .local v6, "z":F
    iget-object v7, v0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    invoke-static {v7, v2, v4, v6}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->-$$Nest$mshowMsg(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;FFF)V

    .line 160
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v7, v7

    const-wide v9, 0x402399999999999aL    # 9.8

    sub-double v7, v9, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    .line 161
    .local v7, "dx":D
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    sub-double v11, v9, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    .line 162
    .local v11, "dy":D
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    sub-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    .line 163
    .local v9, "dz":D
    const-wide v13, 0x3fe916872b020c4aL    # 0.784

    .line 164
    .local v13, "ref":D
    iget-object v15, v0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    invoke-static {v15}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->-$$Nest$fgetmDxOk(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 165
    iget-object v15, v0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    cmpg-double v16, v7, v13

    if-gez v16, :cond_0

    move v3, v5

    :cond_0
    invoke-static {v15, v3}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->-$$Nest$fputmDxOk(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;Z)V

    .line 166
    :cond_1
    iget-object v3, v0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->-$$Nest$fgetmDyOk(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 167
    iget-object v3, v0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    cmpg-double v15, v11, v13

    if-gez v15, :cond_2

    move v15, v5

    goto :goto_0

    :cond_2
    const/4 v15, 0x0

    :goto_0
    invoke-static {v3, v15}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->-$$Nest$fputmDyOk(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;Z)V

    .line 168
    :cond_3
    iget-object v3, v0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->-$$Nest$fgetmDzOk(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 169
    iget-object v3, v0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    cmpg-double v15, v9, v13

    if-gez v15, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    invoke-static {v3, v5}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->-$$Nest$fputmDzOk(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;Z)V

    .line 170
    :cond_5
    return-void
.end method
