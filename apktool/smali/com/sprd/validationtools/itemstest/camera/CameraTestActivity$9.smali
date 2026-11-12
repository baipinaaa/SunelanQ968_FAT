.class Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$9;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
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

    .line 450
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$9;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 455
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$9;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-static {v0, p1}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->-$$Nest$fputmSession(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 456
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 461
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$9;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-static {v0, p1}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->-$$Nest$fputmSession(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 462
    return-void
.end method
