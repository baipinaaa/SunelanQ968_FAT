.class Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3$1;
.super Ljava/lang/Object;
.source "HeadSetTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;

    .line 230
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3$1;->this$1:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3$1;->this$1:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$mstep(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;I)V

    .line 233
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3$1;->this$1:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    const-string v1, "PhoneLoopBack Init Fail!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 234
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3$1;->this$1:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-virtual {v0, v2}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->storeRusult(Z)V

    .line 236
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3$1;->this$1:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->finish()V

    .line 238
    :cond_0
    return-void
.end method
