.class Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity$2;
.super Landroid/os/Handler;
.source "ASensorCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;

    .line 119
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->-$$Nest$fgetmR(Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->-$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090183

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 132
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->storeRusult(Z)V

    .line 133
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->finish()V

    .line 134
    goto :goto_0

    .line 123
    :pswitch_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity$2$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity$2$1;-><init>(Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 128
    nop

    .line 140
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
