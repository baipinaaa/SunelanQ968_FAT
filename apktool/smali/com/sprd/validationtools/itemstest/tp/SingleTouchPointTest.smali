.class public Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "SingleTouchPointTest.java"


# static fields
.field private static final CIRCLE_X_1:I = 0x0

.field private static final CIRCLE_X_2:I = 0x2

.field private static final CIRCLE_Y_1:I = 0x1

.field private static final CIRCLE_Y_2:I = 0x3

.field private static final DISTANCE:I = 0x1e

.field private static final DISTANCE_XXDPI:I = 0xf

.field private static final FIXED_TEXT:F = 50.0f

.field private static final RADIUS:I = 0x1e

.field private static final STOKEN_WIDTH:I = 0xa

.field private static final STOP_TEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SingleTouchPointTest"


# instance fields
.field private isShowNavigationBar:Z

.field private mCirclePosition:I

.field private mCirclesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[F>;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHolder:Landroid/view/SurfaceHolder;

.field mIsInCircle:Z

.field private mIsUpcanvasUnlocked:Z

.field private mLock:Ljava/lang/Object;

.field private mMatchCircleXY:[F

.field private mNavigationBarHeight:I

.field private final mPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[F>;"
        }
    .end annotation
.end field

.field protected mScreenHeight:F

.field protected mScreenWidth:F

.field private mSingleTouchHandler:Landroid/os/Handler;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTouchUpX:F

.field private mTouchUpY:F

.field private statusBarHeight:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmHolder(Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;)Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowCoordinate(Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;Landroid/graphics/Canvas;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->showCoordinate(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartDraw(Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->startDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopTest(Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->stopTest()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 36
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mSurfaceView:Landroid/view/SurfaceView;

    .line 38
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mHolder:Landroid/view/SurfaceHolder;

    .line 42
    const/4 v1, 0x0

    iput v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mScreenWidth:F

    .line 44
    iput v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mScreenHeight:F

    .line 48
    const/4 v2, 0x0

    iput v2, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mNavigationBarHeight:I

    .line 50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mPointList:Ljava/util/List;

    .line 52
    iput-boolean v2, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mIsInCircle:Z

    .line 54
    const/4 v3, -0x1

    iput v3, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mCirclePosition:I

    .line 56
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mMatchCircleXY:[F

    .line 66
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mCirclesList:Ljava/util/List;

    .line 68
    iput v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mTouchUpX:F

    .line 70
    iput v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mTouchUpY:F

    .line 71
    iput v2, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->statusBarHeight:I

    .line 79
    iput-boolean v2, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mIsUpcanvasUnlocked:Z

    .line 80
    iput-boolean v2, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->isShowNavigationBar:Z

    .line 87
    new-instance v0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest$1;-><init>(Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mSingleTouchHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private drawShapes(FFFFLandroid/graphics/Canvas;FI)Z
    .locals 22
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "canvas"    # Landroid/graphics/Canvas;
    .param p6, "radius"    # F
    .param p7, "iTag"    # I

    .line 560
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    const/4 v5, 0x0

    cmpl-float v6, v1, v5

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    cmpl-float v6, v4, v5

    if-eqz v6, :cond_6

    cmpl-float v6, v3, v5

    if-eqz v6, :cond_6

    cmpl-float v6, v2, v5

    if-nez v6, :cond_0

    goto/16 :goto_2

    .line 563
    :cond_0
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    move-object v13, v6

    .line 564
    .local v13, "paint":Landroid/graphics/Paint;
    if-lez p7, :cond_1

    .line 565
    const v6, -0x777778

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 567
    :cond_1
    const v6, -0xffff01

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 569
    :goto_0
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setFlags(I)V

    .line 570
    invoke-virtual {v11, v1, v2, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 571
    invoke-virtual {v11, v3, v4, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 572
    sub-float v6, v2, v4

    sub-float v8, v1, v3

    div-float v15, v6, v8

    .line 573
    .local v15, "slope":F
    mul-float v6, v12, v12

    mul-float v8, v12, v12

    mul-float/2addr v8, v15

    mul-float/2addr v8, v15

    add-float/2addr v6, v8

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    .line 575
    .local v16, "distanceY":D
    cmpl-float v6, v1, v3

    if-nez v6, :cond_2

    .line 576
    sub-float v6, v1, v12

    const/4 v7, 0x0

    sub-float v8, v1, v12

    iget v9, v0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mScreenHeight:F

    move-object/from16 v5, p5

    move-object v10, v13

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 577
    add-float v6, v1, v12

    add-float v8, v1, v12

    iget v9, v0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mScreenHeight:F

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 578
    return v14

    .line 579
    :cond_2
    cmpl-float v6, v2, v4

    if-nez v6, :cond_3

    .line 580
    const/4 v6, 0x0

    sub-float v7, v2, v12

    iget v8, v0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mScreenWidth:F

    sub-float v9, v2, v12

    move-object/from16 v5, p5

    move-object v10, v13

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 581
    add-float v7, v2, v12

    iget v8, v0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mScreenWidth:F

    add-float v9, v2, v12

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 582
    return v14

    .line 583
    :cond_3
    cmpl-float v6, v15, v5

    if-lez v6, :cond_4

    .line 584
    mul-float v5, v1, v15

    sub-float v5, v2, v5

    float-to-double v5, v5

    sub-double v5, v5, v16

    double-to-float v10, v5

    .line 585
    .local v10, "lineUpY1":F
    mul-float v5, v1, v15

    sub-float v5, v2, v5

    float-to-double v5, v5

    add-double v5, v5, v16

    double-to-float v9, v5

    .line 586
    .local v9, "lineDownY1":F
    iget v8, v0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mScreenHeight:F

    sub-float v5, v8, v10

    div-float v18, v5, v15

    .line 587
    .local v18, "lineUpX2":F
    sub-float v5, v8, v9

    div-float v19, v5, v15

    .line 588
    .local v19, "lineDownX2":F
    const/4 v6, 0x0

    move-object/from16 v5, p5

    move v7, v10

    move/from16 v20, v8

    move/from16 v8, v18

    move/from16 v21, v9

    .end local v9    # "lineDownY1":F
    .local v21, "lineDownY1":F
    move/from16 v9, v20

    move/from16 v20, v10

    .end local v10    # "lineUpY1":F
    .local v20, "lineUpY1":F
    move-object v10, v13

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 589
    iget v9, v0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mScreenHeight:F

    move/from16 v7, v21

    move/from16 v8, v19

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 590
    .end local v18    # "lineUpX2":F
    .end local v19    # "lineDownX2":F
    .end local v20    # "lineUpY1":F
    .end local v21    # "lineDownY1":F
    goto :goto_1

    :cond_4
    cmpg-float v6, v15, v5

    if-gez v6, :cond_5

    .line 591
    mul-float v6, v1, v15

    sub-float v6, v2, v6

    float-to-double v6, v6

    sub-double v6, v6, v16

    double-to-float v10, v6

    .line 592
    .restart local v10    # "lineUpY1":F
    mul-float v6, v1, v15

    sub-float v6, v2, v6

    float-to-double v6, v6

    add-double v6, v6, v16

    double-to-float v9, v6

    .line 593
    .restart local v9    # "lineDownY1":F
    sub-float v6, v5, v10

    div-float v18, v6, v15

    .line 594
    .restart local v18    # "lineUpX2":F
    sub-float/2addr v5, v9

    div-float v19, v5, v15

    .line 595
    .restart local v19    # "lineDownX2":F
    const/4 v6, 0x0

    const/16 v20, 0x0

    move-object/from16 v5, p5

    move v7, v10

    move/from16 v8, v18

    move/from16 v21, v9

    .end local v9    # "lineDownY1":F
    .restart local v21    # "lineDownY1":F
    move/from16 v9, v20

    move/from16 v20, v10

    .end local v10    # "lineUpY1":F
    .restart local v20    # "lineUpY1":F
    move-object v10, v13

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 596
    const/4 v9, 0x0

    move/from16 v7, v21

    move/from16 v8, v19

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 597
    .end local v18    # "lineUpX2":F
    .end local v19    # "lineDownX2":F
    .end local v20    # "lineUpY1":F
    .end local v21    # "lineDownY1":F
    nop

    .line 600
    :goto_1
    return v14

    .line 598
    :cond_5
    return v7

    .line 561
    .end local v13    # "paint":Landroid/graphics/Paint;
    .end local v15    # "slope":F
    .end local v16    # "distanceY":D
    :cond_6
    :goto_2
    return v7
.end method

.method private getHeight(DDDDDD)D
    .locals 17
    .param p1, "x0"    # D
    .param p3, "y0"    # D
    .param p5, "x1"    # D
    .param p7, "y1"    # D
    .param p9, "x2"    # D
    .param p11, "y2"    # D

    .line 508
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 509
    .local v0, "height":D
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 511
    .local v2, "half":D
    move-object/from16 v4, p0

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    invoke-direct/range {v4 .. v12}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->getTwoPointDistance(DDDD)D

    move-result-wide v4

    .line 512
    .local v4, "a":D
    move-object/from16 v6, p0

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p1

    move-wide/from16 v13, p3

    invoke-direct/range {v6 .. v14}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->getTwoPointDistance(DDDD)D

    move-result-wide v6

    .line 513
    .local v6, "b":D
    move-object/from16 v8, p0

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide/from16 v13, p9

    move-wide/from16 v15, p11

    invoke-direct/range {v8 .. v16}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->getTwoPointDistance(DDDD)D

    move-result-wide v8

    .line 514
    .local v8, "c":D
    add-double v10, v4, v6

    add-double/2addr v10, v8

    div-double/2addr v10, v2

    .line 515
    .local v10, "p":D
    sub-double v12, v10, v4

    mul-double/2addr v12, v10

    sub-double v14, v10, v6

    mul-double/2addr v12, v14

    sub-double v14, v10, v8

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 516
    .local v12, "area":D
    mul-double v14, v2, v12

    div-double/2addr v14, v4

    .line 517
    .end local v0    # "height":D
    .local v14, "height":D
    return-wide v14
.end method

.method private getMatchCircle(Ljava/util/List;FFD)[F
    .locals 24
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "raidus"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[F>;FFD)[F"
        }
    .end annotation

    .line 366
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<[F>;"
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    const/4 v15, 0x2

    new-array v9, v15, [F

    .line 367
    .local v9, "matchXY":[F
    const/16 v16, 0x0

    if-eqz v12, :cond_4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v22, v9

    goto/16 :goto_1

    .line 370
    :cond_0
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_3

    .line 371
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, [F

    .line 372
    .local v17, "circles":[F
    const/16 v18, 0x0

    aget v7, v17, v18

    .line 373
    .local v7, "x1":F
    const/16 v19, 0x1

    aget v8, v17, v19

    .line 374
    .local v8, "y1":F
    aget v5, v17, v15

    .line 375
    .local v5, "x2":F
    const/4 v0, 0x3

    aget v6, v17, v0

    .line 376
    .local v6, "y2":F
    float-to-double v1, v13

    float-to-double v3, v14

    move/from16 v20, v5

    move/from16 v21, v6

    .end local v5    # "x2":F
    .end local v6    # "y2":F
    .local v20, "x2":F
    .local v21, "y2":F
    float-to-double v5, v7

    move-object/from16 v22, v9

    move/from16 v23, v10

    .end local v9    # "matchXY":[F
    .end local v10    # "i":I
    .local v22, "matchXY":[F
    .local v23, "i":I
    float-to-double v9, v8

    move-object/from16 v0, p0

    move/from16 v15, v20

    move/from16 v12, v21

    .end local v20    # "x2":F
    .end local v21    # "y2":F
    .local v12, "y2":F
    .local v15, "x2":F
    move/from16 v20, v7

    move/from16 v21, v8

    .end local v7    # "x1":F
    .end local v8    # "y1":F
    .local v20, "x1":F
    .local v21, "y1":F
    move-wide v7, v9

    move/from16 v14, v23

    .end local v23    # "i":I
    .local v14, "i":I
    move-wide/from16 v9, p4

    invoke-direct/range {v0 .. v10}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->isInCircle(DDDDD)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    aput v15, v22, v18

    .line 378
    aput v12, v22, v19

    .line 379
    iput v14, v11, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mCirclePosition:I

    .line 380
    return-object v22

    .line 381
    :cond_1
    float-to-double v1, v13

    move v9, v14

    move/from16 v14, p3

    .end local v14    # "i":I
    .local v9, "i":I
    float-to-double v3, v14

    float-to-double v5, v15

    float-to-double v7, v12

    move-object/from16 v0, p0

    move/from16 v23, v12

    move v12, v9

    .end local v9    # "i":I
    .local v12, "i":I
    .local v23, "y2":F
    move-wide/from16 v9, p4

    invoke-direct/range {v0 .. v10}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->isInCircle(DDDDD)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    aput v20, v22, v18

    .line 383
    aput v21, v22, v19

    .line 384
    iput v12, v11, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mCirclePosition:I

    .line 385
    return-object v22

    .line 370
    .end local v15    # "x2":F
    .end local v17    # "circles":[F
    .end local v20    # "x1":F
    .end local v21    # "y1":F
    .end local v23    # "y2":F
    :cond_2
    add-int/lit8 v10, v12, 0x1

    move-object/from16 v12, p1

    move-object/from16 v9, v22

    const/4 v15, 0x2

    .end local v12    # "i":I
    .restart local v10    # "i":I
    goto :goto_0

    .line 388
    .end local v10    # "i":I
    .end local v22    # "matchXY":[F
    .local v9, "matchXY":[F
    :cond_3
    return-object v16

    .line 367
    :cond_4
    move-object/from16 v22, v9

    .line 368
    .end local v9    # "matchXY":[F
    .restart local v22    # "matchXY":[F
    :goto_1
    return-object v16
.end method

.method private getRadiusPx()F
    .locals 3

    .line 196
    const/high16 v0, -0x40800000    # -1.0f

    .line 197
    .local v0, "radius":F
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float/2addr v1, v2

    .line 202
    .end local v0    # "radius":F
    .local v1, "radius":F
    iget v0, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mScreenHeight:F

    const/high16 v2, 0x44f00000    # 1920.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 203
    const/high16 v0, 0x42340000    # 45.0f

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v2, v0

    .line 206
    :cond_0
    return v1
.end method

.method private getTwoPointDistance(DDDD)D
    .locals 8
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "x2"    # D
    .param p7, "y2"    # D

    .line 485
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 486
    .local v0, "distance":D
    sub-double v2, p1, p5

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sub-double v4, p1, p5

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double v4, p3, p7

    .line 487
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    sub-double v6, p3, p7

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 486
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 488
    return-wide v0
.end method

.method private isInCircle(DDDDD)Z
    .locals 8
    .param p1, "x0"    # D
    .param p3, "y0"    # D
    .param p5, "x1"    # D
    .param p7, "y1"    # D
    .param p9, "radius"    # D

    .line 535
    const-wide/16 v0, 0x0

    .line 536
    .local v0, "distance":D
    sub-double v2, p1, p5

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sub-double v4, p1, p5

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double v4, p3, p7

    .line 537
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    sub-double v6, p3, p7

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 536
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 538
    cmpg-double v2, v0, p9

    if-gtz v2, :cond_0

    .line 539
    const/4 v2, 0x1

    return v2

    .line 541
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private isInner(FFFFFFF)Z
    .locals 16
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "x2"    # F
    .param p6, "y2"    # F
    .param p7, "radius"    # F

    .line 463
    move/from16 v0, p1

    float-to-double v2, v0

    move/from16 v14, p2

    float-to-double v4, v14

    move/from16 v15, p3

    float-to-double v6, v15

    move/from16 v12, p4

    float-to-double v8, v12

    move/from16 v13, p5

    float-to-double v10, v13

    move/from16 v1, p6

    float-to-double v12, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->getHeight(DDDDDD)D

    move-result-wide v1

    .line 464
    .local v1, "height":D
    move/from16 v3, p7

    float-to-double v4, v3

    cmpg-double v4, v1, v4

    if-gez v4, :cond_0

    .line 465
    const/4 v4, 0x1

    return v4

    .line 466
    :cond_0
    nop

    .line 467
    const/4 v4, 0x0

    return v4
.end method

.method private setXY(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 442
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 443
    .local v0, "xy":[F
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mPointList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    return-void
.end method

.method private showCoordinate(Landroid/graphics/Canvas;FF)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "touchX"    # F
    .param p3, "touchY"    # F

    .line 420
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 421
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 422
    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 423
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->isShowCoordinate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    const/4 v1, 0x0

    .line 425
    .local v1, "x":I
    const/4 v2, 0x0

    .line 426
    .local v2, "y":I
    const/4 v3, 0x0

    cmpl-float v4, p2, v3

    if-eqz v4, :cond_0

    cmpl-float v3, p3, v3

    if-eqz v3, :cond_0

    .line 427
    float-to-int v1, p2

    .line 428
    float-to-int v2, p3

    .line 430
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mScreenWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x42480000    # 50.0f

    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 433
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_1
    return-void
.end method

.method private startDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 393
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mCirclesList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 396
    :cond_0
    const/4 v0, 0x0

    .line 397
    .local v0, "iTag":I
    iget-object v1, v8, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mCirclesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v0

    .end local v0    # "iTag":I
    .local v10, "iTag":I
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/List;

    .line 398
    .local v11, "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v12, v0, :cond_1

    .line 399
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v1, v0, v1

    .line 400
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v2, v0, v2

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v3, 0x2

    aget v3, v0, v3

    .line 401
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v4, 0x3

    aget v4, v0, v4

    invoke-direct/range {p0 .. p0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->getRadiusPx()F

    move-result v6

    .line 399
    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->drawShapes(FFFFLandroid/graphics/Canvas;FI)Z

    .line 398
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 403
    .end local v12    # "i":I
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 404
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 405
    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 406
    const/high16 v3, -0x10000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 407
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    iget-object v4, v8, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mPointList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 408
    iget-object v4, v8, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mPointList:Ljava/util/List;

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    aget v13, v4, v1

    iget-object v4, v8, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mPointList:Ljava/util/List;

    add-int/lit8 v5, v3, -0x1

    .line 409
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    aget v14, v4, v2

    iget-object v4, v8, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mPointList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    aget v15, v4, v1

    iget-object v4, v8, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mPointList:Ljava/util/List;

    .line 410
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    aget v16, v4, v2

    .line 408
    move-object/from16 v12, p1

    move-object/from16 v17, v0

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 407
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 412
    .end local v3    # "i":I
    :cond_2
    nop

    .end local v0    # "paint":Landroid/graphics/Paint;
    .end local v11    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    add-int/lit8 v10, v10, 0x1

    .line 413
    goto/16 :goto_0

    .line 414
    :cond_3
    return-void

    .line 394
    .end local v10    # "iTag":I
    :cond_4
    :goto_3
    return-void
.end method

.method private stopTest()V
    .locals 1

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->storeRusult(Z)V

    .line 189
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->finish()V

    .line 190
    return-void
.end method


# virtual methods
.method protected getCirclesList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[F>;>;"
        }
    .end annotation

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "textHeight":I
    iget v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mScreenHeight:F

    const/high16 v2, 0x44f00000    # 1920.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v1, :cond_0

    .line 106
    const/high16 v2, 0x41700000    # 15.0f

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCirclesList textHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SingleTouchPointTest"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    const/4 v1, 0x4

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/high16 v4, 0x41f00000    # 30.0f

    aput v4, v2, v3

    const/4 v5, 0x1

    aput v4, v2, v5

    iget v6, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mScreenWidth:F

    sub-float/2addr v6, v4

    const/4 v7, 0x2

    aput v6, v2, v7

    iget v6, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mScreenHeight:F

    sub-float/2addr v6, v4

    int-to-float v8, v0

    sub-float/2addr v6, v8

    iget v8, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mNavigationBarHeight:I

    int-to-float v8, v8

    add-float/2addr v6, v8

    const/4 v8, 0x3

    aput v6, v2, v8

    .line 115
    .local v2, "horizontalXY1":[F
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v6, "horizontalList":Ljava/util/List;, "Ljava/util/List<[F>;"
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-array v1, v1, [F

    iget v9, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mScreenWidth:F

    sub-float/2addr v9, v4

    aput v9, v1, v3

    aput v4, v1, v5

    aput v4, v1, v7

    iget v3, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mScreenHeight:F

    sub-float/2addr v3, v4

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mNavigationBarHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v1, v8

    .line 125
    .local v1, "verticalXY1":[F
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v3, "verticalList":Ljava/util/List;, "Ljava/util/List<[F>;"
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v4, "centrePointList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[F>;>;"
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-object v4
.end method

.method protected isShowCoordinate()Z
    .locals 1

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 140
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mPassButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mFailButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 145
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 146
    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->setContentView(I)V

    .line 147
    const v0, 0x7f0500c8

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    .local v0, "text":Landroid/widget/TextView;
    const v1, 0x7f090192

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 150
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mScreenWidth:F

    .line 151
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 152
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mScreenWidth:F

    .line 153
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mScreenHeight:F

    .line 155
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    iput v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->statusBarHeight:I

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "singletouch  : statusBarHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->statusBarHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SingleTouchPointTest"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const v1, 0x7f05009a

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mSurfaceView:Landroid/view/SurfaceView;

    .line 159
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mHolder:Landroid/view/SurfaceHolder;

    .line 160
    new-instance v2, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest$2;

    invoke-direct {v2, p0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest$2;-><init>(Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 178
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->getRealHeight(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->getHeight(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->statusBarHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mNavigationBarHeight:I

    .line 179
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->getCirclesList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mCirclesList:Ljava/util/List;

    .line 181
    invoke-static {p0}, Lcom/sprd/validationtools/utils/ValidationToolsUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->isShowNavigationBar:Z

    .line 182
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mSingleTouchHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 185
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mSingleTouchHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 220
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 222
    :cond_0
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 223
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 211
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 212
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->isShowNavigationBar:Z

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->hideNavigationBar()V

    .line 215
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 227
    move-object/from16 v12, p0

    iget-object v0, v12, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mCirclesList:Ljava/util/List;

    const/4 v13, 0x0

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v7, v12

    move v0, v13

    goto/16 :goto_e

    .line 230
    :cond_0
    iget-object v0, v12, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mCirclesList:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/List;

    .line 231
    .local v14, "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    if-eqz v14, :cond_16

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v7, v12

    move-object v8, v14

    goto/16 :goto_d

    .line 234
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    .line 235
    .local v15, "pointCount":I
    const/4 v0, 0x1

    if-ne v15, v0, :cond_15

    .line 236
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    .line 237
    .local v16, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 238
    .local v10, "touchX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, v12, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->statusBarHeight:I

    int-to-float v2, v2

    sub-float v11, v1, v2

    .line 239
    .local v11, "touchY":F
    const/4 v8, -0x1

    packed-switch v16, :pswitch_data_0

    move v13, v10

    move-object v7, v12

    move-object v8, v14

    move v14, v11

    .end local v10    # "touchX":F
    .end local v11    # "touchY":F
    .local v8, "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .local v13, "touchX":F
    .local v14, "touchY":F
    goto/16 :goto_b

    .line 306
    .end local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .end local v13    # "touchX":F
    .restart local v10    # "touchX":F
    .restart local v11    # "touchY":F
    .local v14, "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    :pswitch_0
    iget-object v7, v12, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 307
    :try_start_0
    iget-boolean v1, v12, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mIsInCircle:Z

    if-eqz v1, :cond_8

    iget-object v1, v12, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_2

    move-object/from16 v20, v7

    goto/16 :goto_2

    .line 311
    :cond_2
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 313
    iget-object v1, v12, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    move-object v6, v1

    .line 314
    .local v6, "canvasMove":Landroid/graphics/Canvas;
    if-eqz v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 315
    invoke-virtual {v6, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 317
    :cond_3
    iget v1, v12, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mCirclePosition:I

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    move-object/from16 v17, v1

    .line 318
    .local v17, "match":[F
    aget v4, v17, v13

    aget v5, v17, v0

    const/4 v0, 0x2

    aget v0, v17, v0

    const/4 v1, 0x3

    aget v18, v17, v1

    .line 320
    invoke-direct/range {p0 .. p0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->getRadiusPx()F

    move-result v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    move-object/from16 v1, p0

    move v2, v10

    move v3, v11

    move-object v9, v6

    .end local v6    # "canvasMove":Landroid/graphics/Canvas;
    .local v9, "canvasMove":Landroid/graphics/Canvas;
    move v6, v0

    move-object/from16 v20, v7

    move/from16 v7, v18

    move v0, v8

    move/from16 v8, v19

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->isInner(FFFFFFF)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 321
    invoke-direct {v12, v10, v11}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->setXY(FF)V

    .line 322
    if-eqz v9, :cond_5

    .line 323
    invoke-direct {v12, v9, v10, v11}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->showCoordinate(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    .line 326
    :cond_4
    invoke-virtual {v12, v13}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->storeRusult(Z)V

    .line 327
    iput-boolean v13, v12, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mIsInCircle:Z

    .line 328
    iput v0, v12, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mCirclePosition:I

    .line 329
    const/4 v8, 0x0

    iput-object v8, v12, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mMatchCircleXY:[F

    .line 330
    iget-object v0, v12, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 332
    :cond_5
    :goto_0
    if-eqz v9, :cond_6

    .line 333
    invoke-direct {v12, v9}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->startDraw(Landroid/graphics/Canvas;)V

    .line 335
    :cond_6
    iget-object v0, v12, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v9}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 311
    .end local v9    # "canvasMove":Landroid/graphics/Canvas;
    .end local v17    # "match":[F
    :cond_7
    move-object/from16 v20, v7

    .line 337
    :goto_1
    monitor-exit v20

    .line 338
    move-object v7, v12

    move-object v8, v14

    goto/16 :goto_b

    .line 307
    :cond_8
    move-object/from16 v20, v7

    .line 308
    :goto_2
    monitor-exit v20

    return v13

    .line 337
    :catchall_0
    move-exception v0

    move-object/from16 v20, v7

    :goto_3
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 252
    :pswitch_1
    move v9, v8

    const/4 v8, 0x0

    iget-object v1, v12, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_9

    .line 253
    return v13

    .line 255
    :cond_9
    iget-object v1, v12, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mPointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 257
    iget-object v1, v12, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 259
    iget-object v6, v12, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 260
    :try_start_2
    iget-object v1, v12, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    move-object v7, v1

    .line 261
    .local v7, "canvasUp":Landroid/graphics/Canvas;
    iput-boolean v13, v12, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mIsUpcanvasUnlocked:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 262
    if-eqz v7, :cond_a

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 263
    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->drawColor(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    .line 302
    .end local v7    # "canvasUp":Landroid/graphics/Canvas;
    :catchall_2
    move-exception v0

    move-object/from16 v22, v6

    move v13, v10

    move-object v7, v12

    move-object v8, v14

    move v14, v11

    goto/16 :goto_a

    .line 265
    .restart local v7    # "canvasUp":Landroid/graphics/Canvas;
    :cond_a
    :goto_4
    :try_start_4
    iget-boolean v1, v12, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mIsInCircle:Z

    if-eqz v1, :cond_11

    .line 266
    float-to-double v2, v10

    float-to-double v4, v11

    iget-object v1, v12, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mMatchCircleXY:[F

    aget v8, v1, v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    move/from16 v17, v10

    .end local v10    # "touchX":F
    .local v17, "touchX":F
    float-to-double v9, v8

    :try_start_5
    aget v1, v1, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    move-object/from16 v19, v14

    .end local v14    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .local v19, "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    float-to-double v13, v1

    .line 267
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->getRadiusPx()F

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move/from16 v21, v11

    .end local v11    # "touchY":F
    .local v21, "touchY":F
    float-to-double v11, v1

    .line 266
    move-object/from16 v1, p0

    move-object/from16 v22, v6

    move-object v8, v7

    .end local v7    # "canvasUp":Landroid/graphics/Canvas;
    .local v8, "canvasUp":Landroid/graphics/Canvas;
    move-wide v6, v9

    move-object v10, v8

    .end local v8    # "canvasUp":Landroid/graphics/Canvas;
    .local v10, "canvasUp":Landroid/graphics/Canvas;
    move-wide v8, v13

    move-object/from16 v23, v10

    move/from16 v13, v17

    move/from16 v14, v21

    .end local v10    # "canvasUp":Landroid/graphics/Canvas;
    .end local v17    # "touchX":F
    .end local v21    # "touchY":F
    .restart local v13    # "touchX":F
    .local v14, "touchY":F
    .local v23, "canvasUp":Landroid/graphics/Canvas;
    move-wide v10, v11

    :try_start_7
    invoke-direct/range {v1 .. v11}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->isInCircle(DDDDD)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 268
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-nez v1, :cond_c

    .line 269
    move-object/from16 v7, p0

    :try_start_8
    iget v1, v7, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mCirclePosition:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-ltz v1, :cond_b

    .line 270
    move-object/from16 v8, v19

    .end local v19    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .local v8, "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    :try_start_9
    invoke-interface {v8, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 269
    .end local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .restart local v19    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    :cond_b
    move-object/from16 v8, v19

    .end local v19    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .restart local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    goto :goto_5

    .line 302
    .end local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .end local v23    # "canvasUp":Landroid/graphics/Canvas;
    .restart local v19    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    :catchall_3
    move-exception v0

    goto :goto_8

    .line 268
    .restart local v23    # "canvasUp":Landroid/graphics/Canvas;
    :cond_c
    move-object/from16 v7, p0

    move-object/from16 v8, v19

    .line 273
    .end local v19    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .restart local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    :goto_5
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 274
    iget-object v1, v7, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mCirclesList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 276
    :cond_d
    iget-object v1, v7, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mCirclesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 277
    const v1, 0x7f090183

    const/4 v2, 0x0

    invoke-static {v7, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 279
    invoke-virtual {v7, v0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->storeRusult(Z)V

    .line 280
    iget-boolean v0, v7, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mIsUpcanvasUnlocked:Z

    if-nez v0, :cond_e

    .line 281
    iget-object v0, v7, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v1, v23

    .end local v23    # "canvasUp":Landroid/graphics/Canvas;
    .local v1, "canvasUp":Landroid/graphics/Canvas;
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_6

    .line 280
    .end local v1    # "canvasUp":Landroid/graphics/Canvas;
    .restart local v23    # "canvasUp":Landroid/graphics/Canvas;
    :cond_e
    move-object/from16 v1, v23

    .line 283
    .end local v23    # "canvasUp":Landroid/graphics/Canvas;
    .restart local v1    # "canvasUp":Landroid/graphics/Canvas;
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->finish()V

    .line 284
    monitor-exit v22

    const/4 v0, 0x0

    return v0

    .line 276
    .end local v1    # "canvasUp":Landroid/graphics/Canvas;
    .restart local v23    # "canvasUp":Landroid/graphics/Canvas;
    :cond_f
    move-object/from16 v1, v23

    .end local v23    # "canvasUp":Landroid/graphics/Canvas;
    .restart local v1    # "canvasUp":Landroid/graphics/Canvas;
    goto :goto_7

    .line 287
    .end local v1    # "canvasUp":Landroid/graphics/Canvas;
    .end local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .restart local v19    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .restart local v23    # "canvasUp":Landroid/graphics/Canvas;
    :cond_10
    move-object/from16 v7, p0

    move-object/from16 v8, v19

    move-object/from16 v1, v23

    .end local v19    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .end local v23    # "canvasUp":Landroid/graphics/Canvas;
    .restart local v1    # "canvasUp":Landroid/graphics/Canvas;
    .restart local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->storeRusult(Z)V

    .line 289
    :goto_7
    iput v13, v7, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mTouchUpX:F

    .line 290
    iput v14, v7, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mTouchUpY:F

    goto :goto_9

    .line 302
    .end local v1    # "canvasUp":Landroid/graphics/Canvas;
    .end local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .restart local v19    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    :catchall_4
    move-exception v0

    move-object/from16 v7, p0

    :goto_8
    move-object/from16 v8, v19

    .end local v19    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .restart local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    goto :goto_a

    .end local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .end local v13    # "touchX":F
    .end local v14    # "touchY":F
    .restart local v11    # "touchY":F
    .restart local v17    # "touchX":F
    .restart local v19    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    :catchall_5
    move-exception v0

    move-object/from16 v22, v6

    move v14, v11

    move-object v7, v12

    move/from16 v13, v17

    move-object/from16 v8, v19

    .end local v11    # "touchY":F
    .end local v17    # "touchX":F
    .end local v19    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .restart local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .restart local v13    # "touchX":F
    .restart local v14    # "touchY":F
    goto :goto_a

    .end local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .end local v13    # "touchX":F
    .restart local v11    # "touchY":F
    .local v14, "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .restart local v17    # "touchX":F
    :catchall_6
    move-exception v0

    move-object/from16 v22, v6

    move-object v7, v12

    move-object v8, v14

    move/from16 v13, v17

    move v14, v11

    .end local v11    # "touchY":F
    .end local v17    # "touchX":F
    .restart local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .restart local v13    # "touchX":F
    .local v14, "touchY":F
    goto :goto_a

    .line 265
    .end local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .end local v13    # "touchX":F
    .restart local v7    # "canvasUp":Landroid/graphics/Canvas;
    .local v10, "touchX":F
    .restart local v11    # "touchY":F
    .local v14, "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    :cond_11
    move-object/from16 v22, v6

    move-object v1, v7

    move v13, v10

    move-object v7, v12

    move-object v8, v14

    move v14, v11

    .line 292
    .end local v7    # "canvasUp":Landroid/graphics/Canvas;
    .end local v10    # "touchX":F
    .end local v11    # "touchY":F
    .restart local v1    # "canvasUp":Landroid/graphics/Canvas;
    .restart local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .restart local v13    # "touchX":F
    .local v14, "touchY":F
    :goto_9
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mIsInCircle:Z

    .line 293
    const/4 v2, -0x1

    iput v2, v7, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mCirclePosition:I

    .line 294
    const/4 v2, 0x0

    iput-object v2, v7, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mMatchCircleXY:[F

    .line 295
    iget-object v2, v7, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mPointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 296
    if-eqz v1, :cond_12

    .line 297
    invoke-direct {v7, v1}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->startDraw(Landroid/graphics/Canvas;)V

    .line 298
    iget v2, v7, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mTouchUpX:F

    iget v3, v7, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mTouchUpY:F

    invoke-direct {v7, v1, v2, v3}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->showCoordinate(Landroid/graphics/Canvas;FF)V

    .line 300
    :cond_12
    iget-object v2, v7, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 301
    iput-boolean v0, v7, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mIsUpcanvasUnlocked:Z

    .line 302
    .end local v1    # "canvasUp":Landroid/graphics/Canvas;
    monitor-exit v22

    goto :goto_b

    .end local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .end local v13    # "touchX":F
    .restart local v10    # "touchX":F
    .restart local v11    # "touchY":F
    .local v14, "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    :catchall_7
    move-exception v0

    move-object/from16 v22, v6

    move v13, v10

    move-object v7, v12

    move-object v8, v14

    move v14, v11

    .end local v10    # "touchX":F
    .end local v11    # "touchY":F
    .restart local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .restart local v13    # "touchX":F
    .local v14, "touchY":F
    :goto_a
    monitor-exit v22
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_a

    .line 257
    .end local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .end local v13    # "touchX":F
    .restart local v10    # "touchX":F
    .restart local v11    # "touchY":F
    .local v14, "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    :cond_13
    move v13, v10

    move-object v7, v12

    move-object v8, v14

    move v14, v11

    .end local v10    # "touchX":F
    .end local v11    # "touchY":F
    .restart local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .restart local v13    # "touchX":F
    .local v14, "touchY":F
    goto :goto_b

    .line 241
    .end local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .end local v13    # "touchX":F
    .restart local v10    # "touchX":F
    .restart local v11    # "touchY":F
    .local v14, "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    :pswitch_2
    move v13, v10

    move-object v7, v12

    move-object v8, v14

    move v14, v11

    .end local v10    # "touchX":F
    .end local v11    # "touchY":F
    .restart local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .restart local v13    # "touchX":F
    .local v14, "touchY":F
    iget-object v9, v7, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 242
    nop

    .line 243
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->getRadiusPx()F

    move-result v1

    float-to-double v5, v1

    .line 242
    move-object/from16 v1, p0

    move-object v2, v8

    move v3, v13

    move v4, v14

    invoke-direct/range {v1 .. v6}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->getMatchCircle(Ljava/util/List;FFD)[F

    move-result-object v1

    iput-object v1, v7, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mMatchCircleXY:[F

    .line 244
    if-nez v1, :cond_14

    .line 245
    monitor-exit v9

    const/4 v0, 0x0

    return v0

    .line 247
    :cond_14
    iput-boolean v0, v7, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mIsInCircle:Z

    .line 248
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 249
    invoke-direct {v7, v13, v14}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->setXY(FF)V

    .line 250
    goto :goto_b

    .line 248
    :catchall_9
    move-exception v0

    :try_start_b
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    throw v0

    .line 342
    .end local v13    # "touchX":F
    .end local v14    # "touchY":F
    .end local v16    # "action":I
    :goto_b
    goto :goto_c

    .line 343
    .end local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .local v14, "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    :cond_15
    move-object v7, v12

    move-object v8, v14

    .end local v14    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .restart local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    iget-object v0, v7, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 344
    iget-object v1, v7, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    const/4 v0, 0x0

    :try_start_c
    iput-boolean v0, v7, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->mIsInCircle:Z

    .line 346
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    .line 348
    :goto_c
    invoke-super/range {p0 .. p1}, Lcom/sprd/validationtools/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 346
    :catchall_a
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    throw v0

    .line 231
    .end local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .end local v15    # "pointCount":I
    .restart local v14    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    :cond_16
    move-object v7, v12

    move-object v8, v14

    .line 232
    .end local v14    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    .restart local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    :goto_d
    const/4 v0, 0x0

    return v0

    .line 227
    .end local v8    # "circles":Ljava/util/List;, "Ljava/util/List<[F>;"
    :cond_17
    move-object v7, v12

    move v0, v13

    .line 228
    :goto_e
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
