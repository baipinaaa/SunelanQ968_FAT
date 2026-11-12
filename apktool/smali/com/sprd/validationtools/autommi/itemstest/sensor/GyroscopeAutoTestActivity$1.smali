.class Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity$1;
.super Landroid/os/Handler;
.source "GyroscopeAutoTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;

    .line 43
    iput-object p1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity$1;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity$1;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->-$$Nest$fgetmSensorData(Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v2, v0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v2, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity$1;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->-$$Nest$fgetmSensorData(Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;)[F

    move-result-object v0

    const/4 v2, 0x1

    aget v0, v0, v2

    float-to-double v2, v0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity$1;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->-$$Nest$fgetmSensorData(Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;)[F

    move-result-object v0

    const/4 v2, 0x2

    aget v0, v0, v2

    float-to-double v2, v0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity$1;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;

    invoke-static {v0, v1}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->-$$Nest$fputmSensorTestResult(Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;Z)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity$1;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;->-$$Nest$mautoCheckResult(Lcom/sprd/validationtools/autommi/itemstest/sensor/GyroscopeAutoTestActivity;)V

    .line 52
    nop

    .line 56
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
