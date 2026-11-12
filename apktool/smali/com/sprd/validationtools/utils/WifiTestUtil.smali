.class public Lcom/sprd/validationtools/utils/WifiTestUtil;
.super Ljava/lang/Object;
.source "WifiTestUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/utils/WifiTestUtil$StartScanThread;,
        Lcom/sprd/validationtools/utils/WifiTestUtil$WifiScanReceiver;,
        Lcom/sprd/validationtools/utils/WifiTestUtil$WifiStateChangeReceiver;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0x1388

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastCount:I

.field private mStartScanThread:Lcom/sprd/validationtools/utils/WifiTestUtil$StartScanThread;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiScanReceiver:Lcom/sprd/validationtools/utils/WifiTestUtil$WifiScanReceiver;

.field private mWifiStateChangeReceiver:Lcom/sprd/validationtools/utils/WifiTestUtil$WifiStateChangeReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLastCount(Lcom/sprd/validationtools/utils/WifiTestUtil;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mLastCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/sprd/validationtools/utils/WifiTestUtil;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastCount(Lcom/sprd/validationtools/utils/WifiTestUtil;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mLastCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mwifiStartDiscovery(Lcom/sprd/validationtools/utils/WifiTestUtil;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/utils/WifiTestUtil;->wifiStartDiscovery()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sprd/validationtools/utils/WifiTestUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-string v0, "WifiTestUtil"

    sput-object v0, Lcom/sprd/validationtools/utils/WifiTestUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 2
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 26
    iput-object v0, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mContext:Landroid/content/Context;

    .line 27
    const/4 v1, 0x0

    iput v1, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mLastCount:I

    .line 28
    iput-object v0, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mWifiStateChangeReceiver:Lcom/sprd/validationtools/utils/WifiTestUtil$WifiStateChangeReceiver;

    .line 29
    iput-object v0, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mWifiScanReceiver:Lcom/sprd/validationtools/utils/WifiTestUtil$WifiScanReceiver;

    .line 30
    iput-object v0, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mStartScanThread:Lcom/sprd/validationtools/utils/WifiTestUtil$StartScanThread;

    .line 33
    iput-object p1, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 34
    return-void
.end method

.method private registerAllReceiver()V
    .locals 6

    .line 37
    new-instance v0, Lcom/sprd/validationtools/utils/WifiTestUtil$WifiStateChangeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sprd/validationtools/utils/WifiTestUtil$WifiStateChangeReceiver;-><init>(Lcom/sprd/validationtools/utils/WifiTestUtil;Lcom/sprd/validationtools/utils/WifiTestUtil$WifiStateChangeReceiver-IA;)V

    iput-object v0, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mWifiStateChangeReceiver:Lcom/sprd/validationtools/utils/WifiTestUtil$WifiStateChangeReceiver;

    .line 38
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 39
    .local v0, "filterFlag1":Ljava/lang/String;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 40
    .local v2, "filter1":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mWifiStateChangeReceiver:Lcom/sprd/validationtools/utils/WifiTestUtil$WifiStateChangeReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    new-instance v3, Lcom/sprd/validationtools/utils/WifiTestUtil$WifiScanReceiver;

    invoke-direct {v3, p0, v1}, Lcom/sprd/validationtools/utils/WifiTestUtil$WifiScanReceiver;-><init>(Lcom/sprd/validationtools/utils/WifiTestUtil;Lcom/sprd/validationtools/utils/WifiTestUtil$WifiScanReceiver-IA;)V

    iput-object v3, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mWifiScanReceiver:Lcom/sprd/validationtools/utils/WifiTestUtil$WifiScanReceiver;

    .line 43
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 44
    .local v1, "filterFlag2":Ljava/lang/String;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 45
    .local v3, "filter2":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mWifiScanReceiver:Lcom/sprd/validationtools/utils/WifiTestUtil$WifiScanReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    return-void
.end method

.method private unregisterAllReceiver()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mWifiStateChangeReceiver:Lcom/sprd/validationtools/utils/WifiTestUtil$WifiStateChangeReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51
    iget-object v2, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 52
    iput-object v1, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mWifiStateChangeReceiver:Lcom/sprd/validationtools/utils/WifiTestUtil$WifiStateChangeReceiver;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mWifiScanReceiver:Lcom/sprd/validationtools/utils/WifiTestUtil$WifiScanReceiver;

    if-eqz v0, :cond_1

    .line 57
    iget-object v2, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 58
    iput-object v1, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mWifiScanReceiver:Lcom/sprd/validationtools/utils/WifiTestUtil$WifiScanReceiver;

    .line 61
    :cond_1
    iput-object v1, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method private wifiStartDiscovery()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lcom/sprd/validationtools/utils/WifiTestUtil$StartScanThread;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/utils/WifiTestUtil$StartScanThread;-><init>(Lcom/sprd/validationtools/utils/WifiTestUtil;)V

    iput-object v0, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mStartScanThread:Lcom/sprd/validationtools/utils/WifiTestUtil$StartScanThread;

    .line 91
    invoke-virtual {v0}, Lcom/sprd/validationtools/utils/WifiTestUtil$StartScanThread;->start()V

    .line 92
    sget-object v0, Lcom/sprd/validationtools/utils/WifiTestUtil;->TAG:Ljava/lang/String;

    const-string v1, "============startDiscovery==============="

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 162
    const-string v0, ""

    .line 163
    .local v0, "wifiMac":Ljava/lang/String;
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 164
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "macAddresses":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 166
    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 168
    :cond_0
    sget-object v3, Lcom/sprd/validationtools/utils/WifiTestUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMacAddress getFactoryMacAddresses wifiMac="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-object v0
.end method

.method public getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public startTest(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    iput-object p1, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mContext:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Lcom/sprd/validationtools/utils/WifiTestUtil;->registerAllReceiver()V

    .line 71
    sget-object v0, Lcom/sprd/validationtools/utils/WifiTestUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTest mWifiManager.isWifiEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Lcom/sprd/validationtools/Safe;->wifiEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/sprd/validationtools/Safe;->wifiEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/utils/WifiTestUtil;->wifiStateChange(I)V

    .line 74
    invoke-direct {p0}, Lcom/sprd/validationtools/utils/WifiTestUtil;->wifiStartDiscovery()V

    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/utils/WifiTestUtil;->wifiStateChange(I)V

    .line 77
    iget-object v1, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1, v0}, Lcom/sprd/validationtools/Safe;->setWifiEnabled(Landroid/net/wifi/WifiManager;Z)Z

    .line 79
    :goto_0
    return-void
.end method

.method public stopTest()V
    .locals 3

    .line 83
    invoke-direct {p0}, Lcom/sprd/validationtools/utils/WifiTestUtil;->unregisterAllReceiver()V

    .line 84
    sget-object v0, Lcom/sprd/validationtools/utils/WifiTestUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopTest! mWifiManager.isWifiEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Lcom/sprd/validationtools/Safe;->wifiEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/sprd/validationtools/utils/WifiTestUtil;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sprd/validationtools/Safe;->setWifiEnabled(Landroid/net/wifi/WifiManager;Z)Z

    .line 86
    return-void
.end method

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

    .line 102
    .local p1, "wifiDeviceList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    return-void
.end method

.method public wifiDiscoveryFinished()V
    .locals 0

    .line 106
    return-void
.end method

.method public wifiStateChange(I)V
    .locals 0
    .param p1, "newState"    # I

    .line 98
    return-void
.end method
