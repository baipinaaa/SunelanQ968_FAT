.class public final synthetic Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;

.field public final synthetic f$1:Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;


# direct methods
.method public synthetic constructor <init>(Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;

    iput-object p2, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;

    iget-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;->lambda$onProgramListUpdated$2$com-sprd-validationtools-autommi-itemstest-fm-FmTunerCallbackAdapter(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V

    return-void
.end method
