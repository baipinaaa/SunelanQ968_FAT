.class Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$6;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "MacroLensCameraTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    .line 243
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 256
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->-$$Nest$fgetmCameraOpenCloseLock(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 257
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 258
    const-string v0, "MacroLensCameraTestActivity"

    const-string v1, "CameraDevice.StateCallback1 stay onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_0

    .line 260
    const-string v1, "mThumbnailReader.close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 262
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mThumbnailReader:Landroid/media/ImageReader;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->mNeedThumb:Z

    .line 265
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .line 269
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->-$$Nest$fgetmCameraOpenCloseLock(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 270
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 271
    const-string v0, "MacroLensCameraTestActivity"

    const-string v1, "CameraDevice.StateCallback1 stay onError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 247
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->-$$Nest$fgetmCameraOpenCloseLock(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 248
    const-string v0, "MacroLensCameraTestActivity"

    const-string v1, "CameraDevice.StateCallback onOpened in"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    invoke-static {v1, p1}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->-$$Nest$fputmCameraDevice(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;Landroid/hardware/camera2/CameraDevice;)V

    .line 250
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    invoke-static {v1, p1}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->-$$Nest$mstartPreview(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;Landroid/hardware/camera2/CameraDevice;)V

    .line 251
    const-string v1, "CameraDevice.StateCallback onOpened out"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method
