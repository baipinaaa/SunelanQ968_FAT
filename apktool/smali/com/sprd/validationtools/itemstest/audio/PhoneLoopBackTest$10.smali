.class Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;
.super Ljava/lang/Thread;
.source "PhoneLoopBackTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->startMmiAudio(I)V
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

    .line 358
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 361
    const-wide/16 v0, 0x5dc

    :try_start_0
    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 365
    :goto_0
    const-string v0, "AT+SPVLOOP=1,1,8,2,3,0"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/IATUtils;->sendAtCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$msetInMac(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;I)Z

    .line 367
    sget-object v1, Lcom/sprd/validationtools/utils/IATUtils;->AT_OK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mUihandler:Landroid/os/Handler;

    new-instance v2, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10$1;

    invoke-direct {v2, p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10$1;-><init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mUihandler:Landroid/os/Handler;

    new-instance v2, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10$2;

    invoke-direct {v2, p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10$2;-><init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 394
    :goto_1
    return-void
.end method
