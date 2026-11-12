.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 67
    const/16 v0, 0x1d

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 72
    const/16 v0, 0x19

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 77
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 85
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 86
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 87
    const-wide/16 v1, 0x384

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 88
    .local v1, "nineHundred":Ljava/math/BigInteger;
    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 89
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 90
    add-int/lit8 v3, v0, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "i":I
    .end local v1    # "nineHundred":Ljava/math/BigInteger;
    :cond_0
    return-void

    :array_0
    .array-data 2
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5fs
        0x60s
        0x7es
        0x21s
        0xds
        0x9s
        0x2cs
        0x3as
        0xas
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x22s
        0x7cs
        0x2as
        0x28s
        0x29s
        0x3fs
        0x7bs
        0x7ds
        0x27s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x26s
        0xds
        0x9s
        0x2cs
        0x3as
        0x23s
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x2bs
        0x25s
        0x2as
        0x3ds
        0x5es
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method private static byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .locals 24
    .param p0, "mode"    # I
    .param p1, "codewords"    # [I
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .param p3, "codeIndex"    # I
    .param p4, "result"    # Ljava/lang/StringBuilder;

    .line 448
    move/from16 v0, p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 449
    .local v1, "decodedBytes":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x3a0

    const/16 v5, 0x386

    const-wide/16 v6, 0x384

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/16 v10, 0x39c

    const/16 v11, 0x385

    const/16 v12, 0x384

    if-ne v0, v11, :cond_7

    .line 452
    const/4 v13, 0x0

    .line 453
    .local v13, "count":I
    const-wide/16 v14, 0x0

    .line 454
    .local v14, "value":J
    new-array v2, v9, [I

    .line 455
    .local v2, "byteCompactedCodewords":[I
    const/16 v17, 0x0

    .line 456
    .local v17, "end":Z
    add-int/lit8 v18, p3, 0x1

    .end local p3    # "codeIndex":I
    .local v18, "codeIndex":I
    aget v19, p1, p3

    move/from16 v9, v19

    move-wide/from16 v22, v14

    move v14, v13

    move/from16 v15, v17

    move/from16 v13, v18

    move-wide/from16 v17, v22

    .line 457
    .end local v18    # "codeIndex":I
    .local v9, "nextCode":I
    .local v13, "codeIndex":I
    .local v14, "count":I
    .local v15, "end":Z
    .local v17, "value":J
    :goto_0
    aget v3, p1, v8

    if-ge v13, v3, :cond_4

    if-nez v15, :cond_4

    .line 458
    add-int/lit8 v3, v14, 0x1

    .end local v14    # "count":I
    .local v3, "count":I
    aput v9, v2, v14

    .line 460
    mul-long v20, v17, v6

    int-to-long v6, v9

    add-long v17, v20, v6

    .line 461
    add-int/lit8 v6, v13, 0x1

    .end local v13    # "codeIndex":I
    .local v6, "codeIndex":I
    aget v9, p1, v13

    .line 463
    if-eq v9, v12, :cond_3

    if-eq v9, v11, :cond_3

    if-eq v9, v5, :cond_3

    if-eq v9, v10, :cond_3

    if-eq v9, v4, :cond_3

    const/16 v7, 0x39b

    if-eq v9, v7, :cond_3

    const/16 v7, 0x39a

    if-ne v9, v7, :cond_0

    goto :goto_2

    .line 473
    :cond_0
    rem-int/lit8 v7, v3, 0x5

    if-nez v7, :cond_2

    if-lez v3, :cond_2

    .line 476
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    const/4 v13, 0x6

    if-ge v7, v13, :cond_1

    .line 477
    rsub-int/lit8 v13, v7, 0x5

    mul-int/lit8 v13, v13, 0x8

    shr-long v13, v17, v13

    long-to-int v13, v13

    int-to-byte v13, v13

    invoke-virtual {v1, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 476
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 479
    .end local v7    # "j":I
    :cond_1
    const-wide/16 v17, 0x0

    .line 480
    const/4 v14, 0x0

    move v13, v6

    const-wide/16 v6, 0x384

    .end local v3    # "count":I
    .restart local v14    # "count":I
    goto :goto_0

    .line 457
    .end local v14    # "count":I
    .restart local v3    # "count":I
    :cond_2
    move v14, v3

    move v13, v6

    const-wide/16 v6, 0x384

    goto :goto_0

    .line 470
    :cond_3
    :goto_2
    add-int/lit8 v13, v6, -0x1

    .line 471
    .end local v6    # "codeIndex":I
    .restart local v13    # "codeIndex":I
    const/4 v15, 0x1

    move v14, v3

    const-wide/16 v6, 0x384

    goto :goto_0

    .line 486
    .end local v3    # "count":I
    .restart local v14    # "count":I
    :cond_4
    aget v3, p1, v8

    if-ne v13, v3, :cond_5

    if-ge v9, v12, :cond_5

    .line 487
    add-int/lit8 v3, v14, 0x1

    .end local v14    # "count":I
    .restart local v3    # "count":I
    aput v9, v2, v14

    move v14, v3

    .line 493
    .end local v3    # "count":I
    .restart local v14    # "count":I
    :cond_5
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v14, :cond_6

    .line 494
    aget v4, v2, v3

    int-to-byte v4, v4

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 493
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 497
    .end local v2    # "byteCompactedCodewords":[I
    .end local v3    # "i":I
    .end local v9    # "nextCode":I
    .end local v14    # "count":I
    .end local v15    # "end":Z
    .end local v17    # "value":J
    :cond_6
    goto/16 :goto_9

    .end local v13    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    :cond_7
    if-ne v0, v10, :cond_f

    .line 500
    const/4 v2, 0x0

    .line 501
    .local v2, "count":I
    const-wide/16 v6, 0x0

    .line 502
    .local v6, "value":J
    const/4 v3, 0x0

    move-wide v13, v6

    move v6, v3

    move v3, v2

    move/from16 v2, p3

    .line 503
    .end local p3    # "codeIndex":I
    .local v2, "codeIndex":I
    .local v3, "count":I
    .local v6, "end":Z
    .local v13, "value":J
    :goto_4
    aget v7, p1, v8

    if-ge v2, v7, :cond_e

    if-nez v6, :cond_e

    .line 504
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "codeIndex":I
    .local v7, "codeIndex":I
    aget v2, p1, v2

    .line 505
    .local v2, "code":I
    if-ge v2, v12, :cond_8

    .line 506
    add-int/lit8 v3, v3, 0x1

    .line 508
    const-wide/16 v17, 0x384

    mul-long v20, v13, v17

    int-to-long v8, v2

    add-long v13, v20, v8

    const/16 v8, 0x39b

    const/16 v9, 0x39a

    goto :goto_6

    .line 510
    :cond_8
    const-wide/16 v17, 0x384

    if-eq v2, v12, :cond_9

    if-eq v2, v11, :cond_9

    if-eq v2, v5, :cond_9

    if-eq v2, v10, :cond_9

    if-eq v2, v4, :cond_9

    const/16 v8, 0x39b

    if-eq v2, v8, :cond_a

    const/16 v9, 0x39a

    if-ne v2, v9, :cond_b

    goto :goto_5

    :cond_9
    const/16 v8, 0x39b

    :cond_a
    const/16 v9, 0x39a

    .line 517
    :goto_5
    add-int/lit8 v7, v7, -0x1

    .line 518
    const/4 v6, 0x1

    .line 521
    :cond_b
    :goto_6
    rem-int/lit8 v16, v3, 0x5

    if-nez v16, :cond_d

    if-lez v3, :cond_d

    .line 524
    const/16 v16, 0x0

    move/from16 v4, v16

    .local v4, "j":I
    :goto_7
    const/4 v5, 0x6

    if-ge v4, v5, :cond_c

    .line 525
    rsub-int/lit8 v19, v4, 0x5

    mul-int/lit8 v19, v19, 0x8

    move/from16 p3, v6

    .end local v6    # "end":Z
    .local p3, "end":Z
    shr-long v5, v13, v19

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 524
    add-int/lit8 v4, v4, 0x1

    move/from16 v6, p3

    const/16 v5, 0x386

    goto :goto_7

    .end local p3    # "end":Z
    .restart local v6    # "end":Z
    :cond_c
    move/from16 p3, v6

    .line 527
    .end local v4    # "j":I
    .end local v6    # "end":Z
    .restart local p3    # "end":Z
    const-wide/16 v4, 0x0

    .line 528
    .end local v13    # "value":J
    .local v4, "value":J
    const/4 v3, 0x0

    move-wide v13, v4

    goto :goto_8

    .line 521
    .end local v4    # "value":J
    .end local p3    # "end":Z
    .restart local v6    # "end":Z
    .restart local v13    # "value":J
    :cond_d
    move/from16 p3, v6

    .line 530
    .end local v2    # "code":I
    .end local v6    # "end":Z
    .restart local p3    # "end":Z
    :goto_8
    move/from16 v6, p3

    move v2, v7

    const/16 v4, 0x3a0

    const/16 v5, 0x386

    const/4 v8, 0x0

    goto :goto_4

    .line 532
    .end local v3    # "count":I
    .end local v7    # "codeIndex":I
    .end local v13    # "value":J
    .end local p3    # "end":Z
    .local v2, "codeIndex":I
    :cond_e
    move v13, v2

    goto :goto_9

    .line 497
    .end local v2    # "codeIndex":I
    .local p3, "codeIndex":I
    :cond_f
    move/from16 v13, p3

    .line 532
    .end local p3    # "codeIndex":I
    .local v13, "codeIndex":I
    :goto_9
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v4, p2

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v3, p4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    return v13
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 101
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 103
    nop

    .line 104
    const/4 v3, 0x1

    aget v3, p0, v3

    .line 105
    new-instance v4, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    .line 106
    :goto_0
    const/4 v5, 0x0

    aget v5, p0, v5

    if-ge v2, v5, :cond_1

    .line 107
    sparse-switch v3, :sswitch_data_0

    .line 145
    add-int/lit8 v2, v2, -0x1

    .line 146
    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_1

    .line 135
    :sswitch_0
    invoke-static {p0, v2, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v2

    .line 136
    goto :goto_1

    .line 122
    :sswitch_1
    add-int/lit8 v1, v2, 0x1

    aget v2, p0, v2

    .line 123
    invoke-static {v2}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 125
    move-object v6, v2

    move v2, v1

    move-object v1, v6

    goto :goto_1

    .line 128
    :sswitch_2
    add-int/lit8 v2, v2, 0x2

    .line 129
    goto :goto_1

    .line 132
    :sswitch_3
    add-int/lit8 v2, v2, 0x1

    .line 133
    goto :goto_1

    .line 140
    :sswitch_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 116
    :sswitch_5
    add-int/lit8 v3, v2, 0x1

    aget v2, p0, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    move v2, v3

    goto :goto_1

    .line 119
    :sswitch_6
    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    .line 120
    goto :goto_1

    .line 113
    :sswitch_7
    invoke-static {v3, p0, v1, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v2

    .line 114
    goto :goto_1

    .line 109
    :sswitch_8
    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    .line 110
    nop

    .line 149
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 150
    add-int/lit8 v3, v2, 0x1

    aget v2, p0, v2

    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 155
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_2

    .line 158
    new-instance p0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0, v4}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    .line 160
    return-object p0

    .line 156
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_8
        0x385 -> :sswitch_7
        0x386 -> :sswitch_6
        0x391 -> :sswitch_5
        0x39a -> :sswitch_4
        0x39b -> :sswitch_4
        0x39c -> :sswitch_7
        0x39d -> :sswitch_3
        0x39e -> :sswitch_2
        0x39f -> :sswitch_1
        0x3a0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 5
    .param p0, "codewords"    # [I
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 630
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 631
    .local v0, "result":Ljava/math/BigInteger;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, p1, :cond_0

    .line 632
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v4, p1, v1

    sub-int/2addr v4, v2

    aget-object v2, v3, v4

    aget v3, p0, v1

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 631
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 634
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, "resultString":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_1

    .line 638
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 636
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    throw v2
.end method

.method private static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .locals 9
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "resultMetadata"    # Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 165
    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    aget v2, p0, v1

    if-gt v0, v2, :cond_5

    .line 169
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 170
    .local v2, "segmentIndexArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 171
    aget v4, p0, p1

    aput v4, v2, v3

    .line 170
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 173
    .end local v3    # "i":I
    :cond_0
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v0, "fileId":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 180
    aget v3, p0, p1

    const/16 v4, 0x39b

    const/4 v5, 0x1

    if-ne v3, v4, :cond_3

    .line 181
    add-int/lit8 p1, p1, 0x1

    .line 182
    aget v3, p0, v1

    sub-int/2addr v3, p1

    new-array v3, v3, [I

    .line 183
    .local v3, "additionalOptionCodeWords":[I
    const/4 v4, 0x0

    .line 185
    .local v4, "additionalOptionCodeWordsIndex":I
    const/4 v6, 0x0

    .line 186
    .local v6, "end":Z
    :goto_1
    aget v7, p0, v1

    if-ge p1, v7, :cond_2

    if-nez v6, :cond_2

    .line 187
    add-int/lit8 v7, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v7, "codeIndex":I
    aget p1, p0, p1

    .line 188
    .local p1, "code":I
    const/16 v8, 0x384

    if-ge p1, v8, :cond_1

    .line 189
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "additionalOptionCodeWordsIndex":I
    .local v8, "additionalOptionCodeWordsIndex":I
    aput p1, v3, v4

    move p1, v7

    move v4, v8

    goto :goto_2

    .line 191
    .end local v8    # "additionalOptionCodeWordsIndex":I
    .restart local v4    # "additionalOptionCodeWordsIndex":I
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 198
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 193
    :pswitch_0
    invoke-virtual {p2, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 194
    add-int/lit8 v7, v7, 0x1

    .line 195
    const/4 v6, 0x1

    .line 196
    move p1, v7

    .line 201
    .end local v7    # "codeIndex":I
    .local p1, "codeIndex":I
    :goto_2
    goto :goto_1

    .line 203
    :cond_2
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    .end local v3    # "additionalOptionCodeWords":[I
    .end local v4    # "additionalOptionCodeWordsIndex":I
    .end local v6    # "end":Z
    goto :goto_3

    .line 204
    :cond_3
    aget v1, p0, p1

    const/16 v3, 0x39a

    if-ne v1, v3, :cond_4

    .line 205
    invoke-virtual {p2, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 206
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 204
    :cond_4
    :goto_3
    nop

    .line 209
    :goto_4
    return p1

    .line 167
    .end local v0    # "fileId":Ljava/lang/StringBuilder;
    .end local v2    # "segmentIndexArray":[I
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x39a
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .locals 12
    .param p0, "textCompactionData"    # [I
    .param p1, "byteCompactionData"    # [I
    .param p2, "length"    # I
    .param p3, "result"    # Ljava/lang/StringBuilder;

    .line 294
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 295
    .local v0, "subMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 296
    .local v1, "priorToShiftMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    const/4 v2, 0x0

    .line 297
    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1d

    .line 298
    aget v3, p0, v2

    .line 299
    .local v3, "subModeCh":I
    const/4 v4, 0x0

    .line 300
    .local v4, "ch":C
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x1c

    const/16 v7, 0x1b

    const/16 v8, 0x391

    const/16 v9, 0x384

    const/16 v10, 0x1d

    const/16 v11, 0x1a

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 407
    :pswitch_0
    move-object v0, v1

    .line 408
    if-ge v3, v10, :cond_0

    .line 409
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v4, v5, v3

    goto/16 :goto_1

    .line 411
    :cond_0
    if-ne v3, v10, :cond_1

    .line 412
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 413
    :cond_1
    if-ne v3, v8, :cond_2

    .line 416
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 417
    :cond_2
    if-ne v3, v9, :cond_1b

    .line 418
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 393
    :pswitch_1
    move-object v0, v1

    .line 394
    if-ge v3, v11, :cond_3

    .line 395
    add-int/lit8 v5, v3, 0x41

    int-to-char v4, v5

    goto/16 :goto_1

    .line 397
    :cond_3
    if-ne v3, v11, :cond_4

    .line 398
    const/16 v4, 0x20

    goto/16 :goto_1

    .line 399
    :cond_4
    if-ne v3, v9, :cond_1b

    .line 400
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 378
    :pswitch_2
    if-ge v3, v10, :cond_5

    .line 379
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v4, v5, v3

    goto/16 :goto_1

    .line 381
    :cond_5
    if-ne v3, v10, :cond_6

    .line 382
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 383
    :cond_6
    if-ne v3, v8, :cond_7

    .line 384
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 385
    :cond_7
    if-ne v3, v9, :cond_1b

    .line 386
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 353
    :pswitch_3
    const/16 v5, 0x19

    if-ge v3, v5, :cond_8

    .line 354
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v4, v5, v3

    goto/16 :goto_1

    .line 356
    :cond_8
    if-ne v3, v5, :cond_9

    .line 357
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 358
    :cond_9
    if-ne v3, v11, :cond_a

    .line 359
    const/16 v4, 0x20

    goto/16 :goto_1

    .line 360
    :cond_a
    if-ne v3, v7, :cond_b

    .line 361
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 362
    :cond_b
    if-ne v3, v6, :cond_c

    .line 363
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 364
    :cond_c
    if-ne v3, v10, :cond_d

    .line 366
    move-object v1, v0

    .line 367
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 368
    :cond_d
    if-ne v3, v8, :cond_e

    .line 369
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 370
    :cond_e
    if-ne v3, v9, :cond_1b

    .line 371
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 327
    :pswitch_4
    if-ge v3, v11, :cond_f

    .line 328
    add-int/lit8 v5, v3, 0x61

    int-to-char v4, v5

    goto :goto_1

    .line 330
    :cond_f
    if-ne v3, v11, :cond_10

    .line 331
    const/16 v4, 0x20

    goto :goto_1

    .line 332
    :cond_10
    if-ne v3, v7, :cond_11

    .line 334
    move-object v1, v0

    .line 335
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 336
    :cond_11
    if-ne v3, v6, :cond_12

    .line 337
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 338
    :cond_12
    if-ne v3, v10, :cond_13

    .line 340
    move-object v1, v0

    .line 341
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 342
    :cond_13
    if-ne v3, v8, :cond_14

    .line 344
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 345
    :cond_14
    if-ne v3, v9, :cond_1b

    .line 346
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 303
    :pswitch_5
    if-ge v3, v11, :cond_15

    .line 305
    add-int/lit8 v5, v3, 0x41

    int-to-char v4, v5

    goto :goto_1

    .line 307
    :cond_15
    if-ne v3, v11, :cond_16

    .line 308
    const/16 v4, 0x20

    goto :goto_1

    .line 309
    :cond_16
    if-ne v3, v7, :cond_17

    .line 310
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 311
    :cond_17
    if-ne v3, v6, :cond_18

    .line 312
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 313
    :cond_18
    if-ne v3, v10, :cond_19

    .line 315
    move-object v1, v0

    .line 316
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 317
    :cond_19
    if-ne v3, v8, :cond_1a

    .line 318
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 319
    :cond_1a
    if-ne v3, v9, :cond_1b

    .line 320
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 423
    :cond_1b
    :goto_1
    if-eqz v4, :cond_1c

    .line 425
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    :cond_1c
    nop

    .end local v3    # "subModeCh":I
    .end local v4    # "ch":C
    add-int/lit8 v2, v2, 0x1

    .line 428
    goto/16 :goto_0

    .line 429
    :cond_1d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .locals 5
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, "count":I
    const/4 v1, 0x0

    .line 548
    .local v1, "end":Z
    const/16 v2, 0xf

    new-array v2, v2, [I

    .line 550
    .local v2, "numericCodewords":[I
    :goto_0
    const/4 v3, 0x0

    aget v4, p0, v3

    if-ge p1, v4, :cond_6

    if-nez v1, :cond_6

    .line 551
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v4, "codeIndex":I
    aget p1, p0, p1

    .line 552
    .local p1, "code":I
    aget v3, p0, v3

    if-ne v4, v3, :cond_0

    .line 553
    const/4 v1, 0x1

    .line 555
    :cond_0
    const/16 v3, 0x384

    if-ge p1, v3, :cond_1

    .line 556
    aput p1, v2, v0

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 559
    :cond_1
    if-eq p1, v3, :cond_2

    const/16 v3, 0x385

    if-eq p1, v3, :cond_2

    const/16 v3, 0x39c

    if-eq p1, v3, :cond_2

    const/16 v3, 0x3a0

    if-eq p1, v3, :cond_2

    const/16 v3, 0x39b

    if-eq p1, v3, :cond_2

    const/16 v3, 0x39a

    if-ne p1, v3, :cond_3

    .line 565
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 566
    const/4 v1, 0x1

    .line 569
    :cond_3
    :goto_1
    rem-int/lit8 v3, v0, 0xf

    if-eqz v3, :cond_4

    const/16 v3, 0x386

    if-eq p1, v3, :cond_4

    if-eqz v1, :cond_5

    .line 576
    :cond_4
    if-lez v0, :cond_5

    .line 577
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v3

    .line 578
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const/4 v0, 0x0

    .line 582
    .end local v3    # "s":Ljava/lang/String;
    .end local p1    # "code":I
    :cond_5
    move p1, v4

    goto :goto_0

    .line 583
    .end local v4    # "codeIndex":I
    .local p1, "codeIndex":I
    :cond_6
    return p1
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .locals 8
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .line 224
    const/4 v0, 0x0

    aget v1, p0, v0

    sub-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 226
    .local v1, "textCompactionData":[I
    aget v2, p0, v0

    sub-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    .line 228
    .local v2, "byteCompactionData":[I
    const/4 v3, 0x0

    .line 229
    .local v3, "index":I
    const/4 v4, 0x0

    .line 230
    .local v4, "end":Z
    :goto_0
    aget v5, p0, v0

    if-ge p1, v5, :cond_1

    if-nez v4, :cond_1

    .line 231
    add-int/lit8 v5, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v5, "codeIndex":I
    aget p1, p0, p1

    .line 232
    .local p1, "code":I
    const/16 v6, 0x384

    if-ge p1, v6, :cond_0

    .line 233
    div-int/lit8 v6, p1, 0x1e

    aput v6, v1, v3

    .line 234
    add-int/lit8 v6, v3, 0x1

    rem-int/lit8 v7, p1, 0x1e

    aput v7, v1, v6

    .line 235
    add-int/lit8 v3, v3, 0x2

    move p1, v5

    goto :goto_1

    .line 237
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move p1, v5

    goto :goto_1

    .line 258
    :sswitch_0
    const/16 v6, 0x391

    aput v6, v1, v3

    .line 259
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "codeIndex":I
    .local v6, "codeIndex":I
    aget p1, p0, v5

    .line 260
    aput p1, v2, v3

    .line 261
    add-int/lit8 v3, v3, 0x1

    move p1, v6

    goto :goto_1

    .line 248
    .end local v6    # "codeIndex":I
    .restart local v5    # "codeIndex":I
    :sswitch_1
    add-int/lit8 v5, v5, -0x1

    .line 249
    const/4 v4, 0x1

    .line 250
    move p1, v5

    goto :goto_1

    .line 240
    :sswitch_2
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "index":I
    .local v7, "index":I
    aput v6, v1, v3

    .line 241
    move p1, v5

    move v3, v7

    .line 265
    .end local v5    # "codeIndex":I
    .end local v7    # "index":I
    .restart local v3    # "index":I
    .local p1, "codeIndex":I
    :goto_1
    goto :goto_0

    .line 266
    :cond_1
    invoke-static {v1, v2, v3, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    .line 267
    return p1

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_2
        0x385 -> :sswitch_1
        0x386 -> :sswitch_1
        0x391 -> :sswitch_0
        0x39a -> :sswitch_1
        0x39b -> :sswitch_1
        0x39c -> :sswitch_1
        0x3a0 -> :sswitch_1
    .end sparse-switch
.end method
