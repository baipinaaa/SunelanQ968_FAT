.class public final Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
.super Ljava/lang/Object;
.source "GenericMultipleBarcodeReader.java"

# interfaces
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# static fields
.field private static final MAX_DEPTH:I = 0x4

.field private static final MIN_DIMENSION_TO_RECUR:I = 0x64


# instance fields
.field private final delegate:Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .locals 0
    .param p1, "delegate"    # Lcom/google/zxing/Reader;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    .line 54
    return-void
.end method

.method private doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V
    .locals 23
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .param p4, "xOffset"    # I
    .param p5, "yOffset"    # I
    .param p6, "currentDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;",
            "Ljava/util/List<",
            "Lcom/google/zxing/Result;",
            ">;III)V"
        }
    .end annotation

    .line 78
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .local p3, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    move-object/from16 v1, p1

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    const/4 v0, 0x4

    if-le v11, v0, :cond_0

    .line 79
    return-void

    .line 84
    :cond_0
    move-object/from16 v12, p0

    :try_start_0
    iget-object v0, v12, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    move-object/from16 v13, p2

    invoke-interface {v0, v1, v13}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .local v0, "result":Lcom/google/zxing/Result;
    nop

    .line 88
    const/4 v2, 0x0

    .line 89
    .local v2, "alreadyFound":Z
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/Result;

    .line 90
    .local v4, "existingResult":Lcom/google/zxing/Result;
    invoke-virtual {v4}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    const/4 v2, 0x1

    .line 92
    move v14, v2

    goto :goto_1

    .line 94
    .end local v4    # "existingResult":Lcom/google/zxing/Result;
    :cond_1
    goto :goto_0

    .line 89
    :cond_2
    move v14, v2

    .line 95
    .end local v2    # "alreadyFound":Z
    .local v14, "alreadyFound":Z
    :goto_1
    if-nez v14, :cond_3

    .line 96
    invoke-static {v0, v9, v10}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;

    move-result-object v2

    move-object/from16 v15, p3

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 95
    :cond_3
    move-object/from16 v15, p3

    .line 98
    :goto_2
    invoke-virtual {v0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v8

    .line 99
    .local v8, "resultPoints":[Lcom/google/zxing/ResultPoint;
    if-eqz v8, :cond_f

    array-length v2, v8

    if-nez v2, :cond_4

    move-object/from16 v16, v0

    move-object/from16 v20, v8

    move/from16 v18, v14

    goto/16 :goto_6

    .line 102
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v7

    .line 103
    .local v7, "width":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v6

    .line 104
    .local v6, "height":I
    int-to-float v2, v7

    .line 105
    .local v2, "minX":F
    int-to-float v3, v6

    .line 106
    .local v3, "minY":F
    const/4 v4, 0x0

    .line 107
    .local v4, "maxX":F
    const/4 v5, 0x0

    .line 108
    .local v5, "maxY":F
    move-object/from16 v16, v0

    .end local v0    # "result":Lcom/google/zxing/Result;
    .local v16, "result":Lcom/google/zxing/Result;
    array-length v0, v8

    const/4 v12, 0x0

    move/from16 v21, v5

    move v5, v2

    move/from16 v2, v21

    move/from16 v22, v4

    move v4, v3

    move/from16 v3, v22

    .local v2, "maxY":F
    .local v3, "maxX":F
    .local v4, "minY":F
    .local v5, "minX":F
    :goto_3
    if-ge v12, v0, :cond_a

    aget-object v17, v8, v12

    .line 109
    .local v17, "point":Lcom/google/zxing/ResultPoint;
    if-nez v17, :cond_5

    .line 110
    goto :goto_4

    .line 112
    :cond_5
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v18

    .line 113
    .local v18, "x":F
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v19

    .line 114
    .local v19, "y":F
    cmpg-float v20, v18, v5

    if-gez v20, :cond_6

    .line 115
    move/from16 v5, v18

    .line 117
    :cond_6
    cmpg-float v20, v19, v4

    if-gez v20, :cond_7

    .line 118
    move/from16 v4, v19

    .line 120
    :cond_7
    cmpl-float v20, v18, v3

    if-lez v20, :cond_8

    .line 121
    move/from16 v3, v18

    .line 123
    :cond_8
    cmpl-float v20, v19, v2

    if-lez v20, :cond_9

    .line 124
    move/from16 v2, v19

    .line 108
    .end local v17    # "point":Lcom/google/zxing/ResultPoint;
    .end local v18    # "x":F
    .end local v19    # "y":F
    :cond_9
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 129
    :cond_a
    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v12, v5, v0

    if-lez v12, :cond_b

    .line 130
    float-to-int v12, v5

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, v12, v6}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v12

    add-int/lit8 v0, v11, 0x1

    move v13, v2

    .end local v2    # "maxY":F
    .local v13, "maxY":F
    move-object/from16 v2, p0

    move/from16 v18, v14

    move v14, v3

    .end local v3    # "maxX":F
    .local v14, "maxX":F
    .local v18, "alreadyFound":Z
    move-object v3, v12

    move v12, v4

    .end local v4    # "minY":F
    .local v12, "minY":F
    move-object/from16 v4, p2

    move/from16 v19, v5

    .end local v5    # "minX":F
    .local v19, "minX":F
    move-object/from16 v5, p3

    move v15, v6

    .end local v6    # "height":I
    .local v15, "height":I
    move/from16 v6, p4

    move v10, v7

    .end local v7    # "width":I
    .local v10, "width":I
    move/from16 v7, p5

    move-object/from16 v20, v8

    .end local v8    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .local v20, "resultPoints":[Lcom/google/zxing/ResultPoint;
    move v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    goto :goto_5

    .line 129
    .end local v10    # "width":I
    .end local v12    # "minY":F
    .end local v13    # "maxY":F
    .end local v15    # "height":I
    .end local v18    # "alreadyFound":Z
    .end local v19    # "minX":F
    .end local v20    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .restart local v2    # "maxY":F
    .restart local v3    # "maxX":F
    .restart local v4    # "minY":F
    .restart local v5    # "minX":F
    .restart local v6    # "height":I
    .restart local v7    # "width":I
    .restart local v8    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .local v14, "alreadyFound":Z
    :cond_b
    move v13, v2

    move v12, v4

    move/from16 v19, v5

    move v15, v6

    move v10, v7

    move-object/from16 v20, v8

    move/from16 v18, v14

    move v14, v3

    .line 136
    .end local v2    # "maxY":F
    .end local v3    # "maxX":F
    .end local v4    # "minY":F
    .end local v5    # "minX":F
    .end local v6    # "height":I
    .end local v7    # "width":I
    .end local v8    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .restart local v10    # "width":I
    .restart local v12    # "minY":F
    .restart local v13    # "maxY":F
    .local v14, "maxX":F
    .restart local v15    # "height":I
    .restart local v18    # "alreadyFound":Z
    .restart local v19    # "minX":F
    .restart local v20    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    :goto_5
    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, v12, v0

    if-lez v0, :cond_c

    .line 137
    float-to-int v0, v12

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v10, v0}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v3

    add-int/lit8 v8, v11, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 143
    :cond_c
    add-int/lit8 v7, v10, -0x64

    int-to-float v0, v7

    cmpg-float v0, v14, v0

    if-gez v0, :cond_d

    .line 144
    float-to-int v0, v14

    float-to-int v2, v14

    sub-int v7, v10, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v7, v15}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v3

    float-to-int v0, v14

    add-int v6, v9, v0

    add-int/lit8 v8, v11, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 150
    :cond_d
    add-int/lit8 v6, v15, -0x64

    int-to-float v0, v6

    cmpg-float v0, v13, v0

    if-gez v0, :cond_e

    .line 151
    float-to-int v0, v13

    float-to-int v2, v13

    sub-int v6, v15, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v10, v6}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v3

    float-to-int v0, v13

    add-int v7, p5, v0

    add-int/lit8 v8, v11, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 156
    :cond_e
    return-void

    .line 99
    .end local v10    # "width":I
    .end local v12    # "minY":F
    .end local v13    # "maxY":F
    .end local v15    # "height":I
    .end local v16    # "result":Lcom/google/zxing/Result;
    .end local v18    # "alreadyFound":Z
    .end local v19    # "minX":F
    .end local v20    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .restart local v0    # "result":Lcom/google/zxing/Result;
    .restart local v8    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .local v14, "alreadyFound":Z
    :cond_f
    move-object/from16 v16, v0

    move-object/from16 v20, v8

    move/from16 v18, v14

    .line 100
    .end local v0    # "result":Lcom/google/zxing/Result;
    .end local v8    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .end local v14    # "alreadyFound":Z
    .restart local v16    # "result":Lcom/google/zxing/Result;
    .restart local v18    # "alreadyFound":Z
    .restart local v20    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    :goto_6
    return-void

    .line 85
    .end local v16    # "result":Lcom/google/zxing/Result;
    .end local v18    # "alreadyFound":Z
    .end local v20    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "ignored":Lcom/google/zxing/ReaderException;
    return-void
.end method

.method private static translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;
    .locals 8
    .param p0, "result"    # Lcom/google/zxing/Result;
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I

    .line 159
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 160
    .local v0, "oldResultPoints":[Lcom/google/zxing/ResultPoint;
    if-nez v0, :cond_0

    .line 161
    return-object p0

    .line 163
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Lcom/google/zxing/ResultPoint;

    .line 164
    .local v1, "newResultPoints":[Lcom/google/zxing/ResultPoint;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 165
    aget-object v3, v0, v2

    .line 166
    .local v3, "oldPoint":Lcom/google/zxing/ResultPoint;
    if-eqz v3, :cond_1

    .line 167
    new-instance v4, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    int-to-float v6, p1

    add-float/2addr v5, v6

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    int-to-float v7, p2

    add-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v1, v2

    .line 164
    .end local v3    # "oldPoint":Lcom/google/zxing/ResultPoint;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Lcom/google/zxing/Result;

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 171
    .local v2, "newResult":Lcom/google/zxing/Result;
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 172
    return-object v2
.end method


# virtual methods
.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;)[Lcom/google/zxing/Result;
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .locals 8
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 64
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 66
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/zxing/Result;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/zxing/Result;

    return-object v1

    .line 67
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method
