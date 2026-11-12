.class Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$3;
.super Landroid/os/Handler;
.source "FrontCameraTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    .line 104
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    const-string v1, "frontphoto.jpg"

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/CameraAutoTestUtils;->checkPhoto(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->storeRusult(Z)V

    .line 113
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->finish()V

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->-$$Nest$fgetmTakePhotoBtn(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 109
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->-$$Nest$fgetmTakePhotoHandler(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 110
    nop

    .line 117
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
