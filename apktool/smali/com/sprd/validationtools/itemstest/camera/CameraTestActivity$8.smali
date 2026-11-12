.class Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$8;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
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

    .line 425
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 448
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 443
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-static {v0, p1}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->-$$Nest$fputmSession(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 430
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->-$$Nest$fgetmPreviewBuilder(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 431
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->-$$Nest$fgetmPreviewBuilder(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->-$$Nest$fputmPreviewRequest(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;Landroid/hardware/camera2/CaptureRequest;)V

    .line 432
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->-$$Nest$fgetmSession(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->-$$Nest$fgetmPreviewRequest(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->-$$Nest$fgetmSessionCaptureCallback(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraTestActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method
