.class public Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "DrawRectTestAcvity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;,
        Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$SurfaceViewThread;,
        Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;
    }
.end annotation


# static fields
.field private static RECT_HEIGHT:I = 0x0

.field private static RECT_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DrawRectTestAcvity"


# instance fields
.field private final mGesturePaint:Landroid/graphics/Paint;

.field private mHandler:Landroid/os/Handler;

.field private mPassNum:I

.field private final mPath:Landroid/graphics/Path;

.field private mRectInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRectSize:I

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmGesturePaint(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mGesturePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPassNum(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mPassNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPath(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRectInfoList(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mRectInfoList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRectSize(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mRectSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmPassNum(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mPassNum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdrawView(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->drawView(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/16 v0, 0xf0

    sput v0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_WIDTH:I

    .line 37
    const/16 v0, 0x28

    sput v0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mGesturePaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mPath:Landroid/graphics/Path;

    .line 335
    new-instance v0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$1;-><init>(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private drawBottom()V
    .locals 12

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mScreenHeight:I

    sget v2, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_WIDTH:I

    sub-int v2, v1, v2

    sget v3, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_HEIGHT:I

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 146
    .local v0, "r":Landroid/graphics/Rect;
    iget v1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mScreenWidth:I

    sget v2, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_HEIGHT:I

    div-int/2addr v1, v2

    .line 147
    .local v1, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 148
    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget v5, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_HEIGHT:I

    mul-int/2addr v5, v2

    add-int/2addr v3, v5

    .line 149
    .local v3, "left":I
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 150
    .local v5, "top":I
    iget v6, v0, Landroid/graphics/Rect;->right:I

    sget v7, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_HEIGHT:I

    mul-int/2addr v7, v2

    add-int/2addr v6, v7

    .line 151
    .local v6, "right":I
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 152
    .local v7, "bottom":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v3, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 154
    .local v8, "rect":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 155
    .local v9, "paint":Landroid/graphics/Paint;
    const v10, -0xffff01

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v10, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mRectInfoList:Ljava/util/List;

    new-instance v11, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;

    invoke-direct {v11, v8, v4, v9}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;-><init>(Landroid/graphics/Rect;ZLandroid/graphics/Paint;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v3    # "left":I
    .end local v5    # "top":I
    .end local v6    # "right":I
    .end local v7    # "bottom":I
    .end local v8    # "rect":Landroid/graphics/Rect;
    .end local v9    # "paint":Landroid/graphics/Paint;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private drawLeft()V
    .locals 12

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    sget v1, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_WIDTH:I

    sget v2, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_HEIGHT:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 92
    .local v0, "r":Landroid/graphics/Rect;
    iget v1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mScreenHeight:I

    sget v2, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_HEIGHT:I

    div-int/2addr v1, v2

    .line 93
    .local v1, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 95
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 96
    .local v4, "left":I
    iget v5, v0, Landroid/graphics/Rect;->top:I

    sget v6, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_HEIGHT:I

    mul-int/2addr v6, v2

    add-int/2addr v5, v6

    .line 97
    .local v5, "top":I
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 98
    .local v6, "right":I
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    sget v8, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_HEIGHT:I

    mul-int/2addr v8, v2

    add-int/2addr v7, v8

    .line 99
    .local v7, "bottom":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 101
    .local v8, "rect":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 102
    .local v9, "paint":Landroid/graphics/Paint;
    const v10, -0xffff01

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v10, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mRectInfoList:Ljava/util/List;

    new-instance v11, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;

    invoke-direct {v11, v8, v3, v9}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;-><init>(Landroid/graphics/Rect;ZLandroid/graphics/Paint;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v4    # "left":I
    .end local v5    # "top":I
    .end local v6    # "right":I
    .end local v7    # "bottom":I
    .end local v8    # "rect":Landroid/graphics/Rect;
    .end local v9    # "paint":Landroid/graphics/Paint;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private drawRight()V
    .locals 12

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mScreenWidth:I

    sget v2, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_WIDTH:I

    sub-int v3, v1, v2

    sget v4, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_HEIGHT:I

    add-int/2addr v4, v2

    invoke-direct {v0, v3, v2, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 111
    .local v0, "r":Landroid/graphics/Rect;
    iget v1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mScreenHeight:I

    sget v2, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_HEIGHT:I

    div-int/2addr v1, v2

    .line 112
    .local v1, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 113
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 114
    .local v3, "left":I
    iget v4, v0, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_HEIGHT:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    .line 115
    .local v4, "top":I
    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 116
    .local v5, "right":I
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sget v7, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_HEIGHT:I

    mul-int/2addr v7, v2

    add-int/2addr v6, v7

    .line 117
    .local v6, "bottom":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 119
    .local v7, "rect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 120
    .local v8, "paint":Landroid/graphics/Paint;
    const v9, -0xffff01

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v9, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mRectInfoList:Ljava/util/List;

    new-instance v10, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;

    const/4 v11, 0x0

    invoke-direct {v10, v7, v11, v8}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;-><init>(Landroid/graphics/Rect;ZLandroid/graphics/Paint;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v3    # "left":I
    .end local v4    # "top":I
    .end local v5    # "right":I
    .end local v6    # "bottom":I
    .end local v7    # "rect":Landroid/graphics/Rect;
    .end local v8    # "paint":Landroid/graphics/Paint;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private drawTop()V
    .locals 12

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    sget v1, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_WIDTH:I

    sget v2, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_HEIGHT:I

    add-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 128
    .local v0, "r":Landroid/graphics/Rect;
    iget v1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mScreenWidth:I

    sget v2, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_HEIGHT:I

    div-int/2addr v1, v2

    .line 129
    .local v1, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 130
    iget v4, v0, Landroid/graphics/Rect;->left:I

    sget v5, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_HEIGHT:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    .line 131
    .local v4, "left":I
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 132
    .local v5, "top":I
    iget v6, v0, Landroid/graphics/Rect;->right:I

    sget v7, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_HEIGHT:I

    mul-int/2addr v7, v2

    add-int/2addr v6, v7

    .line 133
    .local v6, "right":I
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 134
    .local v7, "bottom":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 136
    .local v8, "rect":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 137
    .local v9, "paint":Landroid/graphics/Paint;
    const v10, -0xffff01

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget-object v10, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mRectInfoList:Ljava/util/List;

    new-instance v11, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;

    invoke-direct {v11, v8, v3, v9}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;-><init>(Landroid/graphics/Rect;ZLandroid/graphics/Paint;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v4    # "left":I
    .end local v5    # "top":I
    .end local v6    # "right":I
    .end local v7    # "bottom":I
    .end local v8    # "rect":Landroid/graphics/Rect;
    .end local v9    # "paint":Landroid/graphics/Paint;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private drawView(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mRectInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mRectInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;

    .line 212
    .local v1, "ri":Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;
    iget-boolean v2, v1, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;->isTouched:Z

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, v1, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 214
    iget-object v2, v1, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_1

    .line 216
    :cond_0
    iget-object v2, v1, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 217
    iget-object v2, v1, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 219
    :goto_1
    iget-object v2, v1, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 220
    iget-object v2, v1, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;->rect:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 210
    .end local v1    # "ri":Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private initView()V
    .locals 1

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mRectInfoList:Ljava/util/List;

    .line 80
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->drawLeft()V

    .line 82
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->drawTop()V

    .line 84
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->drawRight()V

    .line 86
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->drawBottom()V

    .line 87
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mRectInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mRectSize:I

    .line 88
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 55
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 56
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mScreenWidth:I

    .line 57
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mScreenHeight:I

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScreenWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mScreenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   mScreenHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mScreenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DrawRectTestAcvity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget v1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->mScreenWidth:I

    const/16 v2, 0x8c

    const/16 v3, 0x21c

    if-ne v1, v3, :cond_0

    .line 61
    sput v2, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_WIDTH:I

    .line 62
    const/16 v3, 0x1e

    sput v3, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_HEIGHT:I

    .line 64
    :cond_0
    const/16 v3, 0x1e0

    const/16 v4, 0x14

    if-ne v1, v3, :cond_1

    .line 65
    sput v2, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_WIDTH:I

    .line 66
    sput v4, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_HEIGHT:I

    .line 68
    :cond_1
    const/16 v2, 0x2d0

    if-ne v1, v2, :cond_2

    .line 69
    const/16 v1, 0xa0

    sput v1, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_WIDTH:I

    .line 70
    sput v4, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->RECT_HEIGHT:I

    .line 72
    :cond_2
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->initView()V

    .line 73
    new-instance v1, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;

    invoke-direct {v1, p0, p0}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;-><init>(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->setContentView(Landroid/view/View;)V

    .line 74
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->removeButton()V

    .line 75
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method
