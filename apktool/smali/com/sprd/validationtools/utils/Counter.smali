.class public Lcom/sprd/validationtools/utils/Counter;
.super Ljava/lang/Object;
.source "Counter.java"


# instance fields
.field private mCurrentValue:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxValue"    # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sprd/validationtools/utils/Counter;->mCurrentValue:Ljava/util/concurrent/CountDownLatch;

    .line 18
    return-void
.end method


# virtual methods
.method public count()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/sprd/validationtools/utils/Counter;->mCurrentValue:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 22
    return-void
.end method

.method public countToZ()V
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/sprd/validationtools/utils/Counter;->mCurrentValue:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 26
    :goto_0
    iget-object v0, p0, Lcom/sprd/validationtools/utils/Counter;->mCurrentValue:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/sprd/validationtools/utils/Counter;->mCurrentValue:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public waitCount()V
    .locals 1

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/sprd/validationtools/utils/Counter;->mCurrentValue:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 37
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public waitCount(J)V
    .locals 4
    .param p1, "timeout"    # J

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/sprd/validationtools/utils/Counter;->mCurrentValue:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 42
    iget-object v0, p0, Lcom/sprd/validationtools/utils/Counter;->mCurrentValue:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wait timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 48
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method
