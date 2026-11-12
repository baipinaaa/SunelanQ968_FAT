.class Lcom/sprd/validationtools/itemstest/otg/OTGTest$1;
.super Landroid/os/Handler;
.source "OTGTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/otg/OTGTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    .line 107
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$1;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$1;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$fgettime(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$fputtime(Lcom/sprd/validationtools/itemstest/otg/OTGTest;J)V

    .line 113
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$1;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$fgetmCountDownView(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$1;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$fgettime(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$1;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$fgettime(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "time out"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$1;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    const v2, 0x7f090181

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$1;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->storeRusult(Z)V

    .line 119
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$1;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->finish()V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$1;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 125
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 126
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
