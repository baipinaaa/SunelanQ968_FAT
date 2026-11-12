.class Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$1;
.super Landroid/os/Handler;
.source "KeyTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    .line 63
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0xfa

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    const-string v1, "input keyevent 25"

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->-$$Nest$msendKey(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;Ljava/lang/String;)V

    .line 85
    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    const-string v3, "input keyevent 24"

    invoke-static {v0, v3}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->-$$Nest$msendKey(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->-$$Nest$fgetmKeyEventHandler(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0xf

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 82
    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    const-string v3, "input keyevent 187"

    invoke-static {v0, v3}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->-$$Nest$msendKey(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->-$$Nest$fgetmKeyEventHandler(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 78
    goto :goto_0

    .line 72
    :pswitch_3
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    const-string v3, "input keyevent 4"

    invoke-static {v0, v3}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->-$$Nest$msendKey(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->-$$Nest$fgetmKeyEventHandler(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 74
    goto :goto_0

    .line 68
    :pswitch_4
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    const-string v3, "input keyevent 3"

    invoke-static {v0, v3}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->-$$Nest$msendKey(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->-$$Nest$fgetmKeyEventHandler(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 70
    nop

    .line 89
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
