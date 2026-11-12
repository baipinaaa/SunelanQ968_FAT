.class Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$4;
.super Landroid/os/AsyncTask;
.source "TestInfoMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->setTxtInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    .line 455
    iput-object p1, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$4;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 455
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .line 458
    iget-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$4;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 459
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    new-instance v1, Lcom/sprd/validationtools/utils/WifiTestUtil;

    invoke-direct {v1, v0}, Lcom/sprd/validationtools/utils/WifiTestUtil;-><init>(Landroid/net/wifi/WifiManager;)V

    .line 460
    .local v1, "wifiTestUtil":Lcom/sprd/validationtools/utils/WifiTestUtil;
    iget-object v2, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$4;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    .line 461
    invoke-virtual {v1, v2}, Lcom/sprd/validationtools/utils/WifiTestUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "macAddress":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 463
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 464
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v3, :cond_0

    const-string v4, "Wlan off!"

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v2, v4

    .line 466
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMacAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TestInfoMainActivity"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .end local v3    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 455
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$4;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "macAddress"    # Ljava/lang/String;

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "macAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestInfoMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$4;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->-$$Nest$fgetmWIFItxtInfo(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$4;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->-$$Nest$fgetmWIFItxtInfo(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    :cond_0
    return-void
.end method
