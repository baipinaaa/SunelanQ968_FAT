.class Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$2;
.super Landroid/content/BroadcastReceiver;
.source "HeadSetTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;
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

    .line 195
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$2;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "earphoneIntent"    # Landroid/content/Intent;

    .line 197
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "earphonePluginReceiver action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadSetTest"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "st":I
    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 202
    const-string v2, "microphone"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 203
    .local v2, "deviceId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "microphone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$2;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-static {v1, v5}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$fputmIsThirdPartHeadset(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;Z)V

    .line 205
    if-lez v0, :cond_1

    .line 206
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$2;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-static {v1, v4}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$mstep(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;I)V

    goto :goto_1

    .line 207
    :cond_1
    if-nez v0, :cond_2

    .line 208
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$2;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-static {v1, v3}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$mstep(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;I)V

    .line 209
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$2;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$mrollbackMmiAudio(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)V

    .line 210
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$2;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-static {v1, v3}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$fputisRollbackStarted(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;Z)V

    .line 214
    .end local v0    # "st":I
    .end local v2    # "deviceId":I
    :cond_2
    :goto_1
    return-void
.end method
