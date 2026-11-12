.class Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity$1;
.super Landroid/os/Handler;
.source "LsensorAutoTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;

    .line 51
    iput-object p1, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity$1;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity$1;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->-$$Nest$fgetmSensorData(Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity$1;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->-$$Nest$fputmSensorTestResult(Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;Z)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity$1;->this$0:Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;->-$$Nest$mautoCheckResult(Lcom/sprd/validationtools/autommi/itemstest/sensor/LsensorAutoTestActivity;)V

    .line 60
    nop

    .line 64
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
