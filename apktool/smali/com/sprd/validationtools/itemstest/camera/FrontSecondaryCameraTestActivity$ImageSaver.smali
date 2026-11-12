.class Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$ImageSaver;
.super Ljava/lang/Object;
.source "FrontSecondaryCameraTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageSaver"
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mImage:Landroid/media/Image;


# direct methods
.method public constructor <init>(Landroid/media/Image;Ljava/io/File;)V
    .locals 0
    .param p1, "image"    # Landroid/media/Image;
    .param p2, "file"    # Ljava/io/File;

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$ImageSaver;->mImage:Landroid/media/Image;

    .line 485
    iput-object p2, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$ImageSaver;->mFile:Ljava/io/File;

    .line 486
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 490
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$ImageSaver;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 491
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 492
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 493
    const/4 v2, 0x0

    .line 495
    .local v2, "output":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$ImageSaver;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 496
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$ImageSaver;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 498
    :cond_0
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$ImageSaver;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 499
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$ImageSaver;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 501
    :cond_1
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$ImageSaver;->mFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 502
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$ImageSaver;->mImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 507
    nop

    .line 509
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 512
    :goto_0
    goto :goto_1

    .line 510
    :catch_0
    move-exception v3

    .line 511
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 506
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 503
    :catch_1
    move-exception v3

    .line 504
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    .end local v3    # "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$ImageSaver;->mImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 507
    if-eqz v2, :cond_2

    .line 509
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 515
    :cond_2
    :goto_1
    return-void

    .line 506
    :goto_2
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$ImageSaver;->mImage:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->close()V

    .line 507
    if-eqz v2, :cond_3

    .line 509
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 512
    goto :goto_3

    .line 510
    :catch_2
    move-exception v4

    .line 511
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 514
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    throw v3
.end method
