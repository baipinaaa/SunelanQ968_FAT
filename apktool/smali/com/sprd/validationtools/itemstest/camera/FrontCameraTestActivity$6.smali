.class Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$6;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
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

    .line 267
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 280
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->-$$Nest$fgetmCameraOpenCloseLock(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 281
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 282
    const-string v0, "FrontCameraTestActivity"

    const-string v1, "CameraDevice.StateCallback1 stay onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_0

    .line 284
    const-string v1, "mThumbnailReader.close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 286
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->mNeedThumb:Z

    .line 289
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .line 293
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->-$$Nest$fgetmCameraOpenCloseLock(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 294
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 295
    const-string v0, "FrontCameraTestActivity"

    const-string v1, "CameraDevice.StateCallback1 stay onError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 271
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->-$$Nest$fgetmCameraOpenCloseLock(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 272
    const-string v0, "FrontCameraTestActivity"

    const-string v1, "CameraDevice.StateCallback onOpened in"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    invoke-static {v1, p1}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->-$$Nest$fputmCameraDevice(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;Landroid/hardware/camera2/CameraDevice;)V

    .line 274
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    invoke-static {v1, p1}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->-$$Nest$mstartPreview(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;Landroid/hardware/camera2/CameraDevice;)V

    .line 275
    const-string v1, "CameraDevice.StateCallback onOpened out"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void
.end method
