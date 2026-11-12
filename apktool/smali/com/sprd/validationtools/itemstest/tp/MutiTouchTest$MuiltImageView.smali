.class Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;
.super Landroid/view/View;
.source "MutiTouchTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MuiltImageView"
.end annotation


# static fields
.field private static final RADIUS:F = 75.0f


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPass:Z

.field private mWidth:I

.field private pointf:Landroid/graphics/PointF;

.field private points:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;


# direct methods
.method public constructor <init>(Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;Landroid/content/Context;IILandroid/os/Handler;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "handler"    # Landroid/os/Handler;

    .line 136
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->this$0:Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;

    .line 137
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->pointf:Landroid/graphics/PointF;

    .line 130
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->points:Landroid/graphics/PointF;

    .line 132
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->mPass:Z

    .line 134
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->mPaint:Landroid/graphics/Paint;

    .line 138
    iput p3, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->mWidth:I

    .line 139
    iput p4, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->mHeight:I

    .line 140
    iput-object p5, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->mHandler:Landroid/os/Handler;

    .line 141
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->initData()V

    .line 142
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->initPaint()V

    .line 143
    return-void
.end method

.method private initData()V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->pointf:Landroid/graphics/PointF;

    iget v1, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->mWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x42960000    # 75.0f

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 147
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->this$0:Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->-$$Nest$fgetisShowNavigationBar(Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->points:Landroid/graphics/PointF;

    iget v1, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->mHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->points:Landroid/graphics/PointF;

    iget v1, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->mHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    const/high16 v3, 0x43160000    # 150.0f

    sub-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 152
    :goto_0
    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 155
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->mPaint:Landroid/graphics/Paint;

    .line 156
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 157
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 158
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 163
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 164
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->pointf:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->pointf:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x42960000    # 75.0f

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 165
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->points:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->points:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 166
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 171
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->pointf:Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 172
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->points:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 173
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->pointf:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->points:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->pointf:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->points:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->pointf:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->points:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->pointf:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->points:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 175
    .local v2, "distance":D
    iget v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->mWidth:I

    int-to-double v4, v0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v6

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_0

    int-to-double v4, v0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    .line 176
    :cond_0
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->mPass:Z

    .line 179
    .end local v2    # "distance":D
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->mPass:Z

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 182
    :cond_2
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->invalidate()V

    .line 183
    return v1
.end method
