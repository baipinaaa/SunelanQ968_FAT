.class Lcom/sprd/validationtools/itemstest/ai/AITest$2;
.super Ljava/lang/Object;
.source "AITest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/ai/AITest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/ai/AITest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/ai/AITest;

    .line 61
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/ai/AITest$2;->this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/ai/AITest$2;->this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/ai/AITest;->storeRusult(Z)V

    .line 65
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/ai/AITest$2;->this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;

    const-string v2, "Timeout!"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 66
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/ai/AITest$2;->this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/ai/AITest;->finish()V

    .line 67
    return-void
.end method
