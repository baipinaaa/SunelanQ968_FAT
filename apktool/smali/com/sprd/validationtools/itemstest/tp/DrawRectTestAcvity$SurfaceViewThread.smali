.class Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$SurfaceViewThread;
.super Ljava/lang/Thread;
.source "DrawRectTestAcvity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SurfaceViewThread"
.end annotation


# instance fields
.field private holder:Landroid/view/SurfaceHolder;

.field public isRun:Z

.field private paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;


# direct methods
.method public constructor <init>(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;

    .line 180
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$SurfaceViewThread;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 181
    iput-object p2, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$SurfaceViewThread;->holder:Landroid/view/SurfaceHolder;

    .line 182
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$SurfaceViewThread;->paint:Landroid/graphics/Paint;

    .line 183
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 187
    :goto_0
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$SurfaceViewThread;->isRun:Z

    if-eqz v0, :cond_4

    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, "canvas":Landroid/graphics/Canvas;
    :try_start_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$SurfaceViewThread;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 191
    if-nez v0, :cond_1

    .line 201
    if-eqz v0, :cond_0

    .line 202
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$SurfaceViewThread;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 192
    :cond_0
    return-void

    .line 194
    :cond_1
    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 195
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$SurfaceViewThread;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    invoke-static {v1, v0}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$mdrawView(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;Landroid/graphics/Canvas;)V

    .line 197
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$SurfaceViewThread;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$fgetmPath(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$SurfaceViewThread;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->-$$Nest$fgetmGesturePaint(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    if-eqz v0, :cond_2

    .line 202
    goto :goto_1

    .line 201
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "DrawRectTestAcvity"

    const-string v3, "draw exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 202
    :goto_1
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$SurfaceViewThread;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 205
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    goto :goto_0

    .line 201
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    :goto_2
    if-eqz v0, :cond_3

    .line 202
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$SurfaceViewThread;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 204
    :cond_3
    throw v1

    .line 206
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_4
    return-void
.end method
