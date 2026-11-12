.class Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$6;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
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

    .line 265
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 278
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->-$$Nest$fgetmCameraOpenCloseLock(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 279
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 280
    const-string v0, "SecondaryCameraTestActivity"

    const-string v1, "CameraDevice.StateCallback1 stay onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_0

    .line 282
    const-string v1, "mThumbnailReader.close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 284
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->mNeedThumb:Z

    .line 287
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .line 291
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->-$$Nest$fgetmCameraOpenCloseLock(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 292
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 293
    const-string v0, "SecondaryCameraTestActivity"

    const-string v1, "CameraDevice.StateCallback1 stay onError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 269
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->-$$Nest$fgetmCameraOpenCloseLock(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 270
    const-string v0, "SecondaryCameraTestActivity"

    const-string v1, "CameraDevice.StateCallback onOpened in"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;

    invoke-static {v1, p1}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->-$$Nest$fputmCameraDevice(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;Landroid/hardware/camera2/CameraDevice;)V

    .line 272
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;

    invoke-static {v1, p1}, Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;->-$$Nest$mstartPreview(Lcom/sprd/validationtools/itemstest/camera/SecondaryCameraTestActivity;Landroid/hardware/camera2/CameraDevice;)V

    .line 273
    const-string v1, "CameraDevice.StateCallback onOpened out"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method
