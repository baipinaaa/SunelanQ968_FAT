.class Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest$2;
.super Ljava/lang/Object;
.source "SingleTouchPointTest.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;

    .line 160
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest$2;->this$0:Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 176
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 165
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest$2;->this$0:Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->-$$Nest$fgetmHolder(Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;)Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 166
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_0

    .line 167
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 168
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest$2;->this$0:Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;

    invoke-static {v1, v0}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->-$$Nest$mstartDraw(Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;Landroid/graphics/Canvas;)V

    .line 169
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest$2;->this$0:Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->-$$Nest$mshowCoordinate(Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;Landroid/graphics/Canvas;FF)V

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest$2;->this$0:Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;->-$$Nest$fgetmHolder(Lcom/sprd/validationtools/itemstest/tp/SingleTouchPointTest;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 172
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 162
    return-void
.end method
