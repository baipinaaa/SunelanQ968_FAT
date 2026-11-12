.class Lcom/sprd/validationtools/itemstest/led/RedLightTest$1;
.super Landroid/os/Handler;
.source "RedLightTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/led/RedLightTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/led/RedLightTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/led/RedLightTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/led/RedLightTest;

    .line 43
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/led/RedLightTest$1;->this$0:Lcom/sprd/validationtools/itemstest/led/RedLightTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 54
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/led/RedLightTest$1;->this$0:Lcom/sprd/validationtools/itemstest/led/RedLightTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/led/RedLightTest;->-$$Nest$mcheckLight(Lcom/sprd/validationtools/itemstest/led/RedLightTest;)V

    goto :goto_0

    .line 48
    :pswitch_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/led/RedLightTest$1;->this$0:Lcom/sprd/validationtools/itemstest/led/RedLightTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/led/RedLightTest;->-$$Nest$msetBackground(Lcom/sprd/validationtools/itemstest/led/RedLightTest;)V

    .line 49
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/led/RedLightTest$1;->this$0:Lcom/sprd/validationtools/itemstest/led/RedLightTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/led/RedLightTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/led/RedLightTest;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 57
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
