.class public Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "FingerprintTestActivity.java"


# static fields
.field private static final CALIBRATION_FAIL:I = 0x2

.field private static final INIT_SUCCESS:I = 0x1

.field private static final RESULT_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FingerprintTestActivity"

.field private static final TEST_FAIL:I = 0x4

.field private static final TEST_SUCCESS:I = 0x3


# instance fields
.field listener_fd:Lcom/sprd/validationtools/itemstest/fingerprint/ISprdFingerDetectListener;

.field private mContext:Landroid/content/Context;

.field private mFingerDetect:Landroid/widget/Button;

.field private mFingerDetectResult:Landroid/widget/TextView;

.field private mFingerDetectTips:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field theTestImpl:Lcom/sprd/validationtools/itemstest/fingerprint/IFactoryTestImpl;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFingerDetectResult(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->mFingerDetectResult:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFingerDetectTips(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->mFingerDetectTips:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->theTestImpl:Lcom/sprd/validationtools/itemstest/fingerprint/IFactoryTestImpl;

    .line 122
    new-instance v0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$2;-><init>(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->listener_fd:Lcom/sprd/validationtools/itemstest/fingerprint/ISprdFingerDetectListener;

    .line 163
    new-instance v0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$3;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$3;-><init>(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initSensor()V
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 119
    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 39
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->setContentView(I)V

    .line 41
    const-string v0, "FingerprintTestActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput-object p0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->mContext:Landroid/content/Context;

    .line 45
    const v0, 0x7f05004f

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->mFingerDetectTips:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f050083

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->mFingerDetectResult:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f05004e

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->mFingerDetect:Landroid/widget/Button;

    .line 48
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 49
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->removeButton()V

    .line 50
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->initSensor()V

    .line 51
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method protected onDestroy()V
    .locals 3

    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->theTestImpl:Lcom/sprd/validationtools/itemstest/fingerprint/IFactoryTestImpl;

    invoke-interface {v1}, Lcom/sprd/validationtools/itemstest/fingerprint/IFactoryTestImpl;->factory_exit()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 158
    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 159
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deinit fd ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintTestActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 161
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 146
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 147
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    const-string v0, "FingerprintTestActivity"

    const-string v1, "onPause, deInit sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 141
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 142
    return-void
.end method
