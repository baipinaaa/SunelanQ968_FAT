.class Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$1;
.super Ljava/lang/Object;
.source "CameraTestActivity.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


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

    .line 83
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 5
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 87
    const-string v0, "CameraTestActivity"

    const-string v1, "onImageAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$ImageSaver;

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "/storage/emulated/0/mmi/backphoto.jpg"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$ImageSaver;-><init>(Landroid/media/Image;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/CameraTestActivity;

    const/4 v1, 0x0

    invoke-static {v0, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    return-void
.end method
