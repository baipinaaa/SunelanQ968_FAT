.class Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$2;
.super Landroid/os/Handler;
.source "PressureSensorCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    .line 183
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 185
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 199
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->-$$Nest$fgetmDisplayText(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->-$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090108

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->storeRusult(Z)V

    .line 201
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->finish()V

    .line 202
    goto :goto_0

    .line 194
    :pswitch_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->-$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f090183

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 195
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->storeRusult(Z)V

    .line 196
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->finish()V

    .line 197
    goto :goto_0

    .line 187
    :pswitch_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$2$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$2$1;-><init>(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 191
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 192
    nop

    .line 205
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
