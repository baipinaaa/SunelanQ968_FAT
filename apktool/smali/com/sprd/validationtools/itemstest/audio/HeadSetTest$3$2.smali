.class Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3$2;
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

    .line 241
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3$2;->this$1:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3$2;->this$1:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$mstep(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;I)V

    .line 244
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3$2;->this$1:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->storeRusult(Z)V

    .line 246
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3$2;->this$1:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->finish()V

    .line 248
    :cond_0
    return-void
.end method
