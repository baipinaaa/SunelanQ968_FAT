.class Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4;
.super Ljava/lang/Thread;
.source "HeadSetTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->startMmiAudio()V
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

    .line 258
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$fgetmIsThirdPartHeadset(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$fgetmAudioManagerProxy(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    move-result-object v0

    const-string v1, "test_out_stream_route=0x8"

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;->setParameters(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$fgetmAudioManagerProxy(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    move-result-object v0

    const-string v1, "test_in_stream_route=0x80000004"

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$fgetmAudioManagerProxy(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    move-result-object v0

    const-string v1, "test_out_stream_route=0x4"

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;->setParameters(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$fgetmAudioManagerProxy(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    move-result-object v0

    const-string v1, "test_in_stream_route=0x80000010"

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;->setParameters(Ljava/lang/String;)V

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$fgetmAudioManagerProxy(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    move-result-object v0

    const-string v1, "dsp_delay=2000"

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;->setParameters(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$fgetmAudioManagerProxy(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    move-result-object v0

    const-string v1, "dsploop_type=1"

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;->setParameters(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$fgetmAudioManagerProxy(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    move-result-object v0

    const-string v1, "dsp_loop=1"

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;->setParameters(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4$1;-><init>(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    return-void
.end method
