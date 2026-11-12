.class Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$1;
.super Ljava/lang/Object;
.source "MacroLensCameraTestActivity.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


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

    .line 78
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 5
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 82
    const-string v0, "MacroLensCameraTestActivity"

    const-string v1, "onImageAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$ImageSaver;

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "/storage/emulated/0/mmi/MacroLens_backphoto.jpg"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$ImageSaver;-><init>(Landroid/media/Image;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method
