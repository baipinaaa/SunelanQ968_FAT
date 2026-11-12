.class Lcom/sprd/validationtools/utils/WifiTestUtil$WifiScanReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiTestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/utils/WifiTestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiScanReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/utils/WifiTestUtil;


# direct methods
.method private constructor <init>(Lcom/sprd/validationtools/utils/WifiTestUtil;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/sprd/validationtools/utils/WifiTestUtil$WifiScanReceiver;->this$0:Lcom/sprd/validationtools/utils/WifiTestUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprd/validationtools/utils/WifiTestUtil;Lcom/sprd/validationtools/utils/WifiTestUtil$WifiScanReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/utils/WifiTestUtil$WifiScanReceiver;-><init>(Lcom/sprd/validationtools/utils/WifiTestUtil;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/sprd/validationtools/utils/WifiTestUtil$WifiScanReceiver;->this$0:Lcom/sprd/validationtools/utils/WifiTestUtil;

    invoke-static {v1}, Lcom/sprd/validationtools/utils/WifiTestUtil;->-$$Nest$fgetmWifiManager(Lcom/sprd/validationtools/utils/WifiTestUtil;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 138
    .local v1, "wifiScanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v1, :cond_0

    .line 139
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/sprd/validationtools/utils/WifiTestUtil$WifiScanReceiver;->this$0:Lcom/sprd/validationtools/utils/WifiTestUtil;

    invoke-static {v3}, Lcom/sprd/validationtools/utils/WifiTestUtil;->-$$Nest$fgetmLastCount(Lcom/sprd/validationtools/utils/WifiTestUtil;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 140
    iget-object v2, p0, Lcom/sprd/validationtools/utils/WifiTestUtil$WifiScanReceiver;->this$0:Lcom/sprd/validationtools/utils/WifiTestUtil;

    invoke-virtual {v2, v1}, Lcom/sprd/validationtools/utils/WifiTestUtil;->wifiDeviceListChange(Ljava/util/List;)V

    .line 142
    iget-object v2, p0, Lcom/sprd/validationtools/utils/WifiTestUtil$WifiScanReceiver;->this$0:Lcom/sprd/validationtools/utils/WifiTestUtil;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sprd/validationtools/utils/WifiTestUtil;->-$$Nest$fputmLastCount(Lcom/sprd/validationtools/utils/WifiTestUtil;I)V

    .line 145
    .end local v1    # "wifiScanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    return-void
.end method
