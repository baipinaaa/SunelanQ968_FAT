.class public Lcom/sprd/validationtools/background/BackgroundSimTest;
.super Ljava/lang/Object;
.source "BackgroundSimTest.java"

# interfaces
.implements Lcom/sprd/validationtools/background/BackgroundTest;


# static fields
.field private static final TAG:Ljava/lang/String; = "BackgroundSimTest"

.field private static final TEST_CLASS_NAME:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private testResult:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sprd/validationtools/background/BackgroundSimTest;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/background/BackgroundSimTest;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputtestResult(Lcom/sprd/validationtools/background/BackgroundSimTest;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/background/BackgroundSimTest;->testResult:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprd/validationtools/background/BackgroundSimTest;->TEST_CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprd/validationtools/background/BackgroundSimTest;->testResult:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/background/BackgroundSimTest;->mContext:Landroid/content/Context;

    .line 23
    iput-object p1, p0, Lcom/sprd/validationtools/background/BackgroundSimTest;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/sprd/validationtools/background/BackgroundSimTest;->testResult:I

    return v0
.end method

.method public getResultStr()Ljava/lang/String;
    .locals 3

    .line 70
    const-string v0, "Sim:"

    .line 71
    .local v0, "btResult":Ljava/lang/String;
    iget v1, p0, Lcom/sprd/validationtools/background/BackgroundSimTest;->testResult:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 72
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

    .line 74
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
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundSimTest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprd/validationtools/modules/UnitTestItemList;->getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItemList;

    move-result-object v0

    sget-object v1, Lcom/sprd/validationtools/background/BackgroundSimTest;->TEST_CLASS_NAME:Ljava/lang/String;

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
    .locals 1
    :try_start_0

    .line 28
    new-instance v0, Lcom/sprd/validationtools/background/BackgroundSimTest$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/background/BackgroundSimTest$1;-><init>(Lcom/sprd/validationtools/background/BackgroundSimTest;)V

    .line 56
    invoke-virtual {v0}, Lcom/sprd/validationtools/background/BackgroundSimTest$1;->start()V

    .line 57
    

    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method

.method public stopTest()V
    .locals 0

    .line 61
    return-void
.end method
