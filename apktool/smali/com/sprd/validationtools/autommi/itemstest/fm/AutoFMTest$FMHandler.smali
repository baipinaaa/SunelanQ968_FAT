.class Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest$FMHandler;
.super Landroid/os/Handler;
.source "AutoFMTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FMHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;


# direct methods
.method public constructor <init>(Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 50
    iput-object p1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest$FMHandler;->this$0:Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;

    .line 51
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 52
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 61
    :pswitch_1
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest$FMHandler;->this$0:Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->stopFM()V

    .line 62
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest$FMHandler;->this$0:Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;

    invoke-static {v0}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->-$$Nest$misHeadsetExists(Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest$FMHandler;->this$0:Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->storeRusult(Z)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest$FMHandler;->this$0:Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->showRssi()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->storeRusult(Z)V

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest$FMHandler;->this$0:Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->finish()V

    .line 68
    goto :goto_1

    .line 57
    :pswitch_2
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest$FMHandler;->this$0:Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;

    invoke-static {v0}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->-$$Nest$fgetTEST_FREQUENCY(Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->startFM(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest$FMHandler;->this$0:Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;

    invoke-static {v0}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->-$$Nest$fgetmFMHandler(Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 59
    nop

    .line 72
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
