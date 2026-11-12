.class Lcom/sprd/validationtools/utils/WifiTestUtil$StartScanThread;
.super Ljava/lang/Thread;
.source "WifiTestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/utils/WifiTestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartScanThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/utils/WifiTestUtil;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/utils/WifiTestUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/utils/WifiTestUtil;

    .line 148
    iput-object p1, p0, Lcom/sprd/validationtools/utils/WifiTestUtil$StartScanThread;->this$0:Lcom/sprd/validationtools/utils/WifiTestUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 153
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 154
    iget-object v0, p0, Lcom/sprd/validationtools/utils/WifiTestUtil$StartScanThread;->this$0:Lcom/sprd/validationtools/utils/WifiTestUtil;

    invoke-static {v0}, Lcom/sprd/validationtools/utils/WifiTestUtil;->-$$Nest$fgetmWifiManager(Lcom/sprd/validationtools/utils/WifiTestUtil;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 158
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method
