.class Lcom/sprd/validationtools/background/BackgroundWifiTest$1;
.super Lcom/sprd/validationtools/utils/WifiTestUtil;
.source "BackgroundWifiTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/background/BackgroundWifiTest;->startTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/background/BackgroundWifiTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/background/BackgroundWifiTest;Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/background/BackgroundWifiTest;
    .param p2, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .line 35
    iput-object p1, p0, Lcom/sprd/validationtools/background/BackgroundWifiTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundWifiTest;

    invoke-direct {p0, p2}, Lcom/sprd/validationtools/utils/WifiTestUtil;-><init>(Landroid/net/wifi/WifiManager;)V

    return-void
.end method


# virtual methods
.method public wifiDeviceListChange(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "wifiDeviceList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundWifiTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundWifiTest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sprd/validationtools/background/BackgroundWifiTest;->-$$Nest$fputtestResult(Lcom/sprd/validationtools/background/BackgroundWifiTest;I)V

    .line 40
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundWifiTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundWifiTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/background/BackgroundWifiTest;->stopTest()V

    .line 42
    :cond_0
    return-void
.end method
