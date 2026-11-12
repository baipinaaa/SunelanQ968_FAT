.class public Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "ScreenColorTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final COLOR_ARRAY:[I


# instance fields
.field private TAG:Ljava/lang/String;

.field protected failButton:Landroid/widget/Button;

.field private isShowNavigationBar:Z

.field mContent:Landroid/widget/TextView;

.field mCount:I

.field mIndex:I

.field protected mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mRunnable:Ljava/lang/Runnable;

.field private mUiHandler:Landroid/os/Handler;

.field protected passButton:Landroid/widget/Button;


# direct methods
.method static bridge synthetic -$$Nest$fgetisShowNavigationBar(Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->isShowNavigationBar:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$msetBackground(Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->setBackground()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetCOLOR_ARRAY()[I
    .locals 1

    sget-object v0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->COLOR_ARRAY:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->COLOR_ARRAY:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x10000
        -0xff0100
        -0xffff01
        -0x100
        -0x777778
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 26
    const-string v0, "ScreenColorTest"

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mIndex:I

    iput v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mCount:I

    .line 34
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->isShowNavigationBar:Z

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method private setBackground()V
    .locals 4

    .line 112
    iget v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mIndex:I

    sget-object v1, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->COLOR_ARRAY:[I

    array-length v2, v1

    if-lt v0, v2, :cond_2

    .line 113
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->isShowNavigationBar:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->passButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->failButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 116
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->hideNavigationBar()V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mPassButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mFailButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    :goto_0
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->storeRusult(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->finish()V

    .line 125
    :cond_1
    return-void

    .line 128
    :cond_2
    iget-boolean v2, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->isShowNavigationBar:Z

    if-eqz v2, :cond_3

    .line 129
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mRelativeLayout:Landroid/widget/RelativeLayout;

    aget v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 131
    :cond_3
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mContent:Landroid/widget/TextView;

    aget v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 133
    :goto_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 92
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->isShowNavigationBar:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->passButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 94
    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->storeRusult(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->finish()V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->failButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 97
    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->storeRusult(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->finish()V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mPassButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 102
    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->storeRusult(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->finish()V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mFailButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 105
    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->storeRusult(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->finish()V

    .line 109
    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 46
    invoke-static {p0}, Lcom/sprd/validationtools/utils/ValidationToolsUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->isShowNavigationBar:Z

    .line 47
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShowNavigationBar=:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->isShowNavigationBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->isShowNavigationBar:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 49
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->setContentView(I)V

    .line 50
    const v0, 0x7f05001c

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 51
    const v0, 0x7f050077

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->passButton:Landroid/widget/Button;

    .line 52
    const v0, 0x7f05004d

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->failButton:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->passButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->failButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->passButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->failButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mContent:Landroid/widget/TextView;

    .line 59
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 60
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mContent:Landroid/widget/TextView;

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 61
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mContent:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->setContentView(Landroid/view/View;)V

    .line 63
    :goto_0
    new-instance v0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest$1;-><init>(Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mRunnable:Ljava/lang/Runnable;

    .line 75
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mPassButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mFailButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 77
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->setBackground()V

    .line 78
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method public onDestroy()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 140
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 82
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 83
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->isShowNavigationBar:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mPassButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mFailButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->hideNavigationBar()V

    .line 88
    :cond_0
    return-void
.end method
