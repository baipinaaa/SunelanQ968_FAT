.class Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$8;
.super Ljava/lang/Thread;
.source "PhoneLoopBackTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->switchLoopback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    .line 278
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$8;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 280
    const-string v0, "PhoneLoopBackTest"

    const-string v1, "audio whale loopback, LOOPBACK_MIC3_RECEIVER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$8;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$fgetmAudioManagerProxy(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    move-result-object v0

    const-string v1, "dsp_loop=0"

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;->setParameters(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$8;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$fgetmAudioManagerProxy(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    move-result-object v0

    const-string v1, "test_out_stream_route=0x2"

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;->setParameters(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$8;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$fgetmAudioManagerProxy(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    move-result-object v0

    const-string v1, "test_in_stream_route=0x90000000"

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;->setParameters(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$8;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$fgetmAudioManagerProxy(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    move-result-object v0

    const-string v1, "dsploop_type=1"

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;->setParameters(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$8;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$fgetmAudioManagerProxy(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    move-result-object v0

    const-string v1, "dsp_loop=1"

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;->setParameters(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$8;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$fputmRadioOpenSuccess(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;Z)V

    .line 287
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$8;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mUihandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$8$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$8$1;-><init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    return-void
.end method
