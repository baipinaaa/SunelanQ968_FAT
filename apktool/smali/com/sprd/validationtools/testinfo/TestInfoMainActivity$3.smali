.class Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$3;
.super Lcom/sprd/validationtools/utils/WifiTestUtil;
.source "TestInfoMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;
    .param p2, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .line 316
    iput-object p1, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$3;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    invoke-direct {p0, p2}, Lcom/sprd/validationtools/utils/WifiTestUtil;-><init>(Landroid/net/wifi/WifiManager;)V

    return-void
.end method


# virtual methods
.method public wifiDeviceListChange(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 348
    .local p1, "wifiDeviceList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    return-void
.end method

.method public wifiStateChange(I)V
    .locals 4
    .param p1, "newState"    # I

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifiStateChange newState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestInfoMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 322
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$3;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$3;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "macAddress":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    iget-object v2, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$3;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->-$$Nest$fgetmWifiManager(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 325
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v2, :cond_0

    const-string v3, "Wlan off!"

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .line 328
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "macAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v1, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$3;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->-$$Nest$fgetmWIFItxtInfo(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 330
    iget-object v1, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$3;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->-$$Nest$fgetmWIFItxtInfo(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 338
    .end local v0    # "macAddress":Ljava/lang/String;
    :pswitch_1
    goto :goto_1

    .line 334
    :pswitch_2
    goto :goto_1

    .line 336
    :pswitch_3
    nop

    .line 345
    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
