.class public Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "SystemVersionTest.java"


# static fields
.field private static final CHECK_INFO:I = 0x0

.field private static final PROD_VERSION_FILE:Ljava/lang/String; = "/proc/version"

.field private static final TAG:Ljava/lang/String; = "SystemVersionTest"


# instance fields
.field private mAndroidVersion:Ljava/lang/String;

.field private mAndroidVersionTV:Landroid/widget/TextView;

.field private mBuildNumber:Ljava/lang/String;

.field private mDeviceSn:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsAutoMMI:Z

.field private mLinuxVersionTV:Landroid/widget/TextView;

.field private mPhaseCheck:Ljava/lang/String;

.field private mPlatformSnTV:Landroid/widget/TextView;

.field private mPlatformVersionTV:Landroid/widget/TextView;

.field private mPropVersion:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mcheckSystemInfoResult(Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->checkSystemInfoResult()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mAndroidVersion:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mPropVersion:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mBuildNumber:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mDeviceSn:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mPhaseCheck:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mIsAutoMMI:Z

    .line 38
    new-instance v0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest$1;-><init>(Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkSystemInfoResult()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mPhaseCheck:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mAndroidVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mPropVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mBuildNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mDeviceSn:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->storeRusult(Z)V

    goto :goto_0

    .line 96
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->storeRusult(Z)V

    .line 98
    :goto_0
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->finish()V

    .line 99
    return-void
.end method

.method private getPhaseCheck()Ljava/lang/String;
    .locals 2

    .line 72
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v0

    .line 73
    .local v0, "parse":Lcom/sprd/validationtools/PhaseCheckParse;
    invoke-virtual {v0}, Lcom/sprd/validationtools/PhaseCheckParse;->getPhaseCheck()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPropVersion()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "/proc/version"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSn()Ljava/lang/String;
    .locals 2

    .line 67
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v0

    .line 68
    .local v0, "parse":Lcom/sprd/validationtools/PhaseCheckParse;
    invoke-virtual {v0}, Lcom/sprd/validationtools/PhaseCheckParse;->getSn()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private showSystemInfo()V
    .locals 4

    .line 77
    const v0, 0x7f050018

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mAndroidVersionTV:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f050066

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mLinuxVersionTV:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f050079

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mPlatformVersionTV:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f050078

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mPlatformSnTV:Landroid/widget/TextView;

    .line 81
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE_OR_PREVIEW_DISPLAY:Ljava/lang/String;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mAndroidVersion:Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->getPropVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mPropVersion:Ljava/lang/String;

    .line 83
    const-string v0, "ro.build.display.id"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mBuildNumber:Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->getSn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mDeviceSn:Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->getPhaseCheck()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mPhaseCheck:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mAndroidVersionTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09000f

    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mAndroidVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mLinuxVersionTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090110

    invoke-virtual {p0, v3}, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mPropVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mPlatformVersionTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f09002b

    invoke-virtual {p0, v3}, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mBuildNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mPlatformSnTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090062

    invoke-virtual {p0, v3}, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mDeviceSn:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 53
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f060041

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->setContentView(I)V

    .line 55
    const v0, 0x7f09019b

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->setTitle(I)V

    .line 56
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->showSystemInfo()V

    .line 57
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mIsAutoMMI:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 60
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/SystemVersionTest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 104
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 105
    return-void
.end method
