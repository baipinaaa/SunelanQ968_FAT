.class Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;
.super Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;
.source "FmTunerCallbackAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FmTunerCallbackAdapter"


# instance fields
.field private mCallback:Lcom/sprd/validationtools/autommi/itemstest/fm/FmCallback;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/autommi/itemstest/fm/FmCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Lcom/sprd/validationtools/autommi/itemstest/fm/FmCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 27
    invoke-direct {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;->mCallback:Lcom/sprd/validationtools/autommi/itemstest/fm/FmCallback;

    .line 29
    if-nez p2, :cond_0

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 32
    :cond_0
    iput-object p2, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    .line 34
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onAntennaStateChange$3$com-sprd-validationtools-autommi-itemstest-fm-FmTunerCallbackAdapter(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 53
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;->mCallback:Lcom/sprd/validationtools/autommi/itemstest/fm/FmCallback;

    invoke-virtual {v0, p1}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmCallback;->onAntennaStateChange(Z)V

    return-void
.end method

.method synthetic lambda$onCurrentProgramInfoChanged$1$com-sprd-validationtools-autommi-itemstest-fm-FmTunerCallbackAdapter(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V
    .locals 1
    .param p1, "programInfo"    # Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    .line 43
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;->mCallback:Lcom/sprd/validationtools/autommi/itemstest/fm/FmCallback;

    invoke-virtual {v0, p1}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmCallback;->onCurrentProgramInfoChanged(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V

    return-void
.end method

.method synthetic lambda$onParametersUpdated$4$com-sprd-validationtools-autommi-itemstest-fm-FmTunerCallbackAdapter(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "arrayList"    # Ljava/util/ArrayList;

    .line 58
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;->mCallback:Lcom/sprd/validationtools/autommi/itemstest/fm/FmCallback;

    invoke-virtual {v0, p1}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmCallback;->onParametersUpdated(Ljava/util/ArrayList;)V

    return-void
.end method

.method synthetic lambda$onProgramListUpdated$2$com-sprd-validationtools-autommi-itemstest-fm-FmTunerCallbackAdapter(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
    .locals 1
    .param p1, "programListChunk"    # Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    .line 48
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;->mCallback:Lcom/sprd/validationtools/autommi/itemstest/fm/FmCallback;

    invoke-virtual {v0, p1}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmCallback;->onProgramListUpdated(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V

    return-void
.end method

.method synthetic lambda$onTuneFailed$0$com-sprd-validationtools-autommi-itemstest-fm-FmTunerCallbackAdapter(ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "programSelector"    # Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 38
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;->mCallback:Lcom/sprd/validationtools/autommi/itemstest/fm/FmCallback;

    invoke-virtual {v0, p1, p2}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmCallback;->onTuneFailed(ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;)V

    return-void
.end method

.method public onAntennaStateChange(Z)V
    .locals 2
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method

.method public onCurrentProgramInfoChanged(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V
    .locals 2
    .param p1, "programInfo"    # Landroid/hardware/broadcastradio/V2_0/ProgramInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    return-void
.end method

.method public onParametersUpdated(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;>;"
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method

.method public onProgramListUpdated(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
    .locals 2
    .param p1, "programListChunk"    # Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void
.end method

.method public onTuneFailed(ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "programSelector"    # Landroid/hardware/broadcastradio/V2_0/ProgramSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    return-void
.end method
