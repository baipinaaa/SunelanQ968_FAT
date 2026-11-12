.class Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$1;
.super Ljava/lang/Object;
.source "SpwCameraTestActivity.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


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

    .line 79
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 5
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 83
    const-string v0, "SpwCameraTestActivity"

    const-string v1, "onImageAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$ImageSaver;

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "/storage/emulated/0/mmi/spw_backphoto.jpg"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$ImageSaver;-><init>(Landroid/media/Image;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method
