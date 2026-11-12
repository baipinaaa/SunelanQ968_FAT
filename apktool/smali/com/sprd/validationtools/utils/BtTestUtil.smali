.class public Lcom/sprd/validationtools/utils/BtTestUtil;
.super Ljava/lang/Object;
.source "BtTestUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/utils/BtTestUtil$BluetoothDiscoveryReceiver;,
        Lcom/sprd/validationtools/utils/BtTestUtil$BlueToothStateReceiver;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private btDiscoveryReceiver:Lcom/sprd/validationtools/utils/BtTestUtil$BluetoothDiscoveryReceiver;

.field private btStateReceiver:Lcom/sprd/validationtools/utils/BtTestUtil$BlueToothStateReceiver;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBluetoothAdapter(Lcom/sprd/validationtools/utils/BtTestUtil;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbtStartDiscovery(Lcom/sprd/validationtools/utils/BtTestUtil;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/utils/BtTestUtil;->btStartDiscovery()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sprd/validationtools/utils/BtTestUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, "BtTestUtil"

    sput-object v0, Lcom/sprd/validationtools/utils/BtTestUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 19
    iput-object v0, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->btDiscoveryReceiver:Lcom/sprd/validationtools/utils/BtTestUtil$BluetoothDiscoveryReceiver;

    .line 20
    iput-object v0, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->btStateReceiver:Lcom/sprd/validationtools/utils/BtTestUtil$BlueToothStateReceiver;

    .line 21
    iput-object v0, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->mContext:Landroid/content/Context;

    .line 24
    sget-object v0, Lcom/sprd/validationtools/utils/BtTestUtil;->TAG:Ljava/lang/String;

    const-string v1, "=btt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 26
    return-void
.end method

.method private btStartDiscovery()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 91
    sget-object v0, Lcom/sprd/validationtools/utils/BtTestUtil;->TAG:Ljava/lang/String;

    const-string v1, "btPageScan mBluetoothAdapter == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 94
    :cond_0
    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 96
    sget-object v0, Lcom/sprd/validationtools/utils/BtTestUtil;->TAG:Ljava/lang/String;

    const-string v1, "============startDiscovery==============="

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    return-void
.end method

.method private registerAllReceiver()V
    .locals 4

    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 31
    .local v0, "intent":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    new-instance v1, Lcom/sprd/validationtools/utils/BtTestUtil$BluetoothDiscoveryReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sprd/validationtools/utils/BtTestUtil$BluetoothDiscoveryReceiver;-><init>(Lcom/sprd/validationtools/utils/BtTestUtil;Lcom/sprd/validationtools/utils/BtTestUtil$BluetoothDiscoveryReceiver-IA;)V

    iput-object v1, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->btDiscoveryReceiver:Lcom/sprd/validationtools/utils/BtTestUtil$BluetoothDiscoveryReceiver;

    .line 34
    iget-object v3, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 36
    new-instance v1, Lcom/sprd/validationtools/utils/BtTestUtil$BlueToothStateReceiver;

    invoke-direct {v1, p0, v2}, Lcom/sprd/validationtools/utils/BtTestUtil$BlueToothStateReceiver;-><init>(Lcom/sprd/validationtools/utils/BtTestUtil;Lcom/sprd/validationtools/utils/BtTestUtil$BlueToothStateReceiver-IA;)V

    iput-object v1, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->btStateReceiver:Lcom/sprd/validationtools/utils/BtTestUtil$BlueToothStateReceiver;

    .line 37
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 38
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->btStateReceiver:Lcom/sprd/validationtools/utils/BtTestUtil$BlueToothStateReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    return-void
.end method

.method private unregisterAllReceiver()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->btDiscoveryReceiver:Lcom/sprd/validationtools/utils/BtTestUtil$BluetoothDiscoveryReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 43
    iget-object v2, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 44
    iput-object v1, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->btDiscoveryReceiver:Lcom/sprd/validationtools/utils/BtTestUtil$BluetoothDiscoveryReceiver;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->btStateReceiver:Lcom/sprd/validationtools/utils/BtTestUtil$BlueToothStateReceiver;

    if-eqz v0, :cond_1

    .line 47
    iget-object v2, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 48
    iput-object v1, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->btStateReceiver:Lcom/sprd/validationtools/utils/BtTestUtil$BlueToothStateReceiver;

    .line 50
    :cond_1
    iput-object v1, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method


# virtual methods
.method public btDeviceListAdd(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "newDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 120
    return-void
.end method

.method public btDiscoveryFinished()V
    .locals 0

    .line 124
    return-void
.end method

.method public btPageScan()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lcom/sprd/validationtools/utils/BtTestUtil;->TAG:Ljava/lang/String;

    const-string v1, "btPageScan mBluetoothAdapter == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    .line 111
    :cond_0
    if-eqz v0, :cond_1

    .line 112
    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    .line 113
    sget-object v0, Lcom/sprd/validationtools/utils/BtTestUtil;->TAG:Ljava/lang/String;

    const-string v1, "============btPageScan SCAN_MODE_CONNECTABLE_DISCOVERABLE==============="

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    return-void
.end method

.method public btStateChange(I)V
    .locals 0
    .param p1, "newState"    # I

    .line 102
    return-void
.end method

.method public getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public startTest(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 60
    sget-object v0, Lcom/sprd/validationtools/utils/BtTestUtil;->TAG:Ljava/lang/String;

    const-string v1, "startTest mBluetoothAdapter == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->mContext:Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Lcom/sprd/validationtools/utils/BtTestUtil;->registerAllReceiver()V

    .line 65
    sget-object v0, Lcom/sprd/validationtools/utils/BtTestUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTest mBluetoothAdapter isEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/utils/BtTestUtil;->btStateChange(I)V

    .line 68
    invoke-virtual {p0}, Lcom/sprd/validationtools/utils/BtTestUtil;->btPageScan()V

    .line 69
    invoke-direct {p0}, Lcom/sprd/validationtools/utils/BtTestUtil;->btStartDiscovery()V

    goto :goto_0

    .line 71
    :cond_1
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/utils/BtTestUtil;->btStateChange(I)V

    .line 72
    iget-object v0, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 74
    :goto_0
    return-void
.end method

.method public stopTest()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 79
    sget-object v0, Lcom/sprd/validationtools/utils/BtTestUtil;->TAG:Ljava/lang/String;

    const-string v1, "stopTest mBluetoothAdapter == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void

    .line 82
    :cond_0
    sget-object v0, Lcom/sprd/validationtools/utils/BtTestUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopTest mBluetoothAdapter isEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 84
    iget-object v0, p0, Lcom/sprd/validationtools/utils/BtTestUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 85
    invoke-direct {p0}, Lcom/sprd/validationtools/utils/BtTestUtil;->unregisterAllReceiver()V

    .line 86
    return-void
.end method
