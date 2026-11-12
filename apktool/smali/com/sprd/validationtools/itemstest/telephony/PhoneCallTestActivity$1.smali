.class Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity$1;
.super Landroid/os/Handler;
.source "PhoneCallTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;

    .line 58
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;->endCall()V

    .line 64
    nop

    .line 68
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
