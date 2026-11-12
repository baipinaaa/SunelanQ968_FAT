.class Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$2;
.super Landroid/os/Handler;
.source "CameraTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    .line 106
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-virtual {v0, v2}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->storeRusult(Z)V

    .line 124
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->finish()V

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->-$$Nest$mcloseFlashLight(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;I)V

    .line 121
    goto :goto_0

    .line 117
    :pswitch_2
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-static {v0, v2}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->-$$Nest$mcloseFlashLight(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;I)V

    .line 118
    goto :goto_0

    .line 114
    :pswitch_3
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->-$$Nest$mopenFlashLight(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;I)V

    .line 115
    goto :goto_0

    .line 111
    :pswitch_4
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-static {v0, v2}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->-$$Nest$mopenFlashLight(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;I)V

    .line 112
    nop

    .line 127
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 128
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
