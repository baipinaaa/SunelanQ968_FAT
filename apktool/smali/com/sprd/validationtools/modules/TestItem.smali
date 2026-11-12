.class public Lcom/sprd/validationtools/modules/TestItem;
.super Ljava/lang/Object;
.source "TestItem.java"


# instance fields
.field private labelResId:I

.field private testClassName:Ljava/lang/String;

.field private testName:Ljava/lang/String;

.field private testPackageName:Ljava/lang/String;

.field private testResult:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "testName_"    # Ljava/lang/String;
    .param p2, "testPackageName_"    # Ljava/lang/String;
    .param p3, "testClassName_"    # Ljava/lang/String;
    .param p4, "testResult_"    # I
    .param p5, "labelResId_"    # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprd/validationtools/modules/TestItem;->labelResId:I

    .line 21
    iput-object p1, p0, Lcom/sprd/validationtools/modules/TestItem;->testName:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/sprd/validationtools/modules/TestItem;->testPackageName:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/sprd/validationtools/modules/TestItem;->testClassName:Ljava/lang/String;

    .line 24
    iput p4, p0, Lcom/sprd/validationtools/modules/TestItem;->testResult:I

    .line 25
    iput p5, p0, Lcom/sprd/validationtools/modules/TestItem;->labelResId:I

    .line 26
    return-void
.end method


# virtual methods
.method public getDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    const-string v0, ""

    .line 59
    .local v0, "displayName":Ljava/lang/String;
    :try_start_0
    iget v1, p0, Lcom/sprd/validationtools/modules/TestItem;->labelResId:I

    if-lez v1, :cond_0

    .line 60
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 64
    :cond_0
    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 65
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/sprd/validationtools/modules/TestItem;->testName:Ljava/lang/String;

    .line 68
    :cond_1
    return-object v0
.end method

.method public getTestClassName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/sprd/validationtools/modules/TestItem;->testClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getTestLabelResId()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/sprd/validationtools/modules/TestItem;->labelResId:I

    return v0
.end method

.method public getTestName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/sprd/validationtools/modules/TestItem;->testName:Ljava/lang/String;

    return-object v0
.end method

.method public getTestPackageName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/sprd/validationtools/modules/TestItem;->testPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTestResult()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/sprd/validationtools/modules/TestItem;->testResult:I

    return v0
.end method

.method public setTestLabelResId(I)V
    .locals 0
    .param p1, "labelRes"    # I

    .line 53
    iput p1, p0, Lcom/sprd/validationtools/modules/TestItem;->labelResId:I

    .line 54
    return-void
.end method

.method public setTestResult(I)V
    .locals 0
    .param p1, "result"    # I

    .line 45
    iput p1, p0, Lcom/sprd/validationtools/modules/TestItem;->testResult:I

    .line 46
    return-void
.end method
