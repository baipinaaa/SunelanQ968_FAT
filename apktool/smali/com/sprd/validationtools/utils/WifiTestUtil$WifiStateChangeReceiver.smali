.class Lcom/sprd/validationtools/utils/WifiTestUtil$WifiStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiTestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/utils/WifiTestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/utils/WifiTestUtil;


# direct methods
.method private constructor <init>(Lcom/sprd/validationtools/utils/WifiTestUtil;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/sprd/validationtools/utils/WifiTestUtil$WifiStateChangeReceiver;->this$0:Lcom/sprd/validationtools/utils/WifiTestUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprd/validationtools/utils/WifiTestUtil;Lcom/sprd/validationtools/utils/WifiTestUtil$WifiStateChangeReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/utils/WifiTestUtil$WifiStateChangeReceiver;-><init>(Lcom/sprd/validationtools/utils/WifiTestUtil;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 111
    iget-object v0, p0, Lcom/sprd/validationtools/utils/WifiTestUtil$WifiStateChangeReceiver;->this$0:Lcom/sprd/validationtools/utils/WifiTestUtil;

    invoke-static {v0}, Lcom/sprd/validationtools/utils/WifiTestUtil;->-$$Nest$fgetmWifiManager(Lcom/sprd/validationtools/utils/WifiTestUtil;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 112
    .local v0, "newState":I
    invoke-static {}, Lcom/sprd/validationtools/utils/WifiTestUtil;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    iget-object v1, p0, Lcom/sprd/validationtools/utils/WifiTestUtil$WifiStateChangeReceiver;->this$0:Lcom/sprd/validationtools/utils/WifiTestUtil;

    invoke-static {v1}, Lcom/sprd/validationtools/utils/WifiTestUtil;->-$$Nest$mwifiStartDiscovery(Lcom/sprd/validationtools/utils/WifiTestUtil;)V

    .line 116
    nop

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/sprd/validationtools/utils/WifiTestUtil$WifiStateChangeReceiver;->this$0:Lcom/sprd/validationtools/utils/WifiTestUtil;

    invoke-virtual {v1, v0}, Lcom/sprd/validationtools/utils/WifiTestUtil;->wifiStateChange(I)V

    .line 127
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
