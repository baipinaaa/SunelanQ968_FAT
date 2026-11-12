.class Lcom/sprd/validationtools/itemstest/ai/AITest$3;
.super Ljava/lang/Object;
.source "AITest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/ai/AITest;->onResume()V
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

    .line 91
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/ai/AITest$3;->this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/ai/AITest$3;->this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/ai/AITest;->startAiTest()V

    .line 95
    return-void
.end method
