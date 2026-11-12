.class Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;
.super Ljava/lang/Thread;
.source "HeadSetTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->startMmiAudio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    .line 220
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsThirdPartHeadset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$fgetmIsThirdPartHeadset(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadSetTest"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$fgetmIsThirdPartHeadset(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)Z

    move-result v0

    const-string v1, "atchannel0"

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "AT+SPVLOOP=1,4,8,2,3,0"

    invoke-static {v0, v1}, Lcom/sprd/validationtools/utils/IATUtils;->sendATCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 227
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string v0, "AT+SPVLOOP=1,2,8,2,3,0"

    invoke-static {v0, v1}, Lcom/sprd/validationtools/utils/IATUtils;->sendATCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .restart local v0    # "result":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/sprd/validationtools/utils/IATUtils;->AT_OK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3$1;

    invoke-direct {v2, p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3$1;-><init>(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3$2;

    invoke-direct {v2, p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3$2;-><init>(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    :goto_1
    return-void
.end method
