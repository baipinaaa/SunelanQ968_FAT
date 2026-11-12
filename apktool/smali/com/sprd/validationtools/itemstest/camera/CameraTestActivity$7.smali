.class Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$7;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
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

    .line 358
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$7;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 371
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$7;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->-$$Nest$fgetmCameraOpenCloseLock(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 372
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 373
    const-string v0, "CameraTestActivity"

    const-string v1, "CameraDevice.StateCallback1 stay onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$7;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_0

    .line 375
    const-string v1, "mThumbnailReader.close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$7;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 377
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$7;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$7;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->mNeedThumb:Z

    .line 380
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .line 384
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$7;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->-$$Nest$fgetmCameraOpenCloseLock(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 385
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 386
    const-string v0, "CameraTestActivity"

    const-string v1, "CameraDevice.StateCallback1 stay onError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 362
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$7;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->-$$Nest$fgetmCameraOpenCloseLock(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 363
    const-string v0, "CameraTestActivity"

    const-string v1, "CameraDevice.StateCallback onOpened in"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$7;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-static {v1, p1}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->-$$Nest$fputmCameraDevice(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;Landroid/hardware/camera2/CameraDevice;)V

    .line 365
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$7;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-static {v1, p1}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->-$$Nest$mstartPreview(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;Landroid/hardware/camera2/CameraDevice;)V

    .line 366
    const-string v1, "CameraDevice.StateCallback onOpened out"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void
.end method
