.class Lcom/sprd/validationtools/itemstest/ai/AITest$1;
.super Landroid/os/Handler;
.source "AITest.java"


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

    .line 35
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/ai/AITest$1;->this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "AITest"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 45
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 46
    .local v0, "val":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "val=:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/ai/AITest$1;->this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/ai/AITest;->-$$Nest$fgetmStateTextView(Lcom/sprd/validationtools/itemstest/ai/AITest;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "Finished!"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/ai/AITest$1;->this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/ai/AITest;->-$$Nest$fgetmStateTextView(Lcom/sprd/validationtools/itemstest/ai/AITest;)Landroid/widget/TextView;

    move-result-object v1

    const v3, -0xff0100

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/ai/AITest$1;->this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;

    const-string v3, "Success!"

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 51
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/ai/AITest$1;->this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/ai/AITest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/ai/AITest;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/ai/AITest$1;->this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/ai/AITest;->-$$Nest$fgetmRunnable(Lcom/sprd/validationtools/itemstest/ai/AITest;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 52
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/ai/AITest$1;->this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/ai/AITest;->-$$Nest$fgetmStateTextView(Lcom/sprd/validationtools/itemstest/ai/AITest;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v3, -0x10000

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/ai/AITest$1;->this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;

    const-string v3, "Failed!"

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 40
    .end local v0    # "val":I
    :pswitch_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/ai/AITest$1;->this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/ai/AITest;->-$$Nest$fgetmRunnable(Lcom/sprd/validationtools/itemstest/ai/AITest;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x4e20

    invoke-virtual {p0, v0, v2, v3}, Lcom/sprd/validationtools/itemstest/ai/AITest$1;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    const-string v0, "AI_TEST_RUNNING..."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/ai/AITest$1;->this$0:Lcom/sprd/validationtools/itemstest/ai/AITest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/ai/AITest;->-$$Nest$fgetmStateTextView(Lcom/sprd/validationtools/itemstest/ai/AITest;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Running......"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    nop

    .line 58
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
