.class Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "FrontSecondaryCameraTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;

    .line 389
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 394
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;

    invoke-static {v0, p1}, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;->-$$Nest$fputmSession(Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 395
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/Face;

    .line 396
    .local v0, "faces":[Landroid/hardware/camera2/params/Face;
    if-eqz v0, :cond_2

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSessionCaptureCallback onCaptureCompleted faces="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FrontSecondaryCameraTestActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSessionCaptureCallback faces.length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    array-length v1, v0

    const/16 v3, 0xa

    if-gt v1, v3, :cond_0

    .line 400
    return-void

    .line 403
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSessionCaptureCallback faces id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSessionCaptureCallback faces score="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    aget-object v1, v0, v3

    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v1

    if-nez v1, :cond_1

    .line 406
    return-void

    .line 408
    :cond_1
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;->-$$Nest$fgetmMainHandler(Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8$1;

    invoke-direct {v2, p0, v0}, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8$1;-><init>(Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8;[Landroid/hardware/camera2/params/Face;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    :cond_2
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 428
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;

    invoke-static {v0, p1}, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;->-$$Nest$fputmSession(Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 429
    return-void
.end method
