.class Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$1;
.super Landroid/os/Handler;
.source "PhoneLoopBackTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    .line 66
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const-wide/16 v3, 0xbb8

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$fgetmCurLoopback(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$mrollbackMmiAudio(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;I)V

    .line 84
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->storeRusult(Z)V

    .line 85
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->finish()V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-static {v0, v2}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$mswitchLoopback(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;I)V

    .line 80
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$fgetmPhoneLoopBackHandler(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 81
    goto :goto_0

    .line 71
    :pswitch_2
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    const/4 v5, 0x2

    invoke-static {v0, v5}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$mswitchLoopback(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;I)V

    .line 72
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$fgetmAux3DeviceSupport(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$fgetmPhoneLoopBackHandler(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$fgetmPhoneLoopBackHandler(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 77
    nop

    .line 89
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
