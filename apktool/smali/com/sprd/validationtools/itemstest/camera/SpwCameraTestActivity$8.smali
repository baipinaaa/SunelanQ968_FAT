.class Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$8;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
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

    .line 344
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 349
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    invoke-static {v0, p1}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->-$$Nest$fputmSession(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 350
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 355
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    invoke-static {v0, p1}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->-$$Nest$fputmSession(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 356
    return-void
.end method
