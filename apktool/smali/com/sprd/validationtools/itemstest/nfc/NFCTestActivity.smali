.class public Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "NFCTestActivity.java"


# static fields
.field public static final ACTION_TIME_OUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NFCTestActivity"

.field private static final TIME_OUT:I = 0x4e20


# instance fields
.field mContent:Landroid/widget/TextView;

.field public mHandler:Landroid/os/Handler;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 33
    new-instance v0, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "result":Z
    const-string v1, "nfc"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcManager;

    .line 97
    .local v1, "manager":Landroid/nfc/NfcManager;
    invoke-virtual {v1}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v2

    .line 98
    .local v2, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v2, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 101
    :cond_0
    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 52
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;->setContentView(I)V

    .line 53
    const-string v0, "nfc"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .line 54
    .local v0, "nfcManager":Landroid/nfc/NfcManager;
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 55
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;->mPendingIntent:Landroid/app/PendingIntent;

    .line 56
    const-string v1, "NFCTestActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 90
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 91
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NFCTestActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v0, "android.nfc.extra.TAG"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    .line 63
    .local v0, "detectedTag":Landroid/nfc/Tag;
    if-eqz v0, :cond_0

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;->mContent:Landroid/widget/TextView;

    const v2, 0x7f0900e3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 66
    const v1, 0x7f090183

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 67
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;->storeRusult(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;->finish()V

    .line 70
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 83
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 84
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 86
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 74
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 75
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 76
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, v2}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 77
    const v0, 0x7f050070

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/nfc/NFCTestActivity;->mContent:Landroid/widget/TextView;

    .line 78
    const v1, 0x7f0900e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 79
    return-void
.end method
