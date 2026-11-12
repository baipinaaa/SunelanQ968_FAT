.class Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8$1;
.super Ljava/lang/Object;
.source "FrontSecondaryCameraTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8;

.field final synthetic val$faces:[Landroid/hardware/camera2/params/Face;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8;[Landroid/hardware/camera2/params/Face;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8;

    .line 408
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8$1;->this$1:Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8;

    iput-object p2, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8$1;->val$faces:[Landroid/hardware/camera2/params/Face;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8$1;->val$faces:[Landroid/hardware/camera2/params/Face;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8$1;->this$1:Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;->-$$Nest$fgetmFaceMsgTextView(Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8$1;->this$1:Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;->-$$Nest$fgetmFaceMsgTextView(Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8$1;->this$1:Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;->-$$Nest$fgetmFaceMsgTextView(Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8$1;->this$1:Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;->-$$Nest$fgetmFaceMsgTextView(Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    :cond_1
    :goto_0
    return-void
.end method
