.class public Lcom/sprd/validationtools/PhaseCheckBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhaseCheckBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/PhaseCheckBroadcastReceiver$SavePhasecheckAsyncTask;
    }
.end annotation


# static fields
.field private static final ACTION_SAVE_PHASECHECK:Ljava/lang/String; = "com.sprd.validationtools.SAVE_PHASECHECK"

.field private static final SAVE_PHASECHECK_RESULT:Ljava/lang/String; = "station_result"

.field private static final SAVE_PHASECHECK_STATION_NAME:Ljava/lang/String; = "station_name"

.field private static final TAG:Ljava/lang/String; = "PhaseCheckBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhaseCheckBroadcastReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    if-nez v0, :cond_0

    .line 48
    return-void

    .line 49
    :cond_0
    const-string v1, "com.sprd.validationtools.SAVE_PHASECHECK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    nop

    .line 51
    const-string v1, "station_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "stationName":Ljava/lang/String;
    nop

    .line 53
    const-string v3, "station_result"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "stationResult":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive stationName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",stationResult="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v2, Lcom/sprd/validationtools/PhaseCheckBroadcastReceiver$SavePhasecheckAsyncTask;

    invoke-direct {v2}, Lcom/sprd/validationtools/PhaseCheckBroadcastReceiver$SavePhasecheckAsyncTask;-><init>()V

    .line 57
    .local v2, "asyncTask":Lcom/sprd/validationtools/PhaseCheckBroadcastReceiver$SavePhasecheckAsyncTask;
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/sprd/validationtools/PhaseCheckBroadcastReceiver$SavePhasecheckAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    .end local v1    # "stationName":Ljava/lang/String;
    .end local v2    # "asyncTask":Lcom/sprd/validationtools/PhaseCheckBroadcastReceiver$SavePhasecheckAsyncTask;
    .end local v3    # "stationResult":Ljava/lang/String;
    :cond_1
    return-void
.end method
