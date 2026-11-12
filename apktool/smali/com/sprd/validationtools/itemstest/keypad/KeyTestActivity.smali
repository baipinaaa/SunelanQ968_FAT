.class public Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "KeyTestActivity.java"


# static fields
.field private static final COLUMNCOUNT:I = 0x4

.field private static final KEY_EVENT_APP_SWITCH:I = 0xd

.field private static final KEY_EVENT_BACK:I = 0xc

.field private static final KEY_EVENT_HOME:I = 0xb

.field private static final KEY_EVENT_VOLUME_DOWN:I = 0xf

.field private static final KEY_EVENT_VOLUME_UP:I = 0xe

.field private static final TAG:Ljava/lang/String; = "KeyTestActivity"

.field private static final TEST_TIMEOUT:J = 0xea60L


# instance fields
.field private isHideCamera:Z

.field private isShowNavigationBar:Z

.field private keyPressedFlag:B

.field private keySupportFlag:B

.field private mAiButton:Landroid/widget/Button;

.field private mBackButton:Landroid/widget/ImageButton;

.field private mCameraButton:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field private mHasPhysicalNavigationKey:Z

.field private mHomeButton:Landroid/widget/ImageButton;

.field private mKeyEventHandler:Landroid/os/Handler;

.field private mMenuButton:Landroid/widget/ImageButton;

.field private mPressedKeyCount:I

.field private mSupportKeyCount:I

.field private mSupportkeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field public mTimeOutRunnable:Ljava/lang/Runnable;

.field private mVolumeDownButton:Landroid/widget/ImageButton;

.field private mVolumeUpButton:Landroid/widget/ImageButton;

.field public shouldBack:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetisHideCamera(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->isHideCamera:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyEventHandler(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mKeyEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisHideCamera(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->isHideCamera:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msendKey(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->sendKey(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowKey(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->showKey(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keyPressedFlag:B

    .line 41
    iput-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keySupportFlag:B

    .line 42
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->isHideCamera:Z

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mHasPhysicalNavigationKey:Z

    .line 44
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->isShowNavigationBar:Z

    .line 46
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mHandler:Landroid/os/Handler;

    .line 47
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->shouldBack:Z

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mSupportkeys:Ljava/util/HashMap;

    .line 50
    iput v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mSupportKeyCount:I

    .line 51
    iput v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mPressedKeyCount:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mAiButton:Landroid/widget/Button;

    .line 63
    new-instance v0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mKeyEventHandler:Landroid/os/Handler;

    .line 374
    new-instance v0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$6;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$6;-><init>(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mTimeOutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 105
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v3, Landroid/widget/GridLayout;

    invoke-direct {v3, v1}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    .line 106
    .local v3, "gridLayout":Landroid/widget/GridLayout;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 107
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/GridLayout;->setFocusable(Z)V

    .line 110
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 111
    .local v5, "dm":Landroid/util/DisplayMetrics;
    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 113
    .local v6, "width":I
    nop

    .line 114
    const v7, 0x7f010007

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 115
    .local v7, "supportkeyNames":[Ljava/lang/String;
    const v8, 0x7f010006

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    .line 116
    .local v8, "supportkeyCodes":[I
    array-length v9, v7

    move v10, v4

    :goto_0
    const-string v11, "KeyTestActivity"

    if-ge v10, v9, :cond_0

    aget-object v12, v7, v10

    .line 117
    .local v12, "supportkeyName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "initView supportkeyName="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v12    # "supportkeyName":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 119
    :cond_0
    const/4 v9, 0x0

    .line 120
    .local v9, "i":I
    array-length v10, v8

    move v12, v4

    :goto_1
    if-ge v12, v10, :cond_2

    aget v13, v8, v12

    .line 121
    .local v13, "supportkeyCode":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "initView supportkeyCode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    array-length v14, v7

    if-lt v9, v14, :cond_1

    .line 123
    return-void

    .line 125
    :cond_1
    new-instance v14, Landroid/widget/Button;

    invoke-direct {v14, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 126
    .local v14, "button":Landroid/widget/Button;
    div-int/lit8 v15, v6, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setWidth(I)V

    .line 127
    const/4 v15, 0x2

    invoke-virtual {v14, v15, v15, v15, v15}, Landroid/widget/Button;->setPadding(IIII)V

    .line 128
    add-int/lit8 v15, v9, 0x1

    .end local v9    # "i":I
    .local v15, "i":I
    aget-object v9, v7, v9

    invoke-virtual {v14, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v14, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 131
    invoke-virtual {v3, v14}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 132
    iget-object v9, v0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mSupportkeys:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .end local v13    # "supportkeyCode":I
    .end local v14    # "button":Landroid/widget/Button;
    add-int/lit8 v12, v12, 0x1

    move v9, v15

    const/4 v4, 0x0

    goto :goto_1

    .line 134
    .end local v15    # "i":I
    .restart local v9    # "i":I
    :cond_2
    array-length v4, v8

    iput v4, v0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mSupportKeyCount:I

    .line 135
    const/4 v4, 0x0

    iput v4, v0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mPressedKeyCount:I

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initView mSupportKeyCount="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v10, v0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mSupportKeyCount:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ",mPressedKeyCount="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v10, v0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mPressedKeyCount:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {v0, v3}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->setContentView(Landroid/view/View;)V

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->removeButton()V

    .line 142
    iget-object v4, v0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mHandler:Landroid/os/Handler;

    iget-object v10, v0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/32 v11, 0xea60

    invoke-virtual {v4, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    return-void
.end method

.method private sendKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .line 94
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 95
    .local v0, "runtime":Ljava/lang/Runtime;
    invoke-static {p1}, Lcom/sprd/validationtools/Sh;->run(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    nop

    .end local v0    # "runtime":Ljava/lang/Runtime;
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private showKey(Z)V
    .locals 4
    .param p1, "hideCamera"    # Z

    .line 240
    invoke-static {p0}, Lcom/sprd/validationtools/Const;->isHomeSupport(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mHasPhysicalNavigationKey:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mHomeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 242
    iget-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keySupportFlag:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keySupportFlag:B

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mHomeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 251
    :goto_0
    invoke-static {p0}, Lcom/sprd/validationtools/Const;->isBackSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mHasPhysicalNavigationKey:Z

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 253
    iget-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keySupportFlag:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keySupportFlag:B

    goto :goto_1

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 262
    :goto_1
    invoke-static {p0}, Lcom/sprd/validationtools/Const;->isMenuSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mHasPhysicalNavigationKey:Z

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 264
    iget-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keySupportFlag:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keySupportFlag:B

    goto :goto_2

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 268
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCameraSupport:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sprd/validationtools/Const;->isCameraSupport()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " hideCamera:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "KeyTestActivity"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {}, Lcom/sprd/validationtools/Const;->isCameraSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 270
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 271
    iget-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keySupportFlag:B

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keySupportFlag:B

    goto :goto_3

    .line 272
    :cond_3
    if-eqz p1, :cond_4

    .line 273
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 275
    :cond_4
    :goto_3
    invoke-static {}, Lcom/sprd/validationtools/Const;->isVolumeUpSupport()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 276
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mVolumeUpButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 277
    iget-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keySupportFlag:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keySupportFlag:B

    .line 279
    :cond_5
    invoke-static {}, Lcom/sprd/validationtools/Const;->isVolumeDownSupport()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 280
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mVolumeDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 281
    iget-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keySupportFlag:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keySupportFlag:B

    .line 283
    :cond_6
    invoke-static {}, Lcom/sprd/validationtools/utils/ValidationToolsUtils;->isSupportAIKey()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 284
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mAiButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 285
    iget-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keySupportFlag:B

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keySupportFlag:B

    .line 287
    :cond_7
    return-void
.end method


# virtual methods
.method public checkDeviceHasNavigationBar(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 200
    nop

    .line 201
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    .line 202
    .local v0, "hasBackKey":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasBackKey=:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyTestActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-eqz v0, :cond_0

    .line 204
    const/4 v1, 0x1

    return v1

    .line 206
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 291
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onAttachedToWindow()V

    .line 292
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 147
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mContext:Landroid/content/Context;

    .line 149
    invoke-static {}, Lcom/sprd/validationtools/Const;->isSupportFeaturePhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0, p0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->initView(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 152
    :cond_0
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->setContentView(I)V

    .line 153
    const v0, 0x7f0900af

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->setTitle(I)V

    .line 154
    const v0, 0x7f050055

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mHomeButton:Landroid/widget/ImageButton;

    .line 155
    const v0, 0x7f05006b

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mMenuButton:Landroid/widget/ImageButton;

    .line 156
    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mBackButton:Landroid/widget/ImageButton;

    .line 157
    const v0, 0x7f0500fd

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mVolumeUpButton:Landroid/widget/ImageButton;

    .line 158
    const v0, 0x7f0500fc

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mVolumeDownButton:Landroid/widget/ImageButton;

    .line 159
    const v0, 0x7f050035

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mCameraButton:Landroid/widget/ImageButton;

    .line 160
    invoke-static {p0}, Lcom/sprd/validationtools/utils/ValidationToolsUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->isShowNavigationBar:Z

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShowNavigationBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->isShowNavigationBar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyTestActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->isShowNavigationBar:Z

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mHasPhysicalNavigationKey:Z

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHasPhysicalNavigationKey="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mHasPhysicalNavigationKey:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    iput-boolean v2, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->isHideCamera:Z

    .line 166
    invoke-direct {p0, v2}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->showKey(Z)V

    goto :goto_1

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->showHasCameraDialog()V

    .line 170
    :goto_1
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->isShowNavigationBar:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mPassButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mFailButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    :cond_3
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mAiButton:Landroid/widget/Button;

    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    :goto_2
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mHasPhysicalNavigationKey:Z

    const-wide/16 v1, 0xfa0

    if-eqz v0, :cond_4

    .line 181
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mKeyEventHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 183
    :cond_4
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mKeyEventHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 187
    :cond_5
    :goto_3
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method protected onDestroy()V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 371
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 372
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyTestActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {}, Lcom/sprd/validationtools/Const;->isSupportFeaturePhone()Z

    move-result v0

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mSupportkeys:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 299
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 300
    const-string v5, " onKeyDown is support key!"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {v0}, Landroid/widget/Button;->isPressed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 302
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setPressed(Z)V

    .line 303
    iget v5, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mPressedKeyCount:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mPressedKeyCount:I

    .line 305
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onKeyDown mPressedKeyCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mPressedKeyCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mSupportKeyCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mSupportKeyCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget v1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mPressedKeyCount:I

    iget v5, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mSupportKeyCount:I

    if-ne v1, v5, :cond_1

    .line 308
    invoke-virtual {p0, v4}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->storeRusult(Z)V

    .line 309
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$4;

    invoke-direct {v5, p0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$4;-><init>(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;)V

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 317
    :cond_1
    return v4

    .line 319
    .end local v0    # "button":Landroid/widget/Button;
    :cond_2
    const/4 v0, 0x3

    if-ne v0, p1, :cond_3

    .line 320
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mHomeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 321
    iget-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keyPressedFlag:B

    or-int/2addr v0, v4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keyPressedFlag:B

    goto/16 :goto_1

    .line 322
    :cond_3
    const/4 v0, 0x4

    if-ne v0, p1, :cond_5

    .line 323
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 324
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 325
    iget-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keyPressedFlag:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keyPressedFlag:B

    goto :goto_1

    .line 327
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/sprd/validationtools/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 329
    :cond_5
    const/16 v5, 0xbb

    if-eq v5, p1, :cond_a

    const/16 v5, 0x3e7

    if-ne p1, v5, :cond_6

    goto :goto_0

    .line 332
    :cond_6
    const/16 v0, 0x1b

    if-ne v0, p1, :cond_7

    .line 333
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 334
    iget-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keyPressedFlag:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keyPressedFlag:B

    goto :goto_1

    .line 335
    :cond_7
    const/16 v0, 0x18

    if-ne v0, p1, :cond_8

    .line 336
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mVolumeUpButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 337
    iget-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keyPressedFlag:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keyPressedFlag:B

    goto :goto_1

    .line 338
    :cond_8
    const/16 v0, 0x19

    if-ne v0, p1, :cond_9

    .line 339
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mVolumeDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 340
    iget-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keyPressedFlag:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keyPressedFlag:B

    goto :goto_1

    .line 343
    :cond_9
    const/16 v0, 0x2fe

    if-ne v0, p1, :cond_b

    .line 344
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mAiButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setPressed(Z)V

    .line 345
    iget-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keyPressedFlag:B

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keyPressedFlag:B

    goto :goto_1

    .line 330
    :cond_a
    :goto_0
    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 331
    iget-byte v5, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keyPressedFlag:B

    or-int/2addr v0, v5

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keyPressedFlag:B

    .line 347
    :cond_b
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keySupportFlag="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v5, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keySupportFlag:B

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " keyPressedFlag="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v5, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keyPressedFlag:B

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-byte v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keySupportFlag:B

    iget-byte v1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->keyPressedFlag:B

    if-ne v0, v1, :cond_c

    .line 349
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sprd/validationtools/BaseActivity;->shouldCanceled:Z

    .line 350
    invoke-virtual {p0, v4}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->storeRusult(Z)V

    .line 351
    const v1, 0x7f090183

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 353
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$5;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$5;-><init>(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 360
    :cond_c
    return v4
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 365
    invoke-super {p0, p1, p2}, Lcom/sprd/validationtools/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .line 191
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 192
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->isShowNavigationBar:Z

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->hideNavigationBar()V

    .line 195
    :cond_0
    return-void
.end method

.method protected showHasCameraDialog()V
    .locals 3

    .line 210
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 211
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 212
    const v1, 0x7f09009d

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 213
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$3;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$3;-><init>(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;)V

    .line 214
    const v2, 0x7f09009c

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$2;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$2;-><init>(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;)V

    .line 225
    const v2, 0x7f0900e6

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 236
    .local v0, "cameraKeyDialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 237
    return-void
.end method
