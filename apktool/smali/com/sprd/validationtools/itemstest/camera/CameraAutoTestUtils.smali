.class public Lcom/sprd/validationtools/itemstest/camera/CameraAutoTestUtils;
.super Ljava/lang/Object;
.source "CameraAutoTestUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraAutoTestUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPhoto(Ljava/lang/String;)Z
    .locals 16
    .param p0, "fileName"    # Ljava/lang/String;

    .line 24
    const-string v1, "CameraAutoTestUtils"

    const-string v0, "check photo is black or not"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sprd/validationtools/utils/StorageUtil;->getInternalStoragePath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mmi/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v2, p0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, "filePath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 27
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 28
    .local v5, "height":I
    const/4 v6, 0x0

    .line 29
    .local v6, "width":I
    const/4 v7, 0x1

    .line 31
    .local v7, "isBlack":Z
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, "fis":Ljava/io/FileInputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v4, v8

    .line 33
    if-nez v4, :cond_0

    .line 34
    const/4 v1, 0x0

    return v1

    .line 36
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move v5, v8

    .line 37
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v8

    .end local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 38
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 42
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 43
    :goto_1
    mul-int v0, v5, v6

    .line 44
    .local v0, "all":I
    const/4 v8, 0x0

    .line 45
    .local v8, "blackCount":I
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_2
    if-ge v9, v5, :cond_2

    .line 46
    const/4 v10, 0x0

    .local v10, "x":I
    :goto_3
    if-ge v10, v6, :cond_1

    .line 47
    invoke-virtual {v4, v10, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    .line 48
    .local v11, "color":I
    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    .line 49
    .local v12, "alpha":I
    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v13

    .line 50
    .local v13, "red":I
    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v14

    .line 51
    .local v14, "green":I
    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v15

    .line 52
    .local v15, "blue":I
    const/16 v2, 0x32

    if-ge v13, v2, :cond_1

    if-ge v14, v2, :cond_1

    if-ge v15, v2, :cond_1

    .line 53
    nop

    .end local v11    # "color":I
    .end local v12    # "alpha":I
    .end local v13    # "red":I
    .end local v14    # "green":I
    .end local v15    # "blue":I
    add-int/lit8 v8, v8, 0x1

    .line 46
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p0

    goto :goto_3

    .line 45
    .end local v10    # "x":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p0

    goto :goto_2

    .line 59
    .end local v9    # "y":I
    :cond_2
    if-eqz v4, :cond_3

    .line 60
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 61
    const/4 v4, 0x0

    .line 63
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "all = "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "blackCount = "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    if-ne v8, v0, :cond_4

    .line 65
    const-string v2, "is black"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v7, 0x0

    .line 68
    :cond_4
    return v7
.end method
