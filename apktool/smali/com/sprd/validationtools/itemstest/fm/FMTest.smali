.class public Lcom/sprd/validationtools/itemstest/fm/FMTest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "FMTest.java"


# static fields
.field private static final SYSTEM_FMRADIO_ACTIVITY:Ljava/lang/String; = "com.android.fmradio.FmMainActivity"

.field private static final SYSTEM_FMRADIO_PACKAGE:Ljava/lang/String; = "com.android.fmradio"

.field private static final TAG:Ljava/lang/String; = "FMTest"


# instance fields
.field private mContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/fm/FMTest;->mContent:Landroid/widget/TextView;

    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 59
    const-string v0, "ro.product.board"

    invoke-static {v0}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "board":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMTest board name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FMTest"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-eqz v0, :cond_0

    const-string v1, "512"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const/4 v1, 0x0

    return v1

    .line 64
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private staFmRadioIntent()V
    .locals 3

    .line 48
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.fmradio"

    const-string v2, "com.android.fmradio.FmMainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/fm/FMTest;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 55
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 35
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/fm/FMTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 38
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/fm/FMTest;->mContent:Landroid/widget/TextView;

    .line 39
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 40
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fm/FMTest;->mContent:Landroid/widget/TextView;

    const v1, 0x7f090077

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/fm/FMTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fm/FMTest;->mContent:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/fm/FMTest;->setContentView(Landroid/view/View;)V

    .line 42
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/fm/FMTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 43
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/fm/FMTest;->staFmRadioIntent()V

    .line 44
    return-void
.end method
