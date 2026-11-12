.class public Lcom/sprd/validationtools/itemstest/camera/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/itemstest/camera/Util$RES_NAME;
    }
.end annotation


# static fields
.field public static final ALL_SUPPORT_RES_SIZE:[[I

.field private static final ORIENTATIONS:Landroid/util/SparseIntArray;

.field public static final PROP_RES_BOKEH:Ljava/lang/String; = "persist.vendor.cam.res.bokeh"

.field public static final TAG:Ljava/lang/String; = "Util"

.field public static final TAKE_IMAGE_PATH:Ljava/lang/String; = "/storage/emulated/0/mmi/"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 32
    const/4 v0, 0x7

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v6, 0x5

    aput-object v2, v0, v6

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v6, 0x6

    aput-object v2, v0, v6

    sput-object v0, Lcom/sprd/validationtools/itemstest/camera/Util;->ALL_SUPPORT_RES_SIZE:[[I

    .line 115
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/sprd/validationtools/itemstest/camera/Util;->ORIENTATIONS:Landroid/util/SparseIntArray;

    .line 117
    const/16 v2, 0x5a

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 118
    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 119
    const/16 v2, 0x10e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 120
    const/16 v1, 0xb4

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 122
    return-void

    nop

    :array_0
    .array-data 4
        0x280
        0x1e0
    .end array-data

    :array_1
    .array-data 4
        0x640
        0x4b0
    .end array-data

    :array_2
    .array-data 4
        0x780
        0x438
    .end array-data

    :array_3
    .array-data 4
        0xa20
        0x798
    .end array-data

    :array_4
    .array-data 4
        0xcc0
        0x990
    .end array-data

    :array_5
    .array-data 4
        0xfa0
        0xbb8
    .end array-data

    :array_6
    .array-data 4
        0x1040
        0xc30
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOptimalSize(IIDZ)Lcom/sprd/validationtools/itemstest/camera/Tuple;
    .locals 8
    .param p0, "screenWidth"    # I
    .param p1, "screenHeight"    # I
    .param p2, "ratio"    # D
    .param p4, "screen"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIDZ)",
            "Lcom/sprd/validationtools/itemstest/camera/Tuple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/sprd/validationtools/itemstest/camera/Tuple;

    .line 82
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sprd/validationtools/itemstest/camera/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .local v0, "result":Lcom/sprd/validationtools/itemstest/camera/Tuple;, "Lcom/sprd/validationtools/itemstest/camera/Tuple<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    .local v1, "max":I
    const/4 v2, -0x1

    .local v2, "min":I
    const/4 v3, -0x1

    .local v3, "width":I
    const/4 v4, -0x1

    .line 84
    .local v4, "height":I
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, p2, v5

    if-lez v7, :cond_0

    .line 85
    div-double p2, v5, p2

    .line 87
    :cond_0
    if-eqz p4, :cond_2

    .line 88
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 89
    int-to-double v5, v1

    mul-double/2addr v5, p2

    double-to-int v2, v5

    .line 90
    if-ge p0, p1, :cond_1

    .line 91
    move v3, v2

    .line 92
    move v4, v1

    goto :goto_0

    .line 94
    :cond_1
    move v4, v2

    .line 95
    move v3, v1

    goto :goto_0

    .line 99
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 100
    int-to-double v5, v2

    div-double/2addr v5, p2

    double-to-int v1, v5

    .line 101
    if-le p0, p1, :cond_3

    .line 102
    move v3, v1

    .line 103
    move v4, v2

    goto :goto_0

    .line 105
    :cond_3
    move v3, v2

    .line 106
    move v4, v1

    .line 109
    :goto_0
    if-ne p0, v3, :cond_4

    if-eq p1, v4, :cond_5

    .line 110
    :cond_4
    new-instance v5, Lcom/sprd/validationtools/itemstest/camera/Tuple;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sprd/validationtools/itemstest/camera/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v5

    .line 112
    :cond_5
    return-object v0
.end method

.method public static getOptimalSize(IIIIZ)Lcom/sprd/validationtools/itemstest/camera/Tuple;
    .locals 4
    .param p0, "sWidth"    # I
    .param p1, "sHeight"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "screen"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZ)",
            "Lcom/sprd/validationtools/itemstest/camera/Tuple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 74
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 75
    int-to-double v0, p2

    int-to-double v2, p3

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    .line 76
    .local v2, "ratio":D
    invoke-static {p0, p1, v2, v3, p4}, Lcom/sprd/validationtools/itemstest/camera/Util;->getOptimalSize(IIDZ)Lcom/sprd/validationtools/itemstest/camera/Tuple;

    move-result-object v0

    return-object v0
.end method

.method public static getOrientation(II)I
    .locals 1
    .param p0, "rotation"    # I
    .param p1, "sensorOrientation"    # I

    .line 124
    sget-object v0, Lcom/sprd/validationtools/itemstest/camera/Util;->ORIENTATIONS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x10e

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public static getSupportBokehSize(Landroid/content/Context;)[I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    invoke-static {p0}, Lcom/sprd/validationtools/itemstest/camera/Util;->getSupportResName(Landroid/content/Context;)Lcom/sprd/validationtools/itemstest/camera/Util$RES_NAME;

    move-result-object v0

    .line 65
    .local v0, "name":Lcom/sprd/validationtools/itemstest/camera/Util$RES_NAME;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportBokehSize name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Util"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/camera/Util$RES_NAME;->ordinal()I

    move-result v1

    .line 67
    .local v1, "index":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportBokehSize index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v2, Lcom/sprd/validationtools/itemstest/camera/Util;->ALL_SUPPORT_RES_SIZE:[[I

    aget-object v2, v2, v1

    return-object v2
.end method

.method public static getSupportResName(Landroid/content/Context;)Lcom/sprd/validationtools/itemstest/camera/Util$RES_NAME;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 42
    const-string v0, "persist.vendor.cam.res.bokeh"

    const-string v1, "RES_5M"

    invoke-static {v0, v1}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "type":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSupportResName type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Util"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v2, "RES_0_3M"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    sget-object v1, Lcom/sprd/validationtools/itemstest/camera/Util$RES_NAME;->RES_0_3M:Lcom/sprd/validationtools/itemstest/camera/Util$RES_NAME;

    return-object v1

    .line 46
    :cond_0
    const-string v2, "RES_2M"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    sget-object v1, Lcom/sprd/validationtools/itemstest/camera/Util$RES_NAME;->RES_2M:Lcom/sprd/validationtools/itemstest/camera/Util$RES_NAME;

    return-object v1

    .line 48
    :cond_1
    const-string v2, "RES_1080P"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    sget-object v1, Lcom/sprd/validationtools/itemstest/camera/Util$RES_NAME;->RES_1080P:Lcom/sprd/validationtools/itemstest/camera/Util$RES_NAME;

    return-object v1

    .line 50
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    sget-object v1, Lcom/sprd/validationtools/itemstest/camera/Util$RES_NAME;->RES_5M:Lcom/sprd/validationtools/itemstest/camera/Util$RES_NAME;

    return-object v1

    .line 52
    :cond_3
    const-string v1, "RES_8M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 53
    sget-object v1, Lcom/sprd/validationtools/itemstest/camera/Util$RES_NAME;->RES_8M:Lcom/sprd/validationtools/itemstest/camera/Util$RES_NAME;

    return-object v1

    .line 54
    :cond_4
    const-string v1, "RES_12M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 55
    sget-object v1, Lcom/sprd/validationtools/itemstest/camera/Util$RES_NAME;->RES_12M:Lcom/sprd/validationtools/itemstest/camera/Util$RES_NAME;

    return-object v1

    .line 56
    :cond_5
    const-string v1, "RES_13M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 57
    sget-object v1, Lcom/sprd/validationtools/itemstest/camera/Util$RES_NAME;->RES_13M:Lcom/sprd/validationtools/itemstest/camera/Util$RES_NAME;

    return-object v1

    .line 59
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportResName wrong type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v1, Lcom/sprd/validationtools/itemstest/camera/Util$RES_NAME;->RES_8M:Lcom/sprd/validationtools/itemstest/camera/Util$RES_NAME;

    return-object v1
.end method
