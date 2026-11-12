.class Lcom/sprd/validationtools/utils/BtTestUtil$BluetoothDiscoveryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BtTestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/utils/BtTestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothDiscoveryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/utils/BtTestUtil;


# direct methods
.method private constructor <init>(Lcom/sprd/validationtools/utils/BtTestUtil;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/sprd/validationtools/utils/BtTestUtil$BluetoothDiscoveryReceiver;->this$0:Lcom/sprd/validationtools/utils/BtTestUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprd/validationtools/utils/BtTestUtil;Lcom/sprd/validationtools/utils/BtTestUtil$BluetoothDiscoveryReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/utils/BtTestUtil$BluetoothDiscoveryReceiver;-><init>(Lcom/sprd/validationtools/utils/BtTestUtil;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 159
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-static {}, Lcom/sprd/validationtools/utils/BtTestUtil;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "found bluetooth device"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 164
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    .line 166
    iget-object v2, p0, Lcom/sprd/validationtools/utils/BtTestUtil$BluetoothDiscoveryReceiver;->this$0:Lcom/sprd/validationtools/utils/BtTestUtil;

    invoke-virtual {v2, v1}, Lcom/sprd/validationtools/utils/BtTestUtil;->btDeviceListAdd(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-static {}, Lcom/sprd/validationtools/utils/BtTestUtil;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "not find any device"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    invoke-static {}, Lcom/sprd/validationtools/utils/BtTestUtil;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "=============discovery finished !"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/sprd/validationtools/utils/BtTestUtil$BluetoothDiscoveryReceiver;->this$0:Lcom/sprd/validationtools/utils/BtTestUtil;

    invoke-virtual {v1}, Lcom/sprd/validationtools/utils/BtTestUtil;->btDiscoveryFinished()V

    goto :goto_1

    .line 171
    :cond_2
    :goto_0
    nop

    .line 175
    :goto_1
    return-void
.end method
