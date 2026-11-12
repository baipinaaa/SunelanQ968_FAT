.class public Lcom/sprd/validationtools/background/BackgroundSdTest;
.super Ljava/lang/Object;
.source "BackgroundSdTest.java"

# interfaces
.implements Lcom/sprd/validationtools/background/BackgroundTest;


# static fields
.field private static final PHONE_STORAGE_PATH:Ljava/lang/String; = "/data/data/com.sprd.validationtools/"

.field private static final SPRD_SD_TESTFILE:Ljava/lang/String; = "sprdtest.txt"

.field private static final TEST_CLASS_NAME:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mounted:[B

.field private testResult:I

.field private thread:Ljava/lang/Thread;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sprd/validationtools/background/BackgroundSdTest;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/background/BackgroundSdTest;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmounted(Lcom/sprd/validationtools/background/BackgroundSdTest;)[B
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/background/BackgroundSdTest;->mounted:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputtestResult(Lcom/sprd/validationtools/background/BackgroundSdTest;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/background/BackgroundSdTest;->testResult:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprd/validationtools/background/BackgroundSdTest;->TEST_CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprd/validationtools/background/BackgroundSdTest;->testResult:I

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sprd/validationtools/background/BackgroundSdTest;->mounted:[B

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/background/BackgroundSdTest;->thread:Ljava/lang/Thread;

    .line 26
    iput-object v0, p0, Lcom/sprd/validationtools/background/BackgroundSdTest;->mContext:Landroid/content/Context;

    .line 31
    iput-object p1, p0, Lcom/sprd/validationtools/background/BackgroundSdTest;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/sprd/validationtools/background/BackgroundSdTest;->testResult:I

    return v0
.end method

.method public getResultStr()Ljava/lang/String;
    .locals 3

    .line 133
    const-string v0, "SD:"

    .line 134
    .local v0, "btResult":Ljava/lang/String;
    iget v1, p0, Lcom/sprd/validationtools/background/BackgroundSdTest;->testResult:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 135
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

    .line 137
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

    .line 140
    :goto_0
    return-object v0
.end method

.method public getTestItem(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItem;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 150
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundSdTest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprd/validationtools/modules/UnitTestItemList;->getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItemList;

    move-result-object v0

    sget-object v1, Lcom/sprd/validationtools/background/BackgroundSdTest;->TEST_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/modules/TestItemList;->getTestItemByClassName(Ljava/lang/String;)Lcom/sprd/validationtools/modules/TestItem;

    move-result-object v0

    return-object v0
.end method

.method public getTestItemIdx()I
    .locals 1

    .line 145
    const/4 v0, -0x1

    return v0
.end method

.method public startTest()V
    .locals 1
    :try_start_0

    .line 36
    new-instance v0, Lcom/sprd/validationtools/background/BackgroundSdTest$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/background/BackgroundSdTest$1;-><init>(Lcom/sprd/validationtools/background/BackgroundSdTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/background/BackgroundSdTest;->thread:Ljava/lang/Thread;

    .line 119
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 120
    

    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method

.method public stopTest()V
    .locals 0

    .line 124
    return-void
.end method
