.class public Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "WifiTestActivity.java"


# static fields
.field private static final BAND_5_GHZ_END_FREQ_MHZ:I = 0x16e9

.field private static final BAND_5_GHZ_START_FREQ_MHZ:I = 0x1428

.field private static final TAG:Ljava/lang/String; = "WifiTestActivity"

.field private static final TIMEOUT:I = 0x4e20


# instance fields
.field private mFindFlag:Z

.field public mHandler:Landroid/os/Handler;

.field private mIs5GHzBandSupported:Z

.field private mR:Ljava/lang/Runnable;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private tvWifiAddr:Landroid/widget/TextView;

.field private tvWifiDeviceList:Landroid/widget/TextView;

.field private tvWifiState:Landroid/widget/TextView;

.field private wifiTestUtil:Lcom/sprd/validationtools/utils/WifiTestUtil;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFindFlag(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mFindFlag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIs5GHzBandSupported(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mIs5GHzBandSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmR(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mR:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettvWifiDeviceList(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->tvWifiDeviceList:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettvWifiState(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->tvWifiState:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwifiTestUtil(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Lcom/sprd/validationtools/utils/WifiTestUtil;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->wifiTestUtil:Lcom/sprd/validationtools/utils/WifiTestUtil;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFindFlag(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mFindFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIs5GHzBandSupported(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mIs5GHzBandSupported:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mis5GHz(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->is5GHz(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->tvWifiAddr:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->tvWifiState:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->tvWifiDeviceList:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->wifiTestUtil:Lcom/sprd/validationtools/utils/WifiTestUtil;

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mFindFlag:Z

    .line 38
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mHandler:Landroid/os/Handler;

    .line 39
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 40
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mIs5GHzBandSupported:Z

    .line 44
    new-instance v0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mR:Ljava/lang/Runnable;

    return-void
.end method

.method private is5GHz(I)Z
    .locals 1
    .param p1, "freqMhz"    # I

    .line 196
    const/16 v0, 0x1428

    if-lt p1, v0, :cond_0

    const/16 v0, 0x16e9

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mR:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->wifiTestUtil:Lcom/sprd/validationtools/utils/WifiTestUtil;

    invoke-virtual {v0}, Lcom/sprd/validationtools/utils/WifiTestUtil;->stopTest()V

    .line 77
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onClick(Landroid/view/View;)V

    .line 78
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 88
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->removeButton()V

    .line 90
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sprd/validationtools/BaseActivity;->createButton(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 93
    const v0, 0x7f060042

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 95
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 96
    const v0, 0x7f0901ac

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->setTitle(I)V

    .line 97
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 98
    new-instance v0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, p0, v1}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;-><init>(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->wifiTestUtil:Lcom/sprd/validationtools/utils/WifiTestUtil;

    .line 173
    const v0, 0x7f050100

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->tvWifiAddr:Landroid/widget/TextView;

    .line 174
    const v0, 0x7f050103

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->tvWifiState:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f0500da

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->tvWifiDeviceList:Landroid/widget/TextView;

    .line 177
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->tvWifiAddr:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->wifiTestUtil:Lcom/sprd/validationtools/utils/WifiTestUtil;

    invoke-virtual {v1}, Lcom/sprd/validationtools/utils/WifiTestUtil;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method protected onDestroy()V
    .locals 0

    .line 82
    invoke-static {}, Lcom/sprd/validationtools/utils/WcndUtils;->dumpCPLog()V

    .line 83
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 84
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mR:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 191
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->wifiTestUtil:Lcom/sprd/validationtools/utils/WifiTestUtil;

    invoke-virtual {v0}, Lcom/sprd/validationtools/utils/WifiTestUtil;->stopTest()V

    .line 192
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 193
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 182
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 183
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mR:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->wifiTestUtil:Lcom/sprd/validationtools/utils/WifiTestUtil;

    invoke-virtual {v0, p0}, Lcom/sprd/validationtools/utils/WifiTestUtil;->startTest(Landroid/content/Context;)V

    .line 186
    return-void
.end method

.method public testFinish()V
    .locals 2

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->storeRusult(Z)V

    .line 65
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mR:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->wifiTestUtil:Lcom/sprd/validationtools/utils/WifiTestUtil;

    invoke-virtual {v0}, Lcom/sprd/validationtools/utils/WifiTestUtil;->stopTest()V

    .line 67
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->finish()V

    .line 68
    const v0, 0x7f090183

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 71
    return-void
.end method
