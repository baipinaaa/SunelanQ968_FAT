.class Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoFMTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;

    .line 94
    iput-object p1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest$1;->this$0:Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "earphoneIntent"    # Landroid/content/Intent;

    .line 96
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 100
    .local v0, "st":I
    const-string v2, "microphone"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 101
    .local v2, "deviceId":I
    if-lez v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest$1;->this$0:Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->-$$Nest$fputmIsHeadsetIn(Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;Z)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v3, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest$1;->this$0:Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;

    invoke-static {v3, v1}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->-$$Nest$fputmIsHeadsetIn(Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;Z)V

    .line 108
    .end local v0    # "st":I
    .end local v2    # "deviceId":I
    :cond_1
    :goto_0
    return-void
.end method
