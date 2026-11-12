.class public Lcom/sprd/validationtools/itemstest/camera/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNV21FromImage(Landroid/media/Image;)[B
    .locals 14
    .param p0, "img"    # Landroid/media/Image;

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 73
    .local v0, "t1":J
    const/4 v2, 0x3

    .line 74
    .local v2, "NUM_PLANES":I
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    .line 75
    .local v3, "planeList":[Landroid/media/Image$Plane;
    const/4 v4, 0x3

    new-array v5, v4, [Ljava/nio/ByteBuffer;

    .line 77
    .local v5, "planeBuf":[Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 78
    aget-object v7, v3, v6

    .line 79
    .local v7, "plane":Landroid/media/Image$Plane;
    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    aput-object v8, v5, v6

    .line 77
    .end local v7    # "plane":Landroid/media/Image$Plane;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 82
    .end local v6    # "i":I
    :cond_0
    const/4 v4, 0x0

    aget-object v6, v5, v4

    .line 83
    .local v6, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 84
    .local v7, "yLength":I
    mul-int/lit8 v8, v7, 0x3

    const/4 v9, 0x2

    div-int/2addr v8, v9

    new-array v8, v8, [B

    .line 85
    .local v8, "imageBytes":[B
    invoke-virtual {v6, v8, v4, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 86
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 89
    const/4 v10, 0x1

    aget-object v6, v5, v10

    .line 90
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    .line 91
    .local v11, "uLength":I
    new-array v12, v11, [B

    .line 92
    .local v12, "bytes_u":[B
    invoke-virtual {v6, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 96
    aget-object v6, v5, v9

    .line 97
    new-array v9, v10, [B

    .line 98
    .local v9, "bytes_v":[B
    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 99
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 100
    aget-byte v10, v9, v4

    aput-byte v10, v8, v7

    .line 101
    add-int/lit8 v10, v7, 0x1

    invoke-static {v12, v4, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    const/4 v4, 0x0

    .line 103
    .end local v12    # "bytes_u":[B
    .local v4, "bytes_u":[B
    const/4 v9, 0x0

    .line 104
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getNV21FromImage cost "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v0

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "ImageUtils"

    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-object v8
.end method

.method public static writeYuvImage(Landroid/media/Image;Ljava/io/OutputStream;)V
    .locals 16
    .param p0, "img"    # Landroid/media/Image;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x23

    if-eq v0, v2, :cond_0

    .line 28
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 29
    const-string v2, "Unexpected Image format: %d, expected ImageFormat.YUV_420_888"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 28
    const-string v2, "ImageUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    .line 34
    .local v0, "outChannel":Ljava/nio/channels/WritableByteChannel;
    const/4 v2, 0x0

    .local v2, "plane":I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_6

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    aget-object v3, v3, v2

    .line 36
    .local v3, "colorPlane":Landroid/media/Image$Plane;
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 37
    .local v4, "colorData":Ljava/nio/ByteBuffer;
    if-nez v2, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    .line 38
    .local v5, "subsampleFactor":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v6

    div-int/2addr v6, v5

    .line 39
    .local v6, "colorW":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v7

    div-int/2addr v7, v5

    .line 40
    .local v7, "colorH":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 41
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 42
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    if-ne v8, v1, :cond_3

    .line 44
    const/4 v8, 0x0

    .local v8, "y":I
    const/4 v9, 0x0

    .local v9, "rowStart":I
    :goto_2
    if-ge v8, v7, :cond_2

    .line 46
    add-int v10, v9, v6

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 47
    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 48
    invoke-interface {v0, v4}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 44
    add-int/lit8 v8, v8, 0x1

    .line 45
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_2

    .end local v8    # "y":I
    .end local v9    # "rowStart":I
    :cond_2
    goto :goto_5

    .line 52
    :cond_3
    add-int/lit8 v8, v6, -0x1

    .line 53
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v9

    mul-int/2addr v8, v9

    add-int/2addr v8, v1

    new-array v8, v8, [B

    .line 54
    .local v8, "row":[B
    new-array v9, v6, [B

    .line 55
    .local v9, "packedRow":[B
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 56
    .local v10, "packedRowBuffer":Ljava/nio/ByteBuffer;
    const/4 v11, 0x0

    .local v11, "y":I
    const/4 v12, 0x0

    .local v12, "rowStart":I
    :goto_3
    if-ge v11, v7, :cond_5

    .line 58
    invoke-virtual {v4, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 59
    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 60
    const/4 v13, 0x0

    .local v13, "x":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    if-ge v13, v6, :cond_4

    .line 62
    aget-byte v15, v8, v14

    aput-byte v15, v9, v13

    .line 60
    add-int/lit8 v13, v13, 0x1

    .line 61
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v15

    add-int/2addr v14, v15

    goto :goto_4

    .line 64
    .end local v13    # "x":I
    .end local v14    # "i":I
    :cond_4
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 65
    invoke-interface {v0, v10}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 56
    add-int/lit8 v11, v11, 0x1

    .line 57
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    add-int/2addr v12, v13

    goto :goto_3

    .line 34
    .end local v3    # "colorPlane":Landroid/media/Image$Plane;
    .end local v4    # "colorData":Ljava/nio/ByteBuffer;
    .end local v5    # "subsampleFactor":I
    .end local v6    # "colorW":I
    .end local v7    # "colorH":I
    .end local v8    # "row":[B
    .end local v9    # "packedRow":[B
    .end local v10    # "packedRowBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "y":I
    .end local v12    # "rowStart":I
    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "plane":I
    :cond_6
    return-void
.end method
