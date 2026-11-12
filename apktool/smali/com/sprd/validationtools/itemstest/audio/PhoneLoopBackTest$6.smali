.class Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$6;
.super Ljava/lang/Thread;
.source "PhoneLoopBackTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->switchLoopback(I)V
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

    .line 214
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$6;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 216
    const-string v0, "AT+SSAM=1"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/IATUtils;->sendAtCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$6;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$msetInMac(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;I)Z

    .line 218
    sget-object v1, Lcom/sprd/validationtools/utils/IATUtils;->AT_OK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$6;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mUihandler:Landroid/os/Handler;

    new-instance v2, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$6$1;

    invoke-direct {v2, p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$6$1;-><init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$6;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$6;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mUihandler:Landroid/os/Handler;

    new-instance v2, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$6$2;

    invoke-direct {v2, p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$6$2;-><init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$6;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    :goto_0
    return-void
.end method
