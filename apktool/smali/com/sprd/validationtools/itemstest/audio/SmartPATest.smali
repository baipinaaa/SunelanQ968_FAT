.class public Lcom/sprd/validationtools/itemstest/audio/SmartPATest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "SmartPATest.java"


# static fields
.field private static final SMARTPA_CALIBRATION_FAIL:I = 0x0

.field private static final SMARTPA_CALIBRATION_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SmartPATest"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;

.field private mResistance:F

.field private mResistanceMax:F

.field private mResistanceMin:F

.field private mRisistanceTV:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResistance(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)F
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->mResistance:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmResistanceMax(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)F
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->mResistanceMax:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmResistanceMin(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)F
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->mResistanceMin:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRisistanceTV(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->mRisistanceTV:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmResistance(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;F)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->mResistance:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmResistanceMax(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;F)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->mResistanceMax:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmResistanceMin(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;F)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->mResistanceMin:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->mRisistanceTV:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->mAudioManager:Landroid/media/AudioManager;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->mResistance:F

    .line 29
    iput v0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->mResistanceMax:F

    .line 30
    iput v0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->mResistanceMin:F

    .line 33
    new-instance v0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;-><init>(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 140
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 141
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v1, "SmartAmpCalibration"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "supportResult":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supportResult=:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmartPATest"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "unsupport"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 144
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 71
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-string v0, "SmartPATest"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->setContentView(I)V

    .line 75
    const v0, 0x7f05008c

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->mRisistanceTV:Landroid/widget/TextView;

    .line 76
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->mAudioManager:Landroid/media/AudioManager;

    .line 77
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method protected onResume()V
    .locals 4

    .line 81
    const-string v0, "SmartPATest"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$2;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$2;-><init>(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 89
    return-void
.end method

.method protected startSmartpaTest()V
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$3;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$3;-><init>(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 135
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 136
    return-void
.end method
