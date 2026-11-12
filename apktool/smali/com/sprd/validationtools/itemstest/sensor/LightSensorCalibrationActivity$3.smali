.class Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$3;
.super Landroid/os/Handler;
.source "LightSensorCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    .line 140
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 157
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->-$$Nest$fgetmR(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->-$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090183

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 153
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->storeRusult(Z)V

    .line 154
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->finish()V

    .line 155
    goto :goto_0

    .line 144
    :pswitch_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$3$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$3$1;-><init>(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 149
    nop

    .line 161
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
