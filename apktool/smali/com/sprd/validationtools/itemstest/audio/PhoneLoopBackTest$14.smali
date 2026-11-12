.class Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$14;
.super Ljava/lang/Thread;
.source "PhoneLoopBackTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->rollbackMmiAudio(I)V
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

    .line 461
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$14;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$14;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$fgetmAudioManagerProxy(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    move-result-object v0

    const-string v1, "dsp_loop=0"

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;->setParameters(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$14;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$fgetmAudioManagerProxy(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    move-result-object v0

    const-string v1, "mmitest=off"

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;->setParameters(Ljava/lang/String;)V

    .line 465
    return-void
.end method
