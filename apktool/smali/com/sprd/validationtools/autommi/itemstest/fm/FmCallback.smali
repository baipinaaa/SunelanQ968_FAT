.class public Lcom/sprd/validationtools/autommi/itemstest/fm/FmCallback;
.super Ljava/lang/Object;
.source "FmCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAntennaStateChange(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 20
    return-void
.end method

.method public onCurrentProgramInfoChanged(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V
    .locals 0
    .param p1, "programInfo"    # Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    .line 16
    return-void
.end method

.method public onParametersUpdated(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;>;"
    return-void
.end method

.method public onProgramListUpdated(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
    .locals 0
    .param p1, "programListChunk"    # Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    .line 18
    return-void
.end method

.method public onTuneFailed(ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "programSelector"    # Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 14
    return-void
.end method
