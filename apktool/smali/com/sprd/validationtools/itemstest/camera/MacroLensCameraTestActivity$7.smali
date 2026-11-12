.class Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$7;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
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

    .line 311
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$7;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 332
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 327
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$7;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    invoke-static {v0, p1}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->-$$Nest$fputmSession(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 316
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$7;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->-$$Nest$fgetmSession(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$7;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->-$$Nest$fgetmPreviewBuilder(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$7;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->-$$Nest$fgetmSessionCaptureCallback(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$7;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MacroLensCameraTestActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method
