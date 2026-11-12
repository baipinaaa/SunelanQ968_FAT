.class public Lcom/sprd/validationtools/itemstest/audio/VibratorTest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "VibratorTest.java"


# static fields
.field private static final PATTERN:[J

.field private static final TAG:Ljava/lang/String; = "VibratorTest"

.field private static final V_TIME:J = 0x186a0L


# instance fields
.field private final PLAY_PASS:I

.field mContent:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field private mVibratePattern:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x3e8
        0x2710
        0x3e8
        0x2710
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->mVibratePattern:Z

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    .line 31
    iput v0, p0, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->PLAY_PASS:I

    .line 32
    new-instance v0, Lcom/sprd/validationtools/itemstest/audio/VibratorTest$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/audio/VibratorTest$1;-><init>(Lcom/sprd/validationtools/itemstest/audio/VibratorTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private doVibrator()V
    .locals 4

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVibratePattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->mVibratePattern:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorTest"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->mVibratePattern:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    sget-object v2, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->PATTERN:[J

    invoke-virtual {v0, v2, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    const-wide/32 v2, 0x186a0

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 76
    :goto_0
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 80
    :cond_1
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-sprd-validationtools-itemstest-audio-VibratorTest()V
    .locals 1

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->createButton(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 46
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->removeButton()V

    .line 48
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sprd/validationtools/BaseActivity;->createButton(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 51
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->mContent:Landroid/widget/TextView;

    .line 52
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 53
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->mContent:Landroid/widget/TextView;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 54
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->mContent:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->setContentView(Landroid/view/View;)V

    .line 55
    const v0, 0x7f09019c

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->setTitle(I)V

    .line 56
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    .line 57
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->mContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 58
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->mContent:Landroid/widget/TextView;

    new-instance v1, Lcom/sprd/validationtools/itemstest/audio/VibratorTest$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/audio/VibratorTest$$ExternalSyntheticLambda0;-><init>(Lcom/sprd/validationtools/itemstest/audio/VibratorTest;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 92
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 93
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 85
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 88
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 63
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 64
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/audio/VibratorTest;->doVibrator()V

    .line 65
    return-void
.end method
