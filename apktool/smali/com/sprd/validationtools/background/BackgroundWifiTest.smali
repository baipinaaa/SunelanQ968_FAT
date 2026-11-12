.class public Lcom/sprd/validationtools/background/BackgroundWifiTest;
.super Ljava/lang/Object;
.source "BackgroundWifiTest.java"

# interfaces
.implements Lcom/sprd/validationtools/background/BackgroundTest;


# static fields
.field private static final TAG:Ljava/lang/String; = "BackgroundWifiTest"

.field private static final TEST_CLASS_NAME:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private testResult:I

.field private wifiTestUtil:Lcom/sprd/validationtools/utils/WifiTestUtil;


# direct methods
.method static bridge synthetic -$$Nest$fputtestResult(Lcom/sprd/validationtools/background/BackgroundWifiTest;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/background/BackgroundWifiTest;->testResult:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprd/validationtools/background/BackgroundWifiTest;->TEST_CLASS_NAME:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/background/BackgroundWifiTest;->wifiTestUtil:Lcom/sprd/validationtools/utils/WifiTestUtil;

    .line 22
    const/4 v1, -0x1

    iput v1, p0, Lcom/sprd/validationtools/background/BackgroundWifiTest;->testResult:I

    .line 23
    iput-object v0, p0, Lcom/sprd/validationtools/background/BackgroundWifiTest;->mContext:Landroid/content/Context;

    .line 29
    iput-object p1, p0, Lcom/sprd/validationtools/background/BackgroundWifiTest;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/sprd/validationtools/background/BackgroundWifiTest;->testResult:I

    return v0
.end method

.method public getResultStr()Ljava/lang/String;
    .locals 3

    .line 61
    const-string v0, "Wifi:"

    .line 62
    .local v0, "btResult":Ljava/lang/String;
    iget v1, p0, Lcom/sprd/validationtools/background/BackgroundWifiTest;->testResult:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PASS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0
.end method

.method public getTestItem(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItem;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundWifiTest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprd/validationtools/modules/UnitTestItemList;->getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItemList;

    move-result-object v0

    sget-object v1, Lcom/sprd/validationtools/background/BackgroundWifiTest;->TEST_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/modules/TestItemList;->getTestItemByClassName(Ljava/lang/String;)Lcom/sprd/validationtools/modules/TestItem;

    move-result-object v0

    return-object v0
.end method

.method public getTestItemIdx()I
    .locals 1

    .line 73
    const/4 v0, -0x1

    return v0
.end method

.method public startTest()V
    .locals 3
    :try_start_0

    .line 34
    new-instance v0, Lcom/sprd/validationtools/background/BackgroundWifiTest$1;

    iget-object v1, p0, Lcom/sprd/validationtools/background/BackgroundWifiTest;->mContext:Landroid/content/Context;

    .line 35
    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-direct {v0, p0, v1}, Lcom/sprd/validationtools/background/BackgroundWifiTest$1;-><init>(Lcom/sprd/validationtools/background/BackgroundWifiTest;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/sprd/validationtools/background/BackgroundWifiTest;->wifiTestUtil:Lcom/sprd/validationtools/utils/WifiTestUtil;

    .line 44
    const-string v0, "BackgroundWifiTest"

    const-string v1, "startTest begin!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundWifiTest;->wifiTestUtil:Lcom/sprd/validationtools/utils/WifiTestUtil;

    iget-object v1, p0, Lcom/sprd/validationtools/background/BackgroundWifiTest;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/utils/WifiTestUtil;->startTest(Landroid/content/Context;)V

    .line 46
    

    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method

.method public stopTest()V
    .locals 2

    .line 50
    const-string v0, "BackgroundWifiTest"

    const-string v1, "stopTest!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundWifiTest;->wifiTestUtil:Lcom/sprd/validationtools/utils/WifiTestUtil;

    invoke-virtual {v0}, Lcom/sprd/validationtools/utils/WifiTestUtil;->stopTest()V

    .line 52
    return-void
.end method
