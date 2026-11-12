.class Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$8;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
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

    .line 355
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 359
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    invoke-static {v0, p1}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->-$$Nest$fputmSession(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 360
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 364
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    invoke-static {v0, p1}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->-$$Nest$fputmSession(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 365
    return-void
.end method
