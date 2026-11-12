.class Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$8;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
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

    .line 334
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 339
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    invoke-static {v0, p1}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->-$$Nest$fputmSession(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 340
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 345
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$8;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    invoke-static {v0, p1}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->-$$Nest$fputmSession(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 346
    return-void
.end method
