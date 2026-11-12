.class Lcom/sprd/validationtools/PhaseCheckBroadcastReceiver$SavePhasecheckAsyncTask;
.super Landroid/os/AsyncTask;
.source "PhaseCheckBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/PhaseCheckBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavePhasecheckAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Ljava/lang/String;

.field private station:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/sprd/validationtools/PhaseCheckBroadcastReceiver$SavePhasecheckAsyncTask;->station:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/sprd/validationtools/PhaseCheckBroadcastReceiver$SavePhasecheckAsyncTask;->result:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sprd/validationtools/PhaseCheckBroadcastReceiver$SavePhasecheckAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .line 26
    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 27
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/sprd/validationtools/PhaseCheckBroadcastReceiver$SavePhasecheckAsyncTask;->station:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/sprd/validationtools/PhaseCheckBroadcastReceiver$SavePhasecheckAsyncTask;->result:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doInBackground station = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/PhaseCheckBroadcastReceiver$SavePhasecheckAsyncTask;->station:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/PhaseCheckBroadcastReceiver$SavePhasecheckAsyncTask;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhaseCheckBroadcastReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/sprd/validationtools/PhaseCheckBroadcastReceiver$SavePhasecheckAsyncTask;->result:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/PhaseCheckBroadcastReceiver$SavePhasecheckAsyncTask;->station:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/PhaseCheckParse;->writeStationTested(Ljava/lang/String;)Z

    .line 33
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/PhaseCheckBroadcastReceiver$SavePhasecheckAsyncTask;->station:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/PhaseCheckParse;->writeStationPass(Ljava/lang/String;)Z

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/PhaseCheckBroadcastReceiver$SavePhasecheckAsyncTask;->result:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/PhaseCheckBroadcastReceiver$SavePhasecheckAsyncTask;->station:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/PhaseCheckParse;->writeStationTested(Ljava/lang/String;)Z

    .line 36
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/PhaseCheckBroadcastReceiver$SavePhasecheckAsyncTask;->station:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/PhaseCheckParse;->writeStationFail(Ljava/lang/String;)Z

    .line 39
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
