.class Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;
.super Landroid/view/SurfaceView;
.source "DrawRectTestAcvity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySurfaceView"
.end annotation


# instance fields
.field private mHolder:Landroid/view/SurfaceHolder;

.field private mThread:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$SurfaceViewThread;

.field private mX:F

.field private mY:F

.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;


# direct methods
.method public constructor <init>(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .line 233
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    .line 234
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 235
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    .line 236
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 238
    invoke-static {p1}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$fgetmGesturePaint(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 239
    invoke-static {p1}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$fgetmGesturePaint(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 240
    invoke-static {p1}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$fgetmGesturePaint(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 241
    invoke-static {p1}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$fgetmGesturePaint(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)Landroid/graphics/Paint;

    move-result-object p1

    const v0, -0xffff01

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    invoke-virtual {p0, p0}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 245
    return-void
.end method

.method private touchDown(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 294
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$fgetmPath(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 296
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 298
    .local v1, "y":F
    iput v0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->mX:F

    .line 299
    iput v1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->mY:F

    .line 301
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$fgetmPath(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 302
    return-void
.end method

.method private touchMove(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 306
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 308
    .local v1, "y":F
    iget v2, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->mX:F

    .line 309
    .local v2, "previousX":F
    iget v3, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->mY:F

    .line 311
    .local v3, "previousY":F
    sub-float v4, v0, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 312
    .local v4, "dx":F
    sub-float v5, v1, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 314
    .local v5, "dy":F
    const/high16 v6, 0x40400000    # 3.0f

    cmpl-float v7, v4, v6

    if-gez v7, :cond_0

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_3

    .line 316
    :cond_0
    add-float v6, v0, v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 317
    .local v6, "cX":F
    add-float v8, v1, v3

    div-float/2addr v8, v7

    .line 319
    .local v8, "cY":F
    iget-object v7, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    invoke-static {v7}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$fgetmPath(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)Landroid/graphics/Path;

    move-result-object v7

    invoke-virtual {v7, v2, v3, v6, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 321
    iget-object v7, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    invoke-static {v7}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$fgetmRectInfoList(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;

    .line 322
    .local v9, "ri":Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;
    iget-object v10, v9, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;->rect:Landroid/graphics/Rect;

    float-to-int v11, v0

    float-to-int v12, v1

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-boolean v10, v9, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;->isTouched:Z

    if-nez v10, :cond_1

    .line 323
    iget-object v10, v9, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;->paint:Landroid/graphics/Paint;

    const v11, -0xff0100

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 324
    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;->isTouched:Z

    .line 325
    iget-object v11, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    invoke-static {v11}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$fgetmPassNum(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)I

    move-result v12

    add-int/2addr v12, v10

    invoke-static {v11, v12}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$fputmPassNum(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;I)V

    .line 327
    .end local v9    # "ri":Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;
    :cond_1
    goto :goto_0

    .line 329
    :cond_2
    iput v0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->mX:F

    .line 330
    iput v1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->mY:F

    .line 332
    .end local v6    # "cX":F
    .end local v8    # "cY":F
    :cond_3
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 268
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "  mRectSize:"

    const-string v3, "mPassNum:"

    const-string v4, "DrawRectTestAcvity"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 282
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$fgetmPassNum(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$fgetmRectSize(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$fgetmPassNum(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)I

    move-result v0

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$fgetmRectSize(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 284
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 273
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->touchMove(Landroid/view/MotionEvent;)V

    .line 274
    goto :goto_0

    .line 276
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$fgetmPassNum(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$fgetmRectSize(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$fgetmPassNum(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)I

    move-result v0

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$fgetmRectSize(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 270
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->touchDown(Landroid/view/MotionEvent;)V

    .line 271
    nop

    .line 289
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 258
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 249
    new-instance v0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$SurfaceViewThread;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, v1, v2}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$SurfaceViewThread;-><init>(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->mThread:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$SurfaceViewThread;

    .line 250
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$SurfaceViewThread;->isRun:Z

    .line 251
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->mThread:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$SurfaceViewThread;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$SurfaceViewThread;->start()V

    .line 252
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 262
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$MySurfaceView;->mThread:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$SurfaceViewThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$SurfaceViewThread;->isRun:Z

    .line 263
    return-void
.end method
