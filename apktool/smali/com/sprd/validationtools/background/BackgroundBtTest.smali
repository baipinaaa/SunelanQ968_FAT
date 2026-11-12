.class public Lcom/sprd/validationtools/background/BackgroundBtTest;
.super Ljava/lang/Object;
.source "BackgroundBtTest.java"

# interfaces
.implements Lcom/sprd/validationtools/background/BackgroundTest;


# static fields
.field private static final TAG:Ljava/lang/String; = "BackgroundBtTest"

.field private static final TEST_CLASS_NAME:Ljava/lang/String;


# instance fields
.field private mBtTestUtil:Lcom/sprd/validationtools/utils/BtTestUtil;

.field private mContext:Landroid/content/Context;

.field private testResult:I


# direct methods
.method static bridge synthetic -$$Nest$fputtestResult(Lcom/sprd/validationtools/background/BackgroundBtTest;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/background/BackgroundBtTest;->testResult:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprd/validationtools/background/BackgroundBtTest;->TEST_CLASS_NAME:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/background/BackgroundBtTest;->mBtTestUtil:Lcom/sprd/validationtools/utils/BtTestUtil;

    .line 19
    const/4 v1, -0x1

    iput v1, p0, Lcom/sprd/validationtools/background/BackgroundBtTest;->testResult:I

    .line 20
    iput-object v0, p0, Lcom/sprd/validationtools/background/BackgroundBtTest;->mContext:Landroid/content/Context;

    .line 26
    iput-object p1, p0, Lcom/sprd/validationtools/background/BackgroundBtTest;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/sprd/validationtools/background/BackgroundBtTest;->testResult:I

    return v0
.end method

.method public getResultStr()Ljava/lang/String;
    .locals 3

    .line 69
    const-string v0, "BlueTooth:"

    .line 70
    .local v0, "btResult":Ljava/lang/String;
    iget v1, p0, Lcom/sprd/validationtools/background/BackgroundBtTest;->testResult:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 71
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

    .line 73
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

    .line 76
    :goto_0
    return-object v0
.end method

.method public getTestItem(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItem;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundBtTest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprd/validationtools/modules/UnitTestItemList;->getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItemList;

    move-result-object v0

    sget-object v1, Lcom/sprd/validationtools/background/BackgroundBtTest;->TEST_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/modules/TestItemList;->getTestItemByClassName(Ljava/lang/String;)Lcom/sprd/validationtools/modules/TestItem;

    move-result-object v0

    return-object v0
.end method

.method public getTestItemIdx()I
    .locals 1

    .line 81
    const/4 v0, -0x1

    return v0
.end method

.method public startTest()V
    .locals 2

    .line 31
    new-instance v0, Lcom/sprd/validationtools/background/BackgroundBtTest$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/background/BackgroundBtTest$1;-><init>(Lcom/sprd/validationtools/background/BackgroundBtTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/background/BackgroundBtTest;->mBtTestUtil:Lcom/sprd/validationtools/utils/BtTestUtil;

    .line 52
    const-string v0, "BackgroundBtTest"

    const-string v1, "startTest begin!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundBtTest;->mBtTestUtil:Lcom/sprd/validationtools/utils/BtTestUtil;

    iget-object v1, p0, Lcom/sprd/validationtools/background/BackgroundBtTest;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/utils/BtTestUtil;->startTest(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public stopTest()V
    .locals 2

    .line 58
    const-string v0, "BackgroundBtTest"

    const-string v1, "stopTest!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundBtTest;->mBtTestUtil:Lcom/sprd/validationtools/utils/BtTestUtil;

    invoke-virtual {v0}, Lcom/sprd/validationtools/utils/BtTestUtil;->stopTest()V

    .line 60
    return-void
.end method
