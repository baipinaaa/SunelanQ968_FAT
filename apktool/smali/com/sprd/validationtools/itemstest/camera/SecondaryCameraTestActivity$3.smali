.class Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$3;
.super Landroid/os/Handler;
.source "SecondaryCameraTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;

    .line 101
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 109
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;

    const-string v1, "sec_backphoto.jpg"

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/CameraAutoTestUtils;->checkPhoto(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->storeRusult(Z)V

    .line 110
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->finish()V

    goto :goto_0

    .line 105
    :pswitch_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->-$$Nest$fgetmTakePhotoBtn(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 106
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->-$$Nest$fgetmTakePhotoHandler(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 107
    nop

    .line 114
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
