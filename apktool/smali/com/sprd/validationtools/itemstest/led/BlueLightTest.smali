.class public Lcom/sprd/validationtools/itemstest/led/BlueLightTest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "BlueLightTest.java"


# static fields
.field private static final CHECK_LIGHT:I = 0x1

.field private static final SET_BACKGROUND:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BlueLightTest"


# instance fields
.field private mContent:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mResult:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/led/BlueLightTest;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckLight(Lcom/sprd/validationtools/itemstest/led/BlueLightTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->checkLight()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetBackground(Lcom/sprd/validationtools/itemstest/led/BlueLightTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->setBackground()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->mResult:Z

    .line 51
    new-instance v0, Lcom/sprd/validationtools/itemstest/led/BlueLightTest$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/led/BlueLightTest$1;-><init>(Lcom/sprd/validationtools/itemstest/led/BlueLightTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkLight()V
    .locals 3

    .line 69
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sprd/validationtools/PhaseCheckParse;->writeLedlightSwitch(II)Z

    .line 70
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->mResult:Z

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->storeRusult(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->finish()V

    .line 72
    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 83
    sget-boolean v0, Lcom/sprd/validationtools/Const;->IS_SUPPORT_LED_TEST:Z

    if-nez v0, :cond_0

    const-string v0, "/sys/class/leds/sc27xx:blue/brightness"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->fileIsExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private setBackground()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->mContent:Landroid/widget/TextView;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 45
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->mContent:Landroid/widget/TextView;

    const v1, 0x7f09016b

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sprd/validationtools/PhaseCheckParse;->writeLedlightSwitch(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->mResult:Z

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTestWork BlueLightTest res="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->mResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlueLightTest"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->mContent:Landroid/widget/TextView;

    .line 36
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->setBackground()V

    .line 37
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->mContent:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->setContentView(Landroid/view/View;)V

    .line 38
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->mContent:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 39
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->mContent:Landroid/widget/TextView;

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 40
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/led/BlueLightTest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 41
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method protected onDestroy()V
    .locals 3

    .line 77
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sprd/validationtools/PhaseCheckParse;->writeLedlightSwitch(II)Z

    .line 78
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 79
    return-void
.end method
