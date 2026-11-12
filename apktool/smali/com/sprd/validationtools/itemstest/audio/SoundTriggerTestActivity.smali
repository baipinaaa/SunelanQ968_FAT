.class public Lcom/sprd/validationtools/itemstest/audio/SoundTriggerTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "SoundTriggerTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<mpv:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sprd/validationtools/BaseActivity;"
    }
.end annotation


# static fields
.field private static final MODULE_ID:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SoundTriggerTest"


# instance fields
.field private data:[B

.field private data2:[B

.field private mBtnStart:Landroid/widget/Button;

.field private mTxNote:Landroid/widget/TextView;

.field private soundModelHandle:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 29
    .local p0, "this":Lcom/sprd/validationtools/itemstest/audio/SoundTriggerTestActivity;, "Lcom/sprd/validationtools/itemstest/audio/SoundTriggerTestActivity<Tmpv;>;"
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 38
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/SoundTriggerTestActivity;->soundModelHandle:[I

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/SoundTriggerTestActivity;->data:[B

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/SoundTriggerTestActivity;->data2:[B

    return-void

    :array_0
    .array-data 1
        0x64t
        0x64t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xat
        0xbt
        0xct
        0xet
    .end array-data
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 172
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    .local p0, "this":Lcom/sprd/validationtools/itemstest/audio/SoundTriggerTestActivity;, "Lcom/sprd/validationtools/itemstest/audio/SoundTriggerTestActivity<Tmpv;>;"
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/SoundTriggerTestActivity;->setContentView(I)V

    .line 56
    const v0, 0x7f05002e

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/SoundTriggerTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/SoundTriggerTestActivity;->mBtnStart:Landroid/widget/Button;

    .line 57
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/SoundTriggerTestActivity;->mBtnStart:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 60
    const v0, 0x7f0500ea

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/audio/SoundTriggerTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/SoundTriggerTestActivity;->mTxNote:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f0900cd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    return-void
.end method
