.class public Lcom/sprd/validationtools/itemstest/TestResultActivity;
.super Landroid/app/Activity;
.source "TestResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;,
        Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TestResultActivity"


# instance fields
.field private mBit:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEngSqlite:Lcom/sprd/validationtools/sqlite/EngSqlite;

.field public mHandler:Landroid/os/Handler;

.field public mTestResultView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBit(Lcom/sprd/validationtools/itemstest/TestResultActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity;->mBit:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBit(Lcom/sprd/validationtools/itemstest/TestResultActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity;->mBit:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private setSuccess(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 155
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sprd/validationtools/itemstest/TestResultActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/sprd/validationtools/itemstest/TestResultActivity$2;-><init>(Lcom/sprd/validationtools/itemstest/TestResultActivity;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 199
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 200
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f06003e

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/TestResultActivity;->setContentView(I)V

    .line 43
    iput-object p0, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {p0}, Lcom/sprd/validationtools/sqlite/EngSqlite;->getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/sqlite/EngSqlite;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity;->mEngSqlite:Lcom/sprd/validationtools/sqlite/EngSqlite;

    .line 45
    const v0, 0x7f050069

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/TestResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 46
    .local v0, "listView":Landroid/widget/ListView;
    new-instance v1, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity;->mEngSqlite:Lcom/sprd/validationtools/sqlite/EngSqlite;

    .line 47
    invoke-static {p0}, Lcom/sprd/validationtools/modules/UnitTestItemList;->getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItemList;

    move-result-object v4

    .line 48
    invoke-virtual {v4}, Lcom/sprd/validationtools/modules/TestItemList;->getTestItemList()Ljava/util/ArrayList;

    move-result-object v4

    .line 47
    invoke-virtual {v3, v4}, Lcom/sprd/validationtools/sqlite/EngSqlite;->queryData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;-><init>(Lcom/sprd/validationtools/itemstest/TestResultActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 49
    .local v1, "listAdapter":Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    const v2, 0x7f0500b4

    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/itemstest/TestResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity;->mTestResultView:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/TestResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "start_time"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 52
    .local v2, "time":J
    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 53
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/sprd/validationtools/itemstest/TestResultActivity$1;

    invoke-direct {v5, p0, v2, v3}, Lcom/sprd/validationtools/itemstest/TestResultActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/TestResultActivity;J)V

    const-wide/16 v6, 0x258

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/TestResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 63
    .local v4, "window":Landroid/view/Window;
    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 64
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity;->mEngSqlite:Lcom/sprd/validationtools/sqlite/EngSqlite;

    invoke-virtual {v0}, Lcom/sprd/validationtools/sqlite/EngSqlite;->querySystemFailCount()I

    move-result v0

    .line 74
    .local v0, "failCount":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 75
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sprd/validationtools/itemstest/TestResultActivity;->setSuccess(Z)V

    .line 76
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity;->mTestResultView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/TestResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity;->mTestResultView:Landroid/widget/TextView;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-direct {p0, v1}, Lcom/sprd/validationtools/itemstest/TestResultActivity;->setSuccess(Z)V

    .line 82
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    return-void
.end method
