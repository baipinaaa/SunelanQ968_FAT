.class Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$1;
.super Ljava/lang/Object;
.source "WifiTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    .line 44
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fgetmFindFlag(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    const v2, 0x7f090183

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->storeRusult(Z)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    const v2, 0x7f090181

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 53
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->storeRusult(Z)V

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fgetmR(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fgetwifiTestUtil(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Lcom/sprd/validationtools/utils/WifiTestUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/validationtools/utils/WifiTestUtil;->stopTest()V

    .line 57
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->finish()V

    .line 58
    return-void
.end method
