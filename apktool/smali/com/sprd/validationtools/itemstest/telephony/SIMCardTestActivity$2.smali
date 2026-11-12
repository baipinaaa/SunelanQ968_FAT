.class Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity$2;
.super Ljava/lang/Object;
.source "SIMCardTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;

    .line 66
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 69
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->-$$Nest$mgetResultList(Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->storeRusult(Z)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;

    const v2, 0x7f090181

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 73
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->storeRusult(Z)V

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->finish()V

    .line 76
    return-void
.end method
