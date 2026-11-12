.class public Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;
.super Landroid/app/Activity;
.source "TestInfoMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$TestInfoHandler;,
        Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$UiHandler;
    }
.end annotation


# static fields
.field private static final SUPPORT_QRCODE:Z = true

.field private static final TAG:Ljava/lang/String; = "TestInfoMainActivity"


# instance fields
.field private final GET_CU:I

.field private final GET_IMEI:I

.field private final GET_MEID:I

.field private final GET_PCHECK:I

.field private final GET_SN:I

.field private final GET_TESTR:I

.field private final GET_WIFI:I

.field private mAudiotxt:Landroid/widget/TextView;

.field private mAudiotxtInfo:Landroid/widget/TextView;

.field private mBLTtxt:Landroid/widget/TextView;

.field private mBLTtxtInfo:Landroid/widget/TextView;

.field private mBtTestUtil:Lcom/sprd/validationtools/utils/BtTestUtil;

.field private mCHECKtxt:Landroid/widget/TextView;

.field private mCHECKtxtInfo:Landroid/widget/TextView;

.field private mCUtxt:Landroid/widget/TextView;

.field private mCUtxtInfo:Landroid/widget/TextView;

.field private mDataCodetxt:Landroid/widget/TextView;

.field private mDataCodetxtInfo:Landroid/widget/TextView;

.field private mHWVersiontxt:Landroid/widget/TextView;

.field private mHWVersiontxtInfo:Landroid/widget/TextView;

.field private mIMEItxt:Landroid/widget/TextView;

.field private mIMEItxtInfo:Landroid/widget/TextView;

.field private mIsTested:Z

.field private mMEIDtextInfo:Landroid/widget/TextView;

.field private mMEIDtxt:Landroid/widget/TextView;

.field private mQRCodeImageView:Landroid/widget/ImageView;

.field private mSNtxt:Landroid/widget/TextView;

.field private mSNtxtInfo:Landroid/widget/TextView;

.field private mSWVersiontxt:Landroid/widget/TextView;

.field private mSWVersiontxtInfo:Landroid/widget/TextView;

.field private mTPtxt:Landroid/widget/TextView;

.field private mTPtxtInfo:Landroid/widget/TextView;

.field mTestInfoHandler:Landroid/os/Handler;

.field private mTesttxt:Landroid/widget/TextView;

.field private mTesttxtInfo:Landroid/widget/TextView;

.field mUiHandler:Landroid/os/Handler;

.field private mUid:Landroid/widget/TextView;

.field private mWIFItxt:Landroid/widget/TextView;

.field private mWIFItxtInfo:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiTestUtil:Lcom/sprd/validationtools/utils/WifiTestUtil;

.field tpNodePath:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBLTtxtInfo(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mBLTtxtInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCHECKtxtInfo(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mCHECKtxtInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIMEItxtInfo(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mIMEItxtInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTested(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mIsTested:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMEIDtextInfo(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mMEIDtextInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQRCodeImageView(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mQRCodeImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSNtxtInfo(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mSNtxtInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTesttxtInfo(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mTesttxtInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWIFItxtInfo(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mWIFItxtInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const-string v0, "/sys/touchscreen/tp_fw_version"

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->tpNodePath:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mQRCodeImageView:Landroid/widget/ImageView;

    .line 72
    const/4 v1, 0x0

    iput v1, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->GET_SN:I

    .line 73
    const/4 v2, 0x1

    iput v2, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->GET_IMEI:I

    .line 74
    const/4 v2, 0x3

    iput v2, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->GET_WIFI:I

    .line 75
    const/4 v2, 0x4

    iput v2, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->GET_PCHECK:I

    .line 76
    const/4 v2, 0x5

    iput v2, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->GET_TESTR:I

    .line 77
    const/4 v2, 0x6

    iput v2, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->GET_MEID:I

    .line 78
    const/4 v2, 0x7

    iput v2, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->GET_CU:I

    .line 80
    iput-boolean v1, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mIsTested:Z

    .line 82
    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mTestInfoHandler:Landroid/os/Handler;

    .line 83
    new-instance v1, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$UiHandler;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$UiHandler;-><init>(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)V

    iput-object v1, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mUiHandler:Landroid/os/Handler;

    .line 243
    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mBtTestUtil:Lcom/sprd/validationtools/utils/BtTestUtil;

    .line 244
    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mWifiTestUtil:Lcom/sprd/validationtools/utils/WifiTestUtil;

    .line 245
    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private init()V
    .locals 3

    .line 359
    const v0, 0x7f05009c

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mSWVersiontxt:Landroid/widget/TextView;

    .line 360
    const v0, 0x7f05009d

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mSWVersiontxtInfo:Landroid/widget/TextView;

    .line 361
    const v0, 0x7f050056

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mHWVersiontxt:Landroid/widget/TextView;

    .line 362
    const v0, 0x7f050057

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mHWVersiontxtInfo:Landroid/widget/TextView;

    .line 363
    const v0, 0x7f050046

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mDataCodetxt:Landroid/widget/TextView;

    .line 364
    const v0, 0x7f050047

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mDataCodetxtInfo:Landroid/widget/TextView;

    .line 365
    const v0, 0x7f0500bd

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mSNtxt:Landroid/widget/TextView;

    .line 366
    const v0, 0x7f0500af

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mSNtxtInfo:Landroid/widget/TextView;

    .line 367
    const v0, 0x7f0500b8

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mCUtxt:Landroid/widget/TextView;

    .line 368
    const v0, 0x7f0500ab

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mCUtxtInfo:Landroid/widget/TextView;

    .line 369
    const v0, 0x7f0500cb

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mTPtxt:Landroid/widget/TextView;

    .line 370
    const v0, 0x7f0500cc

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mTPtxtInfo:Landroid/widget/TextView;

    .line 371
    const v0, 0x7f050019

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mAudiotxt:Landroid/widget/TextView;

    .line 372
    const v0, 0x7f05001a

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mAudiotxtInfo:Landroid/widget/TextView;

    .line 374
    const v0, 0x7f0500b9

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mIMEItxt:Landroid/widget/TextView;

    .line 375
    const v0, 0x7f0500ac

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mIMEItxtInfo:Landroid/widget/TextView;

    .line 376
    const v0, 0x7f0500b7

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mBLTtxt:Landroid/widget/TextView;

    .line 377
    const v0, 0x7f0500aa

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mBLTtxtInfo:Landroid/widget/TextView;

    .line 378
    const v0, 0x7f0500bf

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mWIFItxt:Landroid/widget/TextView;

    .line 379
    const v0, 0x7f0500b1

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mWIFItxtInfo:Landroid/widget/TextView;

    .line 380
    const v0, 0x7f0500bb

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mCHECKtxt:Landroid/widget/TextView;

    .line 381
    const v0, 0x7f0500ae

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mCHECKtxtInfo:Landroid/widget/TextView;

    .line 382
    const v0, 0x7f0500be

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mTesttxt:Landroid/widget/TextView;

    .line 383
    const v0, 0x7f0500b0

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mTesttxtInfo:Landroid/widget/TextView;

    .line 384
    const v0, 0x7f0500f7

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mUid:Landroid/widget/TextView;

    .line 385
    const v0, 0x7f0500ba

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mMEIDtxt:Landroid/widget/TextView;

    .line 386
    const v0, 0x7f0500ad

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mMEIDtextInfo:Landroid/widget/TextView;

    .line 387
    invoke-static {}, Lcom/sprd/validationtools/TelephonyManagerSprd;->IsSupportCDMA()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mMEIDtxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mMEIDtextInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    :cond_0
    const-string v0, "TestInfoMainActivity"

    const-string v2, "init"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const v0, 0x7f0500bc

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mQRCodeImageView:Landroid/widget/ImageView;

    .line 393
    invoke-virtual {p0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 394
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 395
    const-string v2, "is_system_tested"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mIsTested:Z

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mUid:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    const v1, 0x7f0500f8

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 401
    .local v1, "mUidTitle":Landroid/widget/TextView;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    .end local v1    # "mUidTitle":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->setTxtInfo()V

    .line 404
    return-void
.end method

.method private read(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "nodePath"    # Ljava/lang/String;

    .line 408
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 409
    .local v0, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .local v1, "contentBuilder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 412
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 415
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .local v2, "contentMsg":Ljava/lang/String;
    return-object v2

    .line 419
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local v1    # "contentBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "contentMsg":Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 417
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 418
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 421
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    nop

    .line 422
    :goto_1
    const-string v0, "unknown"

    return-object v0
.end method

.method private setTxtInfo()V
    .locals 7

    .line 425
    const-string v0, "ro.boot.cu"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "strCU":Ljava/lang/String;
    const-string v2, "-2"

    const-string v3, "-3"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 428
    .local v2, "newStrCU":Ljava/lang/String;
    iget-object v3, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mTestInfoHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 430
    iget-object v3, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mTestInfoHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 432
    iget-object v3, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mSWVersiontxtInfo:Landroid/widget/TextView;

    const-string v4, "ro.build.display.id"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v3, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mDataCodetxtInfo:Landroid/widget/TextView;

    const-string v4, "ro.boot.factory_version"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v3, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mHWVersiontxtInfo:Landroid/widget/TextView;

    const-string v4, "ro.boot.hardware_boardid"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v3, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mCUtxtInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v3, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mTPtxtInfo:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->tpNodePath:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v3, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mAudiotxtInfo:Landroid/widget/TextView;

    const-string v4, "vendor.audio_version"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    const-string v1, "ro.product.system.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "YQ5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mDataCodetxt:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    iget-object v1, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mDataCodetxtInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    iget-object v1, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mCUtxt:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    iget-object v1, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mCUtxtInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    :cond_0
    invoke-static {}, Lcom/sprd/validationtools/TelephonyManagerSprd;->IsSupportCDMA()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mTestInfoHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 451
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 452
    .local v1, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/sprd/validationtools/Safe;->btAddress(Landroid/bluetooth/BluetoothAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, "localAddress":Ljava/lang/String;
    iget-object v4, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mBLTtxtInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    new-instance v4, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$4;

    invoke-direct {v4, p0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$4;-><init>(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)V

    .line 478
    .local v4, "mWifiTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 480
    iget-object v5, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mTestInfoHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 481
    iget-object v5, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mTestInfoHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 486
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 505
    invoke-virtual {p0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->finish()V

    .line 506
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 507
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 249
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 250
    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->setContentView(I)V

    .line 251
    invoke-virtual {p0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 252
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 253
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "TestInfoMainActivity"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 254
    .local v1, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 255
    new-instance v3, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$TestInfoHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$TestInfoHandler;-><init>(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mTestInfoHandler:Landroid/os/Handler;

    .line 256
    invoke-direct {p0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->init()V

    .line 257
    const-string v3, "onCreate SUPPORT_QRCODE=true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v2, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$1;

    invoke-direct {v2, p0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$1;-><init>(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)V

    .line 286
    .local v2, "mQRCodeTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Landroid/graphics/Bitmap;>;"
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 288
    .end local v2    # "mQRCodeTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Landroid/graphics/Bitmap;>;"
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 289
    new-instance v2, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$2;

    invoke-direct {v2, p0}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$2;-><init>(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)V

    iput-object v2, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mBtTestUtil:Lcom/sprd/validationtools/utils/BtTestUtil;

    .line 316
    new-instance v2, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$3;

    iget-object v3, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v2, p0, v3}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$3;-><init>(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;Landroid/net/wifi/WifiManager;)V

    iput-object v2, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mWifiTestUtil:Lcom/sprd/validationtools/utils/WifiTestUtil;

    .line 350
    iget-object v2, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mBtTestUtil:Lcom/sprd/validationtools/utils/BtTestUtil;

    if-eqz v2, :cond_0

    .line 351
    invoke-virtual {v2, p0}, Lcom/sprd/validationtools/utils/BtTestUtil;->startTest(Landroid/content/Context;)V

    .line 353
    :cond_0
    iget-object v2, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mWifiTestUtil:Lcom/sprd/validationtools/utils/WifiTestUtil;

    if-eqz v2, :cond_1

    .line 354
    invoke-virtual {v2, p0}, Lcom/sprd/validationtools/utils/WifiTestUtil;->startTest(Landroid/content/Context;)V

    .line 356
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mTestInfoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 491
    const-string v0, "TestInfoMainActivity"

    const-string v1, "HandlerThread has quit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mTestInfoHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mBtTestUtil:Lcom/sprd/validationtools/utils/BtTestUtil;

    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {v0}, Lcom/sprd/validationtools/utils/BtTestUtil;->stopTest()V

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->mWifiTestUtil:Lcom/sprd/validationtools/utils/WifiTestUtil;

    if-eqz v0, :cond_2

    .line 498
    invoke-virtual {v0}, Lcom/sprd/validationtools/utils/WifiTestUtil;->stopTest()V

    .line 500
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 501
    return-void
.end method
