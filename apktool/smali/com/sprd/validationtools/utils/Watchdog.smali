.class public Lcom/sprd/validationtools/utils/Watchdog;
.super Ljava/lang/Object;
.source "Watchdog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SocketW"

.field private static final WATCHDOG_TIME:I = 0xb4


# instance fields
.field private cmd:Ljava/lang/String;

.field private consumer:Ljava/util/function/Consumer;

.field private consumerObj:Ljava/lang/Object;

.field private es:Ljava/util/concurrent/ExecutorService;

.field private volatile food:I

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private server:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "c"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprd/validationtools/utils/Watchdog;->food:I

    .line 20
    const-string v0, "SERVER"

    iput-object v0, p0, Lcom/sprd/validationtools/utils/Watchdog;->server:Ljava/lang/String;

    .line 21
    const-string v0, "CMD"

    iput-object v0, p0, Lcom/sprd/validationtools/utils/Watchdog;->cmd:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/sprd/validationtools/utils/Watchdog;->server:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/sprd/validationtools/utils/Watchdog;->cmd:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public feedFood()V
    .locals 2

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/sprd/validationtools/utils/Watchdog;->food:I

    .line 73
    iget-object v1, p0, Lcom/sprd/validationtools/utils/Watchdog;->future:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 74
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 76
    :cond_0
    return-void
.end method

.method synthetic lambda$wantEat$0$com-sprd-validationtools-utils-Watchdog()V
    .locals 3

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "count":I
    :goto_0
    const/16 v1, 0xb4

    if-ge v0, v1, :cond_1

    .line 44
    :try_start_0
    iget v1, p0, Lcom/sprd/validationtools/utils/Watchdog;->food:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 45
    return-void

    .line 47
    :cond_0
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "count":I
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 52
    return-void

    .line 53
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    nop

    .line 55
    iget v0, p0, Lcom/sprd/validationtools/utils/Watchdog;->food:I

    if-nez v0, :cond_4

    .line 57
    iget-object v0, p0, Lcom/sprd/validationtools/utils/Watchdog;->cmd:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 58
    const-string v1, "apdumper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sprd/validationtools/utils/Watchdog;->cmd:Ljava/lang/String;

    .line 59
    const-string v1, "tar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sprd/validationtools/utils/Watchdog;->cmd:Ljava/lang/String;

    .line 60
    const-string v1, "rm -rf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sprd/validationtools/utils/Watchdog;->cmd:Ljava/lang/String;

    .line 61
    const-string v1, "rylogr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sprd/validationtools/utils/Watchdog;->cmd:Ljava/lang/String;

    const-string v1, "clear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    :cond_2
    return-void

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/sprd/validationtools/utils/Watchdog;->consumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_4

    .line 65
    iget-object v1, p0, Lcom/sprd/validationtools/utils/Watchdog;->consumerObj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 68
    :cond_4
    return-void
.end method

.method public setTimeoutCallback(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 79
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/sprd/validationtools/utils/Watchdog;->consumer:Ljava/util/function/Consumer;

    .line 80
    iput-object p2, p0, Lcom/sprd/validationtools/utils/Watchdog;->consumerObj:Ljava/lang/Object;

    .line 81
    return-void
.end method

.method wantEat()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/sprd/validationtools/utils/Watchdog;->cmd:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid watching  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/utils/Watchdog;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/utils/Watchdog;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SocketW"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprd/validationtools/utils/Watchdog;->food:I

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/utils/Watchdog;->es:Ljava/util/concurrent/ExecutorService;

    .line 40
    new-instance v1, Lcom/sprd/validationtools/utils/Watchdog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/utils/Watchdog$$ExternalSyntheticLambda0;-><init>(Lcom/sprd/validationtools/utils/Watchdog;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/utils/Watchdog;->future:Ljava/util/concurrent/Future;

    .line 69
    return-void
.end method
