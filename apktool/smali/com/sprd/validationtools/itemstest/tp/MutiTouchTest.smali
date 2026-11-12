.class public Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "MutiTouchTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;,
        Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MainHandler;
    }
.end annotation


# static fields
.field private static final STOP_TEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MutiTouchTest"


# instance fields
.field private isShowNavigationBar:Z

.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHandler:Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MainHandler;

.field private mImgView:Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;

.field private mMutiTouchHandler:Landroid/os/Handler;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetisShowNavigationBar(Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->isShowNavigationBar:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstopTest(Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->stopTest()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->isShowNavigationBar:Z

    .line 42
    new-instance v0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$1;-><init>(Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->mMutiTouchHandler:Landroid/os/Handler;

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 10

    .line 96
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 98
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 99
    .local v1, "view":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 102
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 105
    .local v2, "vlp":Landroid/view/ViewGroup$LayoutParams;
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->mTextView:Landroid/widget/TextView;

    .line 106
    new-instance v3, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v9, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->mHandler:Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MainHandler;

    move-object v4, v3

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;-><init>(Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;Landroid/content/Context;IILandroid/os/Handler;)V

    iput-object v3, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->mImgView:Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;

    .line 108
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->mImgView:Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;

    invoke-virtual {v3, v2}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->mTextView:Landroid/widget/TextView;

    const v4, 0x7f0900e0

    invoke-virtual {p0, v4}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->mImgView:Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MuiltImageView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    return-object v1
.end method

.method private stopTest()V
    .locals 1

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->storeRusult(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->finish()V

    .line 77
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {p0}, Lcom/sprd/validationtools/utils/ValidationToolsUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->isShowNavigationBar:Z

    .line 59
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->mPassButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->mFailButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->requestWindowFeature(I)Z

    .line 62
    iput-object p0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 65
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 66
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 67
    new-instance v0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MainHandler;-><init>(Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MainHandler-IA;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->mHandler:Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MainHandler;

    .line 68
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->createView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->setContentView(Landroid/view/View;)V

    .line 69
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->mMutiTouchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 72
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

    .line 89
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->mMutiTouchHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 92
    :cond_0
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 93
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 81
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 82
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->isShowNavigationBar:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->hideNavigationBar()V

    .line 85
    :cond_0
    return-void
.end method
