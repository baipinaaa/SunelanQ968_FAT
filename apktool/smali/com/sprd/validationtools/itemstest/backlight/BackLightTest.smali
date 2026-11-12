.class public Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "BackLightTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final COLOR_ARRAY:[I

.field private static final MAX_BRIGHTNESS:I = 0xff

.field private static final TAG:Ljava/lang/String; = "BackLightTest"

.field private static final TEST_SCREEN_LIGHT:Z = true

.field private static final TIMES:I = 0x5


# instance fields
.field protected failButton:Landroid/widget/Button;

.field private isShowNavigationBar:Z

.field mContent:Landroid/widget/TextView;

.field private mCount:I

.field private mIndex:I

.field mPowerManager:Landroid/os/PowerManager;

.field protected mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mRunnable:Ljava/lang/Runnable;

.field mTimer:Ljava/util/Timer;

.field private mUiHandler:Landroid/os/Handler;

.field protected passButton:Landroid/widget/Button;


# direct methods
.method static bridge synthetic -$$Nest$fgetisShowNavigationBar(Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->isShowNavigationBar:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCount(Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCount(Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msetBackground(Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->setBackground()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartScreenLight(Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->startScreenLight()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->COLOR_ARRAY:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1000000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mPowerManager:Landroid/os/PowerManager;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->isShowNavigationBar:Z

    .line 33
    iput v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mIndex:I

    iput v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mCount:I

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;

    .line 26
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mPassButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;

    .line 26
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mFailButton:Landroid/widget/Button;

    return-object v0
.end method

.method private setBackground()V
    .locals 4

    .line 138
    iget v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mCount:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 140
    const/16 v0, 0x7f

    invoke-direct {p0, p0, v0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->setScreenLight(Landroid/app/Activity;I)V

    .line 142
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->isShowNavigationBar:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->passButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->failButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 145
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->storeRusult(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->finish()V

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->storeRusult(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->finish()V

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    return-void
.end method

.method private setScreenLight(Landroid/app/Activity;I)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "brightness"    # I

    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 48
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    int-to-float v1, p2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const v2, 0x3b808081

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 49
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 50
    return-void
.end method

.method private startScreenLight()V
    .locals 2

    .line 53
    :try_start_0
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->isShowNavigationBar:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 58
    :goto_0
    const/16 v0, 0xff

    iget v1, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mCount:I

    shr-int/2addr v0, v1

    invoke-direct {p0, p0, v0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->setScreenLight(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 62
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 108
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->isShowNavigationBar:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->passButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 110
    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->storeRusult(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->finish()V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->failButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 113
    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->storeRusult(Z)V

    .line 114
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->finish()V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mPassButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 118
    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->storeRusult(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->finish()V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mFailButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 121
    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->storeRusult(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->finish()V

    .line 125
    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 66
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 68
    invoke-static {p0}, Lcom/sprd/validationtools/utils/ValidationToolsUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->isShowNavigationBar:Z

    .line 69
    if-eqz v0, :cond_0

    .line 70
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->setContentView(I)V

    .line 71
    const v0, 0x7f05001c

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 72
    const v0, 0x7f050077

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->passButton:Landroid/widget/Button;

    .line 73
    const v0, 0x7f05004d

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->failButton:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->passButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->failButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mContent:Landroid/widget/TextView;

    .line 78
    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->setContentView(Landroid/view/View;)V

    .line 80
    :goto_0
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->setTitle(I)V

    .line 81
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mPowerManager:Landroid/os/PowerManager;

    .line 82
    new-instance v0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest$1;-><init>(Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mRunnable:Ljava/lang/Runnable;

    .line 103
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->setBackground()V

    .line 104
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method public onDestroy()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 164
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 129
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 130
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->isShowNavigationBar:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mPassButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->mFailButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->hideNavigationBar()V

    .line 135
    :cond_0
    return-void
.end method
