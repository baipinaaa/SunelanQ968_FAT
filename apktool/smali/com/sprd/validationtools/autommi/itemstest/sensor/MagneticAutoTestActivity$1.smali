.class Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity$1;
.super Landroid/os/Handler;
.source "MagneticAutoTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;

    .line 48
    iput-object p1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity$1;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity$1;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->-$$Nest$fgetmSensorData(Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity$1;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->-$$Nest$fgetmSensorData(Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;)[F

    move-result-object v0

    const/4 v3, 0x1

    aget v0, v0, v3

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity$1;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->-$$Nest$fgetmSensorData(Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;)[F

    move-result-object v0

    const/4 v3, 0x2

    aget v0, v0, v3

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity$1;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;

    invoke-static {v0, v1}, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->-$$Nest$fputmSensorTestResult(Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;Z)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity$1;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;->-$$Nest$mautoCheckResult(Lcom/sprd/validationtools/autommi/itemstest/sensor/MagneticAutoTestActivity;)V

    .line 57
    nop

    .line 61
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
