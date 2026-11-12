.class public Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout;
.super Landroid/widget/RelativeLayout;
.source "PreviewFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout$OnSizeChangedListener;
    }
.end annotation


# static fields
.field public static final VAL_CAMERA_PREVIEW_RATIO:D = 0.75

.field public static final VAL_HEIGHT_RATIO:D = 3.0

.field public static final VAL_WIDTH_RATIO:D = 4.0


# instance fields
.field private mAspectRatio:D

.field private mListener:Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout$OnSizeChangedListener;

.field private mScreenState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-virtual {p0, v0, v1}, Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 29
    return-void
.end method


# virtual methods
.method public fadeOutBorder()V
    .locals 0

    .line 57
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 33
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 34
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 61
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 62
    .local v0, "previewWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 64
    .local v1, "previewHeight":I
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    .line 65
    .local v2, "hPadding":I
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 67
    .local v3, "vPadding":I
    sub-int/2addr v0, v2

    .line 68
    sub-int/2addr v1, v3

    .line 69
    iget-wide v4, p0, Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout;->mAspectRatio:D

    iget-boolean v6, p0, Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout;->mScreenState:Z

    invoke-static {v0, v1, v4, v5, v6}, Lcom/sprd/validationtools/itemstest/camera/Util;->getOptimalSize(IIDZ)Lcom/sprd/validationtools/itemstest/camera/Tuple;

    move-result-object v4

    .line 71
    .local v4, "tuple":Lcom/sprd/validationtools/itemstest/camera/Tuple;, "Lcom/sprd/validationtools/itemstest/camera/Tuple<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v5, v4, Lcom/sprd/validationtools/itemstest/camera/Tuple;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 72
    iget-object v5, v4, Lcom/sprd/validationtools/itemstest/camera/Tuple;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 73
    add-int/2addr v0, v2

    .line 74
    add-int/2addr v1, v3

    .line 76
    nop

    .line 77
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 78
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 76
    invoke-super {p0, v6, v5}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 79
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 87
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout;->mListener:Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout$OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p1, p2}, Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout$OnSizeChangedListener;->onSizeChanged(II)V

    .line 89
    :cond_0
    return-void
.end method

.method public setAspectRatio(D)V
    .locals 2
    .param p1, "ratio"    # D

    .line 37
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-lez v0, :cond_2

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 40
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double p1, v0, p1

    .line 42
    :cond_0
    iget-wide v0, p0, Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout;->mAspectRatio:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_1

    .line 43
    iput-wide p1, p0, Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout;->mAspectRatio:D

    .line 44
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout;->requestLayout()V

    .line 46
    :cond_1
    return-void

    .line 38
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setAspectRatio(DZ)V
    .locals 1
    .param p1, "ratio"    # D
    .param p3, "state"    # Z

    .line 49
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout;->mScreenState:Z

    if-eq v0, p3, :cond_0

    .line 50
    iput-boolean p3, p0, Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout;->mScreenState:Z

    .line 51
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout;->requestLayout()V

    .line 53
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 54
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout$OnSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout$OnSizeChangedListener;

    .line 82
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout;->mListener:Lcom/sprd/validationtools/itemstest/camera/PreviewFrameLayout$OnSizeChangedListener;

    .line 83
    return-void
.end method
