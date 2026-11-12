.class Lcom/sprd/validationtools/itemstest/led/BlueLightTest$1;
.super Landroid/os/Handler;
.source "BlueLightTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/led/BlueLightTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/led/BlueLightTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/led/BlueLightTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/led/BlueLightTest;

    .line 51
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/led/BlueLightTest$1;->this$0:Lcom/sprd/validationtools/itemstest/led/BlueLightTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 62
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/led/BlueLightTest$1;->this$0:Lcom/sprd/validationtools/itemstest/led/BlueLightTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->-$$Nest$mcheckLight(Lcom/sprd/validationtools/itemstest/led/BlueLightTest;)V

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/led/BlueLightTest$1;->this$0:Lcom/sprd/validationtools/itemstest/led/BlueLightTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->-$$Nest$msetBackground(Lcom/sprd/validationtools/itemstest/led/BlueLightTest;)V

    .line 57
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/led/BlueLightTest$1;->this$0:Lcom/sprd/validationtools/itemstest/led/BlueLightTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/led/BlueLightTest;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 65
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
