.class Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$6;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
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

    .line 253
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 266
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->-$$Nest$fgetmCameraOpenCloseLock(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 267
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 268
    const-string v0, "SpwCameraTestActivity"

    const-string v1, "CameraDevice.StateCallback1 stay onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_0

    .line 270
    const-string v1, "mThumbnailReader.close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 272
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->mNeedThumb:Z

    .line 275
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .line 279
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->-$$Nest$fgetmCameraOpenCloseLock(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 280
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 281
    const-string v0, "SpwCameraTestActivity"

    const-string v1, "CameraDevice.StateCallback1 stay onError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 257
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->-$$Nest$fgetmCameraOpenCloseLock(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 258
    const-string v0, "SpwCameraTestActivity"

    const-string v1, "CameraDevice.StateCallback onOpened in"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    invoke-static {v1, p1}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->-$$Nest$fputmCameraDevice(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;Landroid/hardware/camera2/CameraDevice;)V

    .line 260
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    invoke-static {v1, p1}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->-$$Nest$mstartPreview(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;Landroid/hardware/camera2/CameraDevice;)V

    .line 261
    const-string v1, "CameraDevice.StateCallback onOpened out"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method
