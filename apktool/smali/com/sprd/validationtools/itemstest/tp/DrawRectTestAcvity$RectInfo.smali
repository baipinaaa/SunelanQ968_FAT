.class Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;
.super Ljava/lang/Object;
.source "DrawRectTestAcvity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RectInfo"
.end annotation


# instance fields
.field isTouched:Z

.field paint:Landroid/graphics/Paint;

.field rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;ZLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "b"    # Z
    .param p3, "p"    # Landroid/graphics/Paint;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;->rect:Landroid/graphics/Rect;

    .line 169
    iput-boolean p2, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;->isTouched:Z

    .line 170
    iput-object p3, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$RectInfo;->paint:Landroid/graphics/Paint;

    .line 171
    return-void
.end method
