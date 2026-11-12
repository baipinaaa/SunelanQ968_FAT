.class Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$3;
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

    .line 132
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    const-string v1, "backphoto.jpg"

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/CameraAutoTestUtils;->checkPhoto(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->storeRusult(Z)V

    .line 141
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->finish()V

    goto :goto_0

    .line 136
    :pswitch_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->-$$Nest$fgetmTakePhotoBtn(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 137
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->-$$Nest$fgetmTakePhotoHandler(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 138
    nop

    .line 145
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
