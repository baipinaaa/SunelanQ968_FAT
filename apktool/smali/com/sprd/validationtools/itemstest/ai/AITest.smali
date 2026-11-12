.class public Lcom/sprd/validationtools/itemstest/ai/AITest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "AITest.java"


# static fields
.field private static final AI_IP_PROPERTY:Ljava/lang/String; = "persist.vendor.npu.version"

.field private static final AI_TEST_FAIL:I = 0x4

.field private static final AI_TEST_FINISH:I = 0x2

.field private static final AI_TEST_RUNNING:I = 0x1

.field private static final AI_TEST_SUCCESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AITest"


# instance fields
.field private mAiIpValue:I

.field private mHandler:Landroid/os/Handler;

.field private mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

.field private mRunnable:Ljava/lang/Runnable;

.field private mStateTextView:Landroid/widget/TextView;

.field private mTestSuccess:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/ai/AITest;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/ai/AITest;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunnable(Lcom/sprd/validationtools/itemstest/ai/AITest;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/ai/AITest;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateTextView(Lcom/sprd/validationtools/itemstest/ai/AITest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/ai/AITest;->mStateTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmTestSuccess(Lcom/sprd/validationtools/itemstest/ai/AITest;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/ai/AITest;->mTestSuccess:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/ai/AITest;->mStateTextView:Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/ai/AITest;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/ai/AITest;->mTestSuccess:Z

    .line 33
    iput v0, p0, Lcom/sprd/validationtools/itemstest/ai/AITest;->mAiIpValue:I

    .line 35
    new-instance v0, Lcom/sprd/validationtools/itemstest/ai/AITest$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/ai/AITest$1;-><init>(Lcom/sprd/validationtools/itemstest/ai/AITest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/ai/AITest;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/sprd/validationtools/itemstest/ai/AITest$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/ai/AITest$2;-><init>(Lcom/sprd/validationtools/itemstest/ai/AITest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/ai/AITest;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 138
    const-string v0, "persist.vendor.npu.version"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "ipFlag":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AITest ipFlag=:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AITest"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method


# virtual methods
.method protected executeAICmd()I
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/ai/AITest;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    iget v1, p0, Lcom/sprd/validationtools/itemstest/ai/AITest;->mAiIpValue:I

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/PhaseCheckParse;->executeAITest(I)I

    move-result v0

    .line 133
    .local v0, "result":I
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 72
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const-string v0, "AITest"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/high16 v1, 0x7f060000

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/ai/AITest;->setContentView(I)V

    .line 75
    const v1, 0x7f050094

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/ai/AITest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/ai/AITest;->mStateTextView:Landroid/widget/TextView;

    .line 79
    :try_start_0
    const-string v1, "persist.vendor.npu.version"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sprd/validationtools/itemstest/ai/AITest;->mAiIpValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAiIpValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sprd/validationtools/itemstest/ai/AITest;->mAiIpValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/ai/AITest;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    .line 85
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method protected onPause()V
    .locals 2

    .line 103
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 104
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/ai/AITest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/ai/AITest;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 89
    const-string v0, "AITest"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/ai/AITest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprd/validationtools/itemstest/ai/AITest$3;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/ai/AITest$3;-><init>(Lcom/sprd/validationtools/itemstest/ai/AITest;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 99
    return-void
.end method

.method protected startAiTest()V
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sprd/validationtools/itemstest/ai/AITest$4;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/ai/AITest$4;-><init>(Lcom/sprd/validationtools/itemstest/ai/AITest;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 128
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 129
    return-void
.end method
