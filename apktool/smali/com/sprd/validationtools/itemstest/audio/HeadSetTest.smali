.class public Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "HeadSetTest.java"


# static fields
.field private static final HEADSET_NAME_PATH:Ljava/lang/String; = "/sys/class/switch/h2w/name"

.field private static final HEADSET_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/h2w"

.field private static final STEP_INSERT_HEADSET:I = 0x1

.field private static final STEP_LOOPBACK:I = 0x3

.field private static final STEP_NONE:I = 0x0

.field private static final STEP_PRESS_HEADSET_KEY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HeadSetTest"

.field private static final mNormalColor:I = -0x10000

.field private static final mPassColor:I = -0xff0100


# instance fields
.field private earphonePluginReceiver:Landroid/content/BroadcastReceiver;

.field private isRollbackStarted:Z

.field private mAudioManagerProxy:Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

.field private mAudioWhaleHalFlag:Z

.field private mEarKey:Landroid/widget/Button;

.field public mHandler:Landroid/os/Handler;

.field private mInsertHeadsetNotice:Landroid/widget/TextView;

.field private mIsPausing:Z

.field private mIsThirdPartHeadset:Z

.field private mLoopbackTest:Landroid/widget/TextView;

.field private mPressHeadsetKey:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetisRollbackStarted(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->isRollbackStarted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioManagerProxy(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mAudioManagerProxy:Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsThirdPartHeadset(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mIsThirdPartHeadset:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisRollbackStarted(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->isRollbackStarted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsThirdPartHeadset(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mIsThirdPartHeadset:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mrollbackMmiAudio(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->rollbackMmiAudio()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartMmiAudio(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->startMmiAudio()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstep(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->step(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mHandler:Landroid/os/Handler;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->isRollbackStarted:Z

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mInsertHeadsetNotice:Landroid/widget/TextView;

    .line 58
    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mPressHeadsetKey:Landroid/widget/TextView;

    .line 59
    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mLoopbackTest:Landroid/widget/TextView;

    .line 60
    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mEarKey:Landroid/widget/Button;

    .line 65
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mIsThirdPartHeadset:Z

    .line 66
    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mAudioManagerProxy:Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    .line 67
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mAudioWhaleHalFlag:Z

    .line 136
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mIsPausing:Z

    .line 195
    new-instance v0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$2;-><init>(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->earphonePluginReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private isHeadsetExists()Z
    .locals 2

    .line 190
    const-string v0, "/sys/class/switch/h2w/state"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->getIntFromFile(Ljava/lang/String;)I

    move-result v0

    .line 192
    .local v0, "newState":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 302
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const-string v0, "/sys/class/switch/h2w/state"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->getIntFromFile(Ljava/lang/String;)I

    move-result v0

    .line 304
    .local v0, "newState":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeadSet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HeadSetTest"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    if-gtz v0, :cond_0

    .line 306
    const/4 v1, 0x0

    return v1

    .line 309
    .end local v0    # "newState":I
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private rollbackMmiAudio()V
    .locals 2

    .line 281
    const-string v0, "HeadSetTest"

    const-string v1, "rollbackMmiAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mAudioWhaleHalFlag:Z

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$5;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$5;-><init>(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)V

    .line 288
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$5;->start()V

    goto :goto_0

    .line 291
    :cond_0
    new-instance v0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$6;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$6;-><init>(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)V

    .line 295
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$6;->start()V

    .line 298
    :goto_0
    return-void
.end method

.method private startMmiAudio()V
    .locals 2

    .line 218
    const-string v0, "HeadSetTest"

    const-string v1, "startMmiAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mAudioWhaleHalFlag:Z

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;-><init>(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)V

    .line 252
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$3;->start()V

    goto :goto_0

    .line 258
    :cond_0
    new-instance v0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4;-><init>(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)V

    .line 276
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4;->start()V

    .line 278
    :goto_0
    return-void
.end method

.method private step(I)V
    .locals 4
    .param p1, "step"    # I

    .line 108
    const/4 v0, 0x0

    const v1, -0xff0100

    const/high16 v2, -0x10000

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 128
    :pswitch_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mInsertHeadsetNotice:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mPressHeadsetKey:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mLoopbackTest:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mEarKey:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mInsertHeadsetNotice:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mPressHeadsetKey:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mLoopbackTest:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mEarKey:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    goto :goto_0

    .line 116
    :pswitch_2
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mInsertHeadsetNotice:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mPressHeadsetKey:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mLoopbackTest:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mEarKey:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 120
    goto :goto_0

    .line 110
    :pswitch_3
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mInsertHeadsetNotice:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mPressHeadsetKey:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mLoopbackTest:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mEarKey:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    nop

    .line 134
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 71
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->setContentView(I)V

    .line 73
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sprd/validationtools/utils/ValidationToolsUtils;->isSupportAGDSP(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mAudioWhaleHalFlag:Z

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate mAudioWhaleHalFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mAudioWhaleHalFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadSetTest"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mAudioManagerProxy:Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    .line 76
    const v0, 0x7f0500db

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mInsertHeadsetNotice:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0500dd

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mPressHeadsetKey:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0500de

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mLoopbackTest:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f050029

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mEarKey:Landroid/widget/Button;

    .line 80
    new-instance v1, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$1;-><init>(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->isHeadsetExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->step(I)V

    .line 93
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->step(I)V

    .line 95
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->startMmiAudio()V

    .line 96
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->isRollbackStarted:Z

    goto :goto_0

    .line 99
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->step(I)V

    .line 100
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->storeRusult(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->finish()V

    .line 105
    :cond_1
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 163
    const/16 v0, 0x4f

    if-ne p1, v0, :cond_3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown isRollbackStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->isRollbackStarted:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HeadSetTest"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->isDestroyed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isFinishing()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mIsPausing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mIsPausing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->isRollbackStarted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 170
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->step(I)V

    .line 171
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->startMmiAudio()V

    .line 172
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->isRollbackStarted:Z

    .line 173
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mEarKey:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPressed(Z)V

    .line 175
    :cond_1
    return v1

    .line 167
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sprd/validationtools/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 177
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/sprd/validationtools/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 182
    const/16 v0, 0x4f

    if-ne p1, v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mEarKey:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPressed(Z)V

    .line 184
    const/4 v0, 0x1

    return v0

    .line 186
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sprd/validationtools/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .line 154
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mIsPausing:Z

    .line 156
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->rollbackMmiAudio()V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->isRollbackStarted:Z

    .line 158
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->earphonePluginReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 139
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->mIsPausing:Z

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume isRollbackStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->isRollbackStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HeadSetTest"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-boolean v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->isRollbackStarted:Z

    if-eqz v1, :cond_0

    .line 143
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->step(I)V

    .line 144
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->startMmiAudio()V

    .line 145
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->isRollbackStarted:Z

    .line 147
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->earphonePluginReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    return-void
.end method
