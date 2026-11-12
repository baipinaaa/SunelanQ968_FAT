.class Lcom/sprd/validationtools/background/BackgroundSimTest$1;
.super Ljava/lang/Thread;
.source "BackgroundSimTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/background/BackgroundSimTest;->startTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/background/BackgroundSimTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/background/BackgroundSimTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/background/BackgroundSimTest;

    .line 28
    iput-object p1, p0, Lcom/sprd/validationtools/background/BackgroundSimTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundSimTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 30
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundSimTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundSimTest;

    invoke-static {v0}, Lcom/sprd/validationtools/background/BackgroundSimTest;->-$$Nest$fgetmContext(Lcom/sprd/validationtools/background/BackgroundSimTest;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 31
    .local v0, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    .line 32
    .local v1, "phoneCount":I
    const/4 v2, 0x0

    .line 37
    .local v2, "readyCount":I
    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 38
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 43
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 44
    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    if-ne v6, v3, :cond_1

    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 43
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 50
    .end local v5    # "i":I
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startTest readyCount="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", phoneCount="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "BackgroundSimTest"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    if-ne v2, v1, :cond_3

    .line 52
    iget-object v3, p0, Lcom/sprd/validationtools/background/BackgroundSimTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundSimTest;

    invoke-static {v3, v4}, Lcom/sprd/validationtools/background/BackgroundSimTest;->-$$Nest$fputtestResult(Lcom/sprd/validationtools/background/BackgroundSimTest;I)V

    .line 53
    iget-object v3, p0, Lcom/sprd/validationtools/background/BackgroundSimTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundSimTest;

    invoke-virtual {v3}, Lcom/sprd/validationtools/background/BackgroundSimTest;->stopTest()V

    .line 55
    :cond_3
    return-void
.end method
