.class Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity$1;
.super Landroid/os/Handler;
.source "NFCTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;

    .line 33
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 38
    :pswitch_0
    const-string v0, "NFCTestActivity"

    const-string v1, "time out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;->storeRusult(Z)V

    .line 40
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;->finish()V

    .line 43
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 44
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
