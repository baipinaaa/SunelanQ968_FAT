.class Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$5;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "FrontCameraTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->captureStillPicture()V
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

    .line 208
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$5;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$5;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->-$$Nest$fgetmPreviewBuilder(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$5;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->-$$Nest$fgetmPreviewBuilder(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$5;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->-$$Nest$fgetmSession(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$5;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->-$$Nest$fgetmPreviewRequest(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 219
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method
