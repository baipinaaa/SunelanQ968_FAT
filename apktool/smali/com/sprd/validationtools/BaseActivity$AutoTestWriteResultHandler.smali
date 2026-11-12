.class Lcom/sprd/validationtools/BaseActivity$AutoTestWriteResultHandler;
.super Landroid/os/Handler;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutoTestWriteResultHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/sprd/validationtools/BaseActivity;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/BaseActivity;
    .param p2, "Looper"    # Landroid/os/Looper;

    .line 70
    iput-object p1, p0, Lcom/sprd/validationtools/BaseActivity$AutoTestWriteResultHandler;->this$0:Lcom/sprd/validationtools/BaseActivity;

    .line 71
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 81
    :pswitch_0
    invoke-static {}, Lcom/sprd/validationtools/BaseActivity;->-$$Nest$sfgetmTestResults()[I

    move-result-object v0

    const/16 v1, 0x3f

    aget v0, v0, v1

    invoke-static {v1, v0}, Lcom/sprd/validationtools/utils/FileUtils;->writeAutoTestResult(II)V

    .line 82
    iget-object v0, p0, Lcom/sprd/validationtools/BaseActivity$AutoTestWriteResultHandler;->this$0:Lcom/sprd/validationtools/BaseActivity;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/BaseActivity;->delayMs(I)V

    .line 83
    iget-object v0, p0, Lcom/sprd/validationtools/BaseActivity$AutoTestWriteResultHandler;->this$0:Lcom/sprd/validationtools/BaseActivity;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 84
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "AutoMMITest"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 85
    goto :goto_0

    .line 77
    .end local v0    # "pm":Landroid/os/PowerManager;
    :pswitch_1
    iget-object v0, p0, Lcom/sprd/validationtools/BaseActivity$AutoTestWriteResultHandler;->this$0:Lcom/sprd/validationtools/BaseActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/BaseActivity;->-$$Nest$fgetmCurrentID(Lcom/sprd/validationtools/BaseActivity;)I

    move-result v0

    invoke-static {}, Lcom/sprd/validationtools/BaseActivity;->-$$Nest$sfgetmTestResults()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/BaseActivity$AutoTestWriteResultHandler;->this$0:Lcom/sprd/validationtools/BaseActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/BaseActivity;->-$$Nest$fgetmCurrentID(Lcom/sprd/validationtools/BaseActivity;)I

    move-result v2

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/sprd/validationtools/utils/FileUtils;->writeAutoTestResult(II)V

    .line 78
    iget-object v0, p0, Lcom/sprd/validationtools/BaseActivity$AutoTestWriteResultHandler;->this$0:Lcom/sprd/validationtools/BaseActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/BaseActivity;->-$$Nest$mstartNextTest(Lcom/sprd/validationtools/BaseActivity;)V

    .line 79
    nop

    .line 89
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
