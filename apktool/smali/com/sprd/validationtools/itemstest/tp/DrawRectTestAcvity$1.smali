.class Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$1;
.super Landroid/os/Handler;
.source "DrawRectTestAcvity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    .line 335
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$1;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 338
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$1;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    const v1, 0x7f090183

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 340
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$1;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->storeRusult(Z)V

    .line 341
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity$1;->this$0:Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/tp/DrawRectTestAcvity;->finish()V

    .line 342
    return-void
.end method
