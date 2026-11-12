.class public Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "PhoneLoopBackTest.java"


# static fields
.field private static final LOOPBACK_MIC3_RECEIVER:I = 0x3

.field private static final LOOPBACK_NONE:I = 0x0

.field private static final LOOPBACK_PASS:I = 0x4

.field private static final LOOPBACK_RECEIVER:I = 0x2

.field private static final LOOPBACK_SPEAKER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PhoneLoopBackTest"


# instance fields
.field private mAudioManagerProxy:Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

.field private mAudioWhaleHalFlag:Z

.field private mAux3DeviceSupport:Z

.field private mCurLoopback:I

.field private mIsRefMicSupport:Z

.field private mLock:Ljava/lang/Object;

.field public mPLBTestFlag:[B

.field private mPendingPaused:Z

.field private mPhoneLoopBackHandler:Landroid/os/Handler;

.field private mRadio3Receiver:Landroid/widget/RadioButton;

.field private mRadioOpenSuccess:Z

.field private mRadioReceiver:Landroid/widget/RadioButton;

.field private mRadioSpeaker:Landroid/widget/RadioButton;

.field private mSavedLockSound:Z

.field private mSavedSoundEffect:Z

.field public mUihandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioManagerProxy(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mAudioManagerProxy:Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAux3DeviceSupport(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mAux3DeviceSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurLoopback(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mCurLoopback:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingPaused(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mPendingPaused:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneLoopBackHandler(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mPhoneLoopBackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRadio3Receiver(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadio3Receiver:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRadioReceiver(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadioReceiver:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRadioSpeaker(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadioSpeaker:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurLoopback(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mCurLoopback:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRadioOpenSuccess(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadioOpenSuccess:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mrollbackMmiAudio(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->rollbackMmiAudio(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetInMac(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->setInMac(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mswitchLoopback(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->switchLoopback(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mPLBTestFlag:[B

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mUihandler:Landroid/os/Handler;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadioSpeaker:Landroid/widget/RadioButton;

    .line 45
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadioReceiver:Landroid/widget/RadioButton;

    .line 46
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadio3Receiver:Landroid/widget/RadioButton;

    .line 52
    const/4 v1, 0x0

    iput v1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mCurLoopback:I

    .line 53
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mAudioManagerProxy:Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mLock:Ljava/lang/Object;

    .line 57
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mAudioWhaleHalFlag:Z

    .line 58
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mPendingPaused:Z

    .line 59
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadioOpenSuccess:Z

    .line 60
    invoke-static {}, Lcom/sprd/validationtools/Const;->isRefMicSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mIsRefMicSupport:Z

    .line 62
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mSavedSoundEffect:Z

    .line 63
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mSavedLockSound:Z

    .line 64
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mAux3DeviceSupport:Z

    .line 66
    new-instance v0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$1;-><init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mPhoneLoopBackHandler:Landroid/os/Handler;

    return-void
.end method

.method private rollbackMmiAudio(I)V
    .locals 2
    .param p1, "loopbackType"    # I

    .line 441
    const-string v0, "PhoneLoopBackTest"

    const-string v1, "=== create thread to execute PhoneLoopBackTest stop command! ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mAudioWhaleHalFlag:Z

    if-nez v0, :cond_1

    .line 444
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 445
    new-instance v0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$12;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$12;-><init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)V

    .line 450
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$12;->start()V

    goto :goto_0

    .line 452
    :cond_0
    new-instance v0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$13;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$13;-><init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)V

    .line 457
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$13;->start()V

    goto :goto_0

    .line 461
    :cond_1
    new-instance v0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$14;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$14;-><init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)V

    .line 466
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$14;->start()V

    .line 468
    :goto_0
    return-void
.end method

.method private setInMac(I)Z
    .locals 3
    .param p1, "loopbackType"    # I

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 341
    const-string v2, "AT+SPVLOOP=4,,,,,,2,1"

    invoke-static {v2}, Lcom/sprd/validationtools/utils/IATUtils;->sendAtCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 343
    :cond_0
    const-string v2, "AT+SPVLOOP=4,,,,,,2,2"

    invoke-static {v2}, Lcom/sprd/validationtools/utils/IATUtils;->sendAtCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ltz v2, :cond_1

    sget-object v2, Lcom/sprd/validationtools/utils/IATUtils;->AT_OK:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    return v1

    .line 348
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private startMmiAudio(I)V
    .locals 4
    .param p1, "loopbackType"    # I

    .line 352
    const-string v0, "PhoneLoopBackTest"

    const-string v1, "=== create thread to execute PhoneLoopBackTest start command! ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadioReceiver:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 355
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadio3Receiver:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 356
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadioSpeaker:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 357
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mAudioWhaleHalFlag:Z

    const-wide/16 v1, 0xbb8

    const/4 v3, 0x2

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;-><init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)V

    .line 395
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;->start()V

    .line 396
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mPhoneLoopBackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 406
    :cond_0
    new-instance v0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$11;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$11;-><init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)V

    .line 431
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$11;->start()V

    .line 432
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mPhoneLoopBackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 438
    :cond_1
    :goto_0
    return-void
.end method

.method private switchLoopback(I)V
    .locals 2
    .param p1, "loopbackType"    # I

    .line 171
    const-string v0, "PhoneLoopBackTest"

    const-string v1, "=== create thread to execute PhoneLoopBackTest switch command! ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadioReceiver:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadio3Receiver:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 175
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadioSpeaker:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 176
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mAudioWhaleHalFlag:Z

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 177
    if-ne p1, v1, :cond_0

    .line 178
    new-instance v0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$5;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$5;-><init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)V

    .line 212
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$5;->start()V

    goto :goto_0

    .line 214
    :cond_0
    new-instance v0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$6;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$6;-><init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)V

    .line 247
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$6;->start()V

    goto :goto_0

    .line 250
    :cond_1
    if-ne p1, v1, :cond_2

    .line 251
    new-instance v0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$7;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$7;-><init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)V

    .line 275
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$7;->start()V

    goto :goto_0

    .line 277
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 278
    new-instance v0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$8;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$8;-><init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)V

    .line 302
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$8;->start()V

    goto :goto_0

    .line 305
    :cond_3
    new-instance v0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$9;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$9;-><init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)V

    .line 331
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$9;->start()V

    .line 336
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-sprd-validationtools-itemstest-audio-PhoneLoopBackTest()V
    .locals 1

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->createButton(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 94
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->removeButton()V

    .line 96
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sprd/validationtools/BaseActivity;->createButton(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 98
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v3, 0x80000

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 99
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 101
    const v1, 0x7f060021

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->setContentView(I)V

    .line 102
    const v1, 0x7f0900fa

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->setTitle(I)V

    .line 103
    new-instance v1, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mAudioManagerProxy:Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    .line 104
    const v1, 0x7f050081

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadioSpeaker:Landroid/widget/RadioButton;

    .line 105
    const v1, 0x7f050080

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadioReceiver:Landroid/widget/RadioButton;

    .line 106
    const v1, 0x7f05007f

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadio3Receiver:Landroid/widget/RadioButton;

    .line 107
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadioSpeaker:Landroid/widget/RadioButton;

    new-instance v2, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$2;

    invoke-direct {v2, p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$2;-><init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadioReceiver:Landroid/widget/RadioButton;

    new-instance v2, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$3;

    invoke-direct {v2, p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$3;-><init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadio3Receiver:Landroid/widget/RadioButton;

    new-instance v2, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$4;

    invoke-direct {v2, p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$4;-><init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget v1, Lcom/sprd/validationtools/nonpublic/AudioSystemProxy;->DEVICE_STATE_AVAILABLE:I

    sget v2, Lcom/sprd/validationtools/nonpublic/AudioSystemProxy;->DEVICE_OUT_EARPIECE:I

    .line 124
    const-string v3, ""

    invoke-static {v2, v3}, Lcom/sprd/validationtools/nonpublic/AudioSystemProxy;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v2

    const/16 v4, 0x8

    if-eq v1, v2, :cond_0

    .line 125
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadioReceiver:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 128
    :cond_0
    const/4 v1, 0x1

    .line 129
    .local v1, "mAuxDeviceSupport":Z
    sget v2, Lcom/sprd/validationtools/nonpublic/AudioSystemProxy;->DEVICE_STATE_AVAILABLE:I

    sget v5, Lcom/sprd/validationtools/nonpublic/AudioSystemProxy;->DEVICE_IN_BACK_MIC:I

    .line 130
    invoke-static {v5, v3}, Lcom/sprd/validationtools/nonpublic/AudioSystemProxy;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 131
    const/4 v1, 0x0

    .line 133
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate mAuxDeviceSupport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PhoneLoopBackTest"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v2, 0x0

    .line 136
    .local v2, "mAux3DeviceSupport":Z
    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mAudioManagerProxy:Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    const-string v6, "SubMic2"

    invoke-virtual {v5, v6}, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "result":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getParameters result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-eqz v5, :cond_2

    const-string v6, "SubMic2=1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 139
    const/4 v2, 0x1

    .line 141
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate mAux3DeviceSupport="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sprd/validationtools/utils/ValidationToolsUtils;->isSupportAGDSP(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mAudioWhaleHalFlag:Z

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate mAudioWhaleHalFlag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mAudioWhaleHalFlag:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadioReceiver:Landroid/widget/RadioButton;

    iget-boolean v6, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mIsRefMicSupport:Z

    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    move v6, v0

    goto :goto_0

    :cond_3
    move v6, v4

    :goto_0
    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 146
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadio3Receiver:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 148
    invoke-static {p0, v0}, Lcom/sprd/validationtools/utils/ValidationToolsUtils;->setSoundEffect(Landroid/content/Context;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mSavedSoundEffect:Z

    .line 149
    invoke-static {p0, v0}, Lcom/sprd/validationtools/utils/ValidationToolsUtils;->setLockSound(Landroid/content/Context;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mSavedLockSound:Z

    .line 150
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadioSpeaker:Landroid/widget/RadioButton;

    new-instance v3, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$$ExternalSyntheticLambda0;-><init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v0, v3, v6, v7}, Landroid/widget/RadioButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 472
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mSavedSoundEffect:Z

    invoke-static {p0, v0}, Lcom/sprd/validationtools/utils/ValidationToolsUtils;->setSoundEffect(Landroid/content/Context;Z)Z

    .line 473
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mSavedLockSound:Z

    invoke-static {p0, v0}, Lcom/sprd/validationtools/utils/ValidationToolsUtils;->setLockSound(Landroid/content/Context;Z)Z

    .line 474
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 475
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mRadioOpenSuccess:Z

    if-eqz v0, :cond_0

    .line 164
    iget v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mCurLoopback:I

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->rollbackMmiAudio(I)V

    .line 166
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mPendingPaused:Z

    .line 167
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 168
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 156
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mPendingPaused:Z

    .line 158
    iget v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->mCurLoopback:I

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->startMmiAudio(I)V

    .line 159
    return-void
.end method
