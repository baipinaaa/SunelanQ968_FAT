.class Lcom/sprd/validationtools/itemstest/audio/ReceiverTest$2;
.super Landroid/os/Handler;
.source "ReceiverTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;

    .line 96
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest$2;->this$0:Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest$2;->this$0:Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->storeRusult(Z)V

    .line 109
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest$2;->this$0:Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->finish()V

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest$2;->this$0:Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->-$$Nest$fputisSearchFinished(Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;Z)V

    .line 102
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest$2;->this$0:Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->-$$Nest$mdoPlay(Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;)V

    .line 103
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest$2;->this$0:Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 112
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
