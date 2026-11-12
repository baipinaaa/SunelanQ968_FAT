.class Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneCallTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;

    .line 71
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity$MyPhoneStateListener;->this$0:Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "number"    # Ljava/lang/String;

    .line 74
    const-string v0, "PhoneCallTestActivity"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 80
    :pswitch_1
    const-string v1, "offhook"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :pswitch_2
    const-string v1, "idle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity$MyPhoneStateListener;->this$0:Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;->-$$Nest$fputmCallResult(Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;Z)V

    .line 78
    nop

    .line 83
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
