.class public Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "PhoneCallTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity$MyPhoneStateListener;
    }
.end annotation


# static fields
.field private static final CHECK_CALL_STATUS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PhoneCallTestActivity"


# instance fields
.field private mCallHandler:Landroid/os/Handler;

.field private mCallResult:Z

.field private mContent:Landroid/widget/TextView;

.field private mPhoneStateListener:Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity$MyPhoneStateListener;


# direct methods
.method static bridge synthetic -$$Nest$fputmCallResult(Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;->mCallResult:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;->mCallResult:Z

    .line 58
    new-instance v0, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;->mCallHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public endCall()V
    .locals 2

    .line 87
    const-string v0, "PhoneCallTestActivity"

    const-string v1, "endCall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :try_start_0
    const-string v0, "ATH"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/IATUtils;->sendAtCmd(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;->mCallResult:Z

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;->storeRusult(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 39
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;->mContent:Landroid/widget/TextView;

    .line 40
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 41
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;->mContent:Landroid/widget/TextView;

    const v1, 0x7f0900fc

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;->mContent:Landroid/widget/TextView;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;->mContent:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;->setContentView(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "tel:112"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 48
    const-string v1, "factory_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;->startActivity(Landroid/content/Intent;)V

    .line 50
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 52
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    new-instance v2, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity$MyPhoneStateListener;

    invoke-direct {v2, p0}, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity$MyPhoneStateListener;-><init>(Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;)V

    iput-object v2, p0, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;->mPhoneStateListener:Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity$MyPhoneStateListener;

    .line 53
    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 54
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;->mCallHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 56
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method protected onDestroy()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity;->mCallHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 100
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 102
    :cond_0
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 103
    return-void
.end method
