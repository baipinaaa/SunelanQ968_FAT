.class Lcom/sprd/validationtools/itemstest/audio/VibratorTest$1;
.super Landroid/os/Handler;
.source "VibratorTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/audio/VibratorTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/audio/VibratorTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/audio/VibratorTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/audio/VibratorTest;

    .line 32
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/VibratorTest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/VibratorTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 35
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/VibratorTest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/VibratorTest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->storeRusult(Z)V

    .line 38
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/VibratorTest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/VibratorTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->finish()V

    .line 41
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
