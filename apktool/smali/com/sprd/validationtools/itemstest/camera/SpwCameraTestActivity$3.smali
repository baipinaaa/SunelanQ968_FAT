.class Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$3;
.super Landroid/os/Handler;
.source "SpwCameraTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    .line 97
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    const-string v1, "spw_backphoto.jpg"

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/CameraAutoTestUtils;->checkPhoto(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->storeRusult(Z)V

    .line 106
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->finish()V

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->-$$Nest$fgetmTakePhotoBtn(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 102
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->-$$Nest$fgetmTakePhotoHandler(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 103
    nop

    .line 110
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
