.class public Lcom/sprd/validationtools/background/BackgroundTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "BackgroundTestActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BackgroundTestActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/sprd/validationtools/background/BackgroundTestActivity;->finish()V

    .line 43
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 22
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/background/BackgroundTestActivity;->setContentView(I)V

    .line 25
    const v0, 0x7f050023

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/background/BackgroundTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 26
    .local v0, "resultView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sprd/validationtools/background/BackgroundTestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "bgtestresult"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    const v1, 0x7f05002c

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/background/BackgroundTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 29
    .local v1, "btn":Landroid/widget/Button;
    new-instance v2, Lcom/sprd/validationtools/background/BackgroundTestActivity$1;

    invoke-direct {v2, p0}, Lcom/sprd/validationtools/background/BackgroundTestActivity$1;-><init>(Lcom/sprd/validationtools/background/BackgroundTestActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->removeButton()V

    .line 38
    return-void
.end method
