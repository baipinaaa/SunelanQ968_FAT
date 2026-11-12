.class public Lcom/sprd/validationtools/utils/ZXingUtils;
.super Ljava/lang/Object;
.source "ZXingUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZXingUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static creatBarcode(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I
    .param p4, "displayCode"    # Z

    .line 89
    const/4 v0, 0x0

    .line 91
    .local v0, "ruseltBitmap":Landroid/graphics/Bitmap;
    const/16 v1, 0x14

    .line 92
    .local v1, "marginW":I
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    .line 94
    .local v2, "barcodeFormat":Lcom/google/zxing/BarcodeFormat;
    if-eqz p4, :cond_0

    .line 95
    invoke-static {p1, v2, p2, p3}, Lcom/sprd/validationtools/utils/ZXingUtils;->encodeAsBitmap(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 97
    .local v3, "barcodeBitmap":Landroid/graphics/Bitmap;
    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p2

    invoke-static {p1, v4, p3, p0}, Lcom/sprd/validationtools/utils/ZXingUtils;->creatCodeBitmap(Ljava/lang/String;IILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 99
    .local v4, "codeBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/PointF;

    const/4 v6, 0x0

    int-to-float v7, p3

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v3, v4, v5}, Lcom/sprd/validationtools/utils/ZXingUtils;->mixtureBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/PointF;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    .end local v3    # "barcodeBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "codeBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 101
    :cond_0
    invoke-static {p1, v2, p2, p3}, Lcom/sprd/validationtools/utils/ZXingUtils;->encodeAsBitmap(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0
.end method

.method protected static creatCodeBitmap(Ljava/lang/String;IILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "contents"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "context"    # Landroid/content/Context;

    .line 147
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 148
    .local v0, "tv":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 150
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setHeight(I)V

    .line 153
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 154
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setWidth(I)V

    .line 155
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 156
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 158
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 157
    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 159
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 161
    invoke-virtual {v0}, Landroid/widget/TextView;->buildDrawingCache()V

    .line 162
    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 163
    .local v2, "bitmapCode":Landroid/graphics/Bitmap;
    return-object v2
.end method

.method public static createQRImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 46
    const-string v0, "ZXingUtils"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    goto/16 :goto_3

    .line 50
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url length= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v0, "hints":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    sget-object v2, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v3, "utf-8"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v2, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v2}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v3, p0

    move v5, p1

    move v6, p2

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    .line 55
    .local v2, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    mul-int v3, p1, p2

    new-array v3, v3, [I

    .line 56
    .local v3, "pixels":[I
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    if-ge v4, p2, :cond_3

    .line 57
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    if-ge v5, p1, :cond_2

    .line 58
    invoke-virtual {v2, v5, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 59
    mul-int v6, v4, p1

    add-int/2addr v6, v5

    const/high16 v7, -0x1000000

    aput v7, v3, v6

    goto :goto_2

    .line 61
    :cond_1
    mul-int v6, v4, p1

    add-int/2addr v6, v5

    const/4 v7, -0x1

    aput v7, v3, v6

    .line 57
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 56
    .end local v5    # "x":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    .end local v4    # "y":I
    :cond_3
    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->clear()V

    .line 68
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v12, v4

    .line 69
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v3

    move v7, p1

    move v10, p1

    move v11, p2

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-object v12

    .line 48
    .end local v0    # "hints":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    .end local v2    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .end local v3    # "pixels":[I
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    :goto_3
    return-object v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lcom/google/zxing/WriterException;
    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    .line 74
    .end local v0    # "e":Lcom/google/zxing/WriterException;
    return-object v1
.end method

.method protected static encodeAsBitmap(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "contents"    # Ljava/lang/String;
    .param p1, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I

    .line 109
    const/4 v1, -0x1

    .line 110
    .local v1, "WHITE":I
    const/high16 v2, -0x1000000

    .line 112
    .local v2, "BLACK":I
    new-instance v3, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v3}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 113
    .local v3, "writer":Lcom/google/zxing/MultiFormatWriter;
    const/4 v9, 0x0

    .line 115
    .local v9, "result":Lcom/google/zxing/common/BitMatrix;
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    :try_start_0
    invoke-virtual/range {v3 .. v8}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v9    # "result":Lcom/google/zxing/common/BitMatrix;
    .local v0, "result":Lcom/google/zxing/common/BitMatrix;
    nop

    .line 121
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v12

    .line 122
    .local v12, "width":I
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v13

    .line 123
    .local v13, "height":I
    mul-int v4, v12, v13

    new-array v14, v4, [I

    .line 125
    .local v14, "pixels":[I
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    if-ge v4, v13, :cond_2

    .line 126
    mul-int v5, v4, v12

    .line 127
    .local v5, "offset":I
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_1
    if-ge v6, v12, :cond_1

    .line 128
    add-int v7, v5, v6

    invoke-virtual {v0, v6, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_0

    const/high16 v8, -0x1000000

    goto :goto_2

    :cond_0
    const/4 v8, -0x1

    :goto_2
    aput v8, v14, v7

    .line 127
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 125
    .end local v5    # "offset":I
    .end local v6    # "x":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 132
    .end local v4    # "y":I
    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 133
    .local v15, "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v15

    move-object v5, v14

    move v7, v12

    move v10, v12

    move v11, v13

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 134
    return-object v15

    .line 116
    .end local v0    # "result":Lcom/google/zxing/common/BitMatrix;
    .end local v12    # "width":I
    .end local v13    # "height":I
    .end local v14    # "pixels":[I
    .end local v15    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "result":Lcom/google/zxing/common/BitMatrix;
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 117
    .local v0, "e":Lcom/google/zxing/WriterException;
    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    .line 118
    const/4 v4, 0x0

    return-object v4
.end method

.method protected static mixtureBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/PointF;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "first"    # Landroid/graphics/Bitmap;
    .param p1, "second"    # Landroid/graphics/Bitmap;
    .param p2, "fromPoint"    # Landroid/graphics/PointF;

    .line 167
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    const/16 v1, 0x14

    .line 171
    .local v1, "marginW":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 172
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 171
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 173
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 174
    .local v3, "cv":Landroid/graphics/Canvas;
    int-to-float v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 175
    iget v4, p2, Landroid/graphics/PointF;->x:F

    iget v5, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, p1, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 176
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 177
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 179
    return-object v2

    .line 168
    .end local v1    # "marginW":I
    .end local v2    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "cv":Landroid/graphics/Canvas;
    :cond_1
    :goto_0
    return-object v0
.end method
