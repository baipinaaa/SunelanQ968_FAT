.class public final Lcom/google/zxing/oned/CodaBarReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "CodaBarReader.java"


# static fields
.field static final ALPHABET:[C

.field private static final ALPHABET_STRING:Ljava/lang/String; = "0123456789-$:/.+ABCD"

.field static final CHARACTER_ENCODINGS:[I

.field private static final MAX_ACCEPTABLE:F = 2.0f

.field private static final MIN_CHARACTER_LENGTH:I = 0x3

.field private static final PADDING:F = 1.5f

.field private static final STARTEND_ENCODING:[C


# instance fields
.field private counterLength:I

.field private counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-string v0, "0123456789-$:/.+ABCD"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    .line 50
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    return-void

    :array_0
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
    .end array-data

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 75
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 77
    return-void
.end method

.method static arrayContains([CC)Z
    .locals 4
    .param p0, "array"    # [C
    .param p1, "key"    # C

    .line 282
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 283
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p0, v2

    .line 284
    .local v3, "c":C
    if-ne v3, p1, :cond_0

    .line 285
    const/4 v0, 0x1

    return v0

    .line 283
    .end local v3    # "c":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    :cond_1
    return v0
.end method

.method private counterAppend(I)V
    .locals 4
    .param p1, "e"    # I

    .line 254
    iget-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    aput p1, v0, v1

    .line 255
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 256
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 257
    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    .line 258
    .local v2, "temp":[I
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    iput-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 261
    .end local v2    # "temp":[I
    :cond_0
    return-void
.end method

.method private findStartPattern()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 264
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-ge v0, v1, :cond_3

    .line 265
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v1

    .line 266
    .local v1, "charOffset":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    sget-object v3, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v3, v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    const/4 v2, 0x0

    .line 270
    .local v2, "patternSize":I
    move v3, v0

    .local v3, "j":I
    :goto_1
    add-int/lit8 v4, v0, 0x7

    if-ge v3, v4, :cond_0

    .line 271
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v4, v4, v3

    add-int/2addr v2, v4

    .line 270
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 273
    .end local v3    # "j":I
    :cond_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    div-int/lit8 v4, v2, 0x2

    if-lt v3, v4, :cond_2

    .line 274
    :cond_1
    return v0

    .line 264
    .end local v1    # "charOffset":I
    .end local v2    # "patternSize":I
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 278
    .end local v0    # "i":I
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private setCounters(Lcom/google/zxing/common/BitArray;)V
    .locals 6
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 233
    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v1

    .line 234
    .local v1, "i":I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    .line 235
    .local v2, "end":I
    if-ge v1, v2, :cond_3

    .line 238
    const/4 v3, 0x1

    .line 239
    .local v3, "isWhite":Z
    const/4 v4, 0x0

    .line 240
    .local v4, "count":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 241
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v5, :cond_0

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 244
    :cond_0
    invoke-direct {p0, v4}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V

    .line 245
    const/4 v4, 0x1

    .line 246
    if-nez v3, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    move v3, v5

    .line 248
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    :cond_2
    invoke-direct {p0, v4}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V

    .line 251
    return-void

    .line 236
    .end local v3    # "isWhite":Z
    .end local v4    # "count":I
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private toNarrowWidePattern(I)I
    .locals 14
    .param p1, "position"    # I

    .line 294
    add-int/lit8 v0, p1, 0x7

    .line 295
    .local v0, "end":I
    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    .line 296
    return v2

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 301
    .local v1, "theCounters":[I
    const/4 v3, 0x0

    .line 302
    .local v3, "maxBar":I
    const v4, 0x7fffffff

    .line 303
    .local v4, "minBar":I
    move v5, p1

    .local v5, "j":I
    :goto_0
    if-ge v5, v0, :cond_3

    .line 304
    aget v6, v1, v5

    .line 305
    .local v6, "currentCounter":I
    if-ge v6, v4, :cond_1

    .line 306
    move v4, v6

    .line 308
    :cond_1
    if-le v6, v3, :cond_2

    .line 309
    move v3, v6

    .line 303
    .end local v6    # "currentCounter":I
    :cond_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 312
    .end local v5    # "j":I
    :cond_3
    add-int v5, v4, v3

    div-int/lit8 v5, v5, 0x2

    .line 314
    .local v5, "thresholdBar":I
    const/4 v6, 0x0

    .line 315
    .local v6, "maxSpace":I
    const v7, 0x7fffffff

    .line 316
    .local v7, "minSpace":I
    add-int/lit8 v8, p1, 0x1

    .local v8, "j":I
    :goto_1
    if-ge v8, v0, :cond_6

    .line 317
    aget v9, v1, v8

    .line 318
    .local v9, "currentCounter":I
    if-ge v9, v7, :cond_4

    .line 319
    move v7, v9

    .line 321
    :cond_4
    if-le v9, v6, :cond_5

    .line 322
    move v6, v9

    .line 316
    .end local v9    # "currentCounter":I
    :cond_5
    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    .line 325
    .end local v8    # "j":I
    :cond_6
    add-int v8, v7, v6

    div-int/lit8 v8, v8, 0x2

    .line 327
    .local v8, "thresholdSpace":I
    const/16 v9, 0x80

    .line 328
    .local v9, "bitmask":I
    const/4 v10, 0x0

    .line 329
    .local v10, "pattern":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    const/4 v12, 0x7

    if-ge v11, v12, :cond_9

    .line 330
    and-int/lit8 v12, v11, 0x1

    if-nez v12, :cond_7

    move v12, v5

    goto :goto_3

    :cond_7
    move v12, v8

    .line 331
    .local v12, "threshold":I
    :goto_3
    shr-int/lit8 v9, v9, 0x1

    .line 332
    add-int v13, p1, v11

    aget v13, v1, v13

    if-le v13, v12, :cond_8

    .line 333
    or-int/2addr v10, v9

    .line 329
    .end local v12    # "threshold":I
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 337
    .end local v11    # "i":I
    :cond_9
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4
    sget-object v12, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    array-length v13, v12

    if-ge v11, v13, :cond_b

    .line 338
    aget v12, v12, v11

    if-ne v12, v10, :cond_a

    .line 339
    return v11

    .line 337
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 342
    .end local v11    # "i":I
    :cond_b
    return v2
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 16
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 82
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 83
    move-object/from16 v3, p2

    invoke-direct {v0, v3}, Lcom/google/zxing/oned/CodaBarReader;->setCounters(Lcom/google/zxing/common/BitArray;)V

    .line 84
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/oned/CodaBarReader;->findStartPattern()I

    move-result v5

    .line 85
    .local v5, "startOffset":I
    move v6, v5

    .line 87
    .local v6, "nextStart":I
    iget-object v7, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 89
    :goto_0
    invoke-direct {v0, v6}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v7

    .line 90
    .local v7, "charOffset":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_d

    .line 96
    iget-object v9, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    int-to-char v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    add-int/lit8 v6, v6, 0x8

    .line 99
    iget-object v9, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    sget-object v9, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    sget-object v11, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v11, v11, v7

    .line 100
    invoke-static {v9, v11}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 101
    goto :goto_1

    .line 103
    .end local v7    # "charOffset":I
    :cond_0
    iget v7, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-lt v6, v7, :cond_c

    .line 106
    :goto_1
    iget-object v7, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int/lit8 v9, v6, -0x1

    aget v7, v7, v9

    .line 107
    .local v7, "trailingWhitespace":I
    const/4 v9, 0x0

    .line 108
    .local v9, "lastPatternSize":I
    const/4 v11, -0x8

    .local v11, "i":I
    :goto_2
    if-ge v11, v8, :cond_1

    .line 109
    iget-object v12, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v13, v6, v11

    aget v12, v12, v13

    add-int/2addr v9, v12

    .line 108
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 115
    .end local v11    # "i":I
    :cond_1
    iget v8, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-ge v6, v8, :cond_3

    div-int/lit8 v8, v9, 0x2

    if-lt v7, v8, :cond_2

    goto :goto_3

    .line 116
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 119
    :cond_3
    :goto_3
    invoke-virtual {v0, v5}, Lcom/google/zxing/oned/CodaBarReader;->validatePattern(I)V

    .line 122
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    iget-object v11, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-ge v8, v11, :cond_4

    .line 123
    iget-object v11, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    sget-object v12, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    aget-char v12, v12, v13

    invoke-virtual {v11, v8, v12}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 122
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 126
    .end local v8    # "i":I
    :cond_4
    iget-object v8, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    .line 127
    .local v8, "startchar":C
    sget-object v11, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    invoke-static {v11, v8}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 130
    iget-object v12, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    sub-int/2addr v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    .line 131
    .local v12, "endchar":C
    invoke-static {v11, v12}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 136
    iget-object v11, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    const/4 v13, 0x3

    if-le v11, v13, :cond_9

    .line 141
    if-eqz v2, :cond_5

    sget-object v11, Lcom/google/zxing/DecodeHintType;->RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v2, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 142
    :cond_5
    iget-object v11, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    sub-int/2addr v13, v10

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 143
    iget-object v11, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 146
    :cond_6
    const/4 v11, 0x0

    .line 147
    .local v11, "runningCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5
    if-ge v13, v5, :cond_7

    .line 148
    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v14, v14, v13

    add-int/2addr v11, v14

    .line 147
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 150
    .end local v13    # "i":I
    :cond_7
    int-to-float v13, v11

    .line 151
    .local v13, "left":F
    move v14, v5

    .local v14, "i":I
    :goto_6
    add-int/lit8 v15, v6, -0x1

    if-ge v14, v15, :cond_8

    .line 152
    iget-object v15, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v15, v15, v14

    add-int/2addr v11, v15

    .line 151
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 154
    .end local v14    # "i":I
    :cond_8
    int-to-float v14, v11

    .line 155
    .local v14, "right":F
    new-instance v15, Lcom/google/zxing/Result;

    iget-object v10, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/ResultPoint;

    new-instance v0, Lcom/google/zxing/ResultPoint;

    int-to-float v2, v1

    invoke-direct {v0, v13, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v2, 0x0

    aput-object v0, v4, v2

    new-instance v0, Lcom/google/zxing/ResultPoint;

    int-to-float v2, v1

    invoke-direct {v0, v14, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v2, 0x1

    aput-object v0, v4, v2

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    const/4 v2, 0x0

    invoke-direct {v15, v10, v2, v4, v0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v15

    .line 138
    .end local v11    # "runningCount":I
    .end local v13    # "left":F
    .end local v14    # "right":F
    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 132
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 128
    .end local v12    # "endchar":C
    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 103
    .end local v7    # "trailingWhitespace":I
    .end local v8    # "startchar":C
    .end local v9    # "lastPatternSize":I
    :cond_c
    move v2, v4

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    goto/16 :goto_0

    .line 91
    .local v7, "charOffset":I
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method validatePattern(I)V
    .locals 14
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 166
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 167
    .local v1, "sizes":[I
    new-array v2, v0, [I

    fill-array-data v2, :array_1

    .line 168
    .local v2, "counts":[I
    iget-object v3, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 172
    .local v3, "end":I
    move v4, p1

    .line 173
    .local v4, "pos":I
    const/4 v5, 0x0

    .line 174
    .local v5, "i":I
    :goto_0
    sget-object v6, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    iget-object v7, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    aget v6, v6, v7

    .line 175
    .local v6, "pattern":I
    const/4 v7, 0x6

    .local v7, "j":I
    :goto_1
    const/4 v8, 0x2

    if-ltz v7, :cond_0

    .line 178
    and-int/lit8 v9, v7, 0x1

    and-int/lit8 v10, v6, 0x1

    mul-int/2addr v10, v8

    add-int/2addr v9, v10

    .line 179
    .local v9, "category":I
    aget v8, v1, v9

    iget-object v10, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v11, v4, v7

    aget v10, v10, v11

    add-int/2addr v8, v10

    aput v8, v1, v9

    .line 180
    aget v8, v2, v9

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v9

    .line 181
    shr-int/lit8 v6, v6, 0x1

    .line 175
    .end local v9    # "category":I
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 183
    .end local v7    # "j":I
    :cond_0
    if-lt v5, v3, :cond_5

    .line 184
    nop

    .line 191
    .end local v5    # "i":I
    .end local v6    # "pattern":I
    new-array v7, v0, [F

    .line 192
    .local v7, "maxes":[F
    new-array v9, v0, [F

    .line 196
    .local v9, "mins":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v8, :cond_1

    .line 197
    const/4 v5, 0x0

    aput v5, v9, v0

    .line 198
    add-int/lit8 v5, v0, 0x2

    aget v6, v1, v0

    int-to-float v6, v6

    aget v10, v2, v0

    int-to-float v10, v10

    div-float/2addr v6, v10

    add-int/lit8 v10, v0, 0x2

    aget v10, v1, v10

    int-to-float v10, v10

    add-int/lit8 v11, v0, 0x2

    aget v11, v2, v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    add-float/2addr v6, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    aput v6, v9, v5

    .line 199
    add-int/lit8 v5, v0, 0x2

    aget v5, v9, v5

    aput v5, v7, v0

    .line 200
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v0, 0x2

    aget v6, v1, v6

    int-to-float v6, v6

    mul-float/2addr v6, v10

    const/high16 v10, 0x3fc00000    # 1.5f

    add-float/2addr v6, v10

    add-int/lit8 v10, v0, 0x2

    aget v10, v2, v10

    int-to-float v10, v10

    div-float/2addr v6, v10

    aput v6, v7, v5

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 204
    .end local v0    # "i":I
    :cond_1
    move v0, p1

    .line 205
    .end local v4    # "pos":I
    .local v0, "pos":I
    const/4 v4, 0x0

    .line 206
    .local v4, "i":I
    :goto_3
    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    iget-object v6, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    aget v5, v5, v6

    .line 207
    .local v5, "pattern":I
    const/4 v6, 0x6

    .local v6, "j":I
    :goto_4
    if-ltz v6, :cond_3

    .line 210
    and-int/lit8 v10, v6, 0x1

    and-int/lit8 v11, v5, 0x1

    mul-int/2addr v11, v8

    add-int/2addr v10, v11

    .line 211
    .local v10, "category":I
    iget-object v11, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v12, v0, v6

    aget v11, v11, v12

    .line 212
    .local v11, "size":I
    int-to-float v12, v11

    aget v13, v9, v10

    cmpg-float v12, v12, v13

    if-ltz v12, :cond_2

    int-to-float v12, v11

    aget v13, v7, v10

    cmpl-float v12, v12, v13

    if-gtz v12, :cond_2

    .line 215
    shr-int/lit8 v5, v5, 0x1

    .line 207
    .end local v10    # "category":I
    .end local v11    # "size":I
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 213
    .restart local v10    # "category":I
    .restart local v11    # "size":I
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8

    .line 217
    .end local v6    # "j":I
    .end local v10    # "category":I
    .end local v11    # "size":I
    :cond_3
    if-lt v4, v3, :cond_4

    .line 218
    nop

    .line 222
    .end local v4    # "i":I
    .end local v5    # "pattern":I
    return-void

    .line 220
    .restart local v4    # "i":I
    .restart local v5    # "pattern":I
    :cond_4
    nop

    .end local v5    # "pattern":I
    add-int/lit8 v0, v0, 0x8

    .line 205
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 187
    .end local v0    # "pos":I
    .end local v7    # "maxes":[F
    .end local v9    # "mins":[F
    .local v4, "pos":I
    .local v5, "i":I
    .local v6, "pattern":I
    :cond_5
    nop

    .end local v6    # "pattern":I
    add-int/lit8 v4, v4, 0x8

    .line 173
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
