.class Lcom/sprd/validationtools/itemstest/ai/AITest$4;
.super Ljava/lang/Object;
.source "AITest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/ai/AITest;->startAiTest()V
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

    .line 108
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/ai/AITest$4;->this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 111
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 112
    .local v0, "message1":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 113
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/ai/AITest$4;->this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/ai/AITest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/ai/AITest;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 115
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/ai/AITest$4;->this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;

    invoke-virtual {v2}, Lcom/sprd/validationtools/itemstest/ai/AITest;->executeAICmd()I

    move-result v2

    .line 116
    .local v2, "result":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result=:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AITest"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 118
    .local v3, "message2":Landroid/os/Message;
    const/4 v4, 0x2

    iput v4, v3, Landroid/os/Message;->what:I

    .line 119
    if-ne v2, v1, :cond_0

    .line 120
    const/4 v4, 0x3

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 121
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/ai/AITest$4;->this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;

    invoke-static {v4, v1}, Lcom/sprd/validationtools/itemstest/ai/AITest;->-$$Nest$fputmTestSuccess(Lcom/sprd/validationtools/itemstest/ai/AITest;Z)V

    goto :goto_0

    .line 123
    :cond_0
    const/4 v1, 0x4

    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 124
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/ai/AITest$4;->this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/sprd/validationtools/itemstest/ai/AITest;->-$$Nest$fputmTestSuccess(Lcom/sprd/validationtools/itemstest/ai/AITest;Z)V

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/ai/AITest$4;->this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/ai/AITest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/ai/AITest;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 127
    return-void
.end method
