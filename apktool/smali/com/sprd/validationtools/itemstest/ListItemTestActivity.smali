.class public Lcom/sprd/validationtools/itemstest/ListItemTestActivity;
.super Landroid/app/Activity;
.source "ListItemTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ItemListViewAdapter;,
        Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ListItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListItemTestActivity"


# instance fields
.field private mEngSqlite:Lcom/sprd/validationtools/sqlite/EngSqlite;

.field private mItemListViewAdapter:Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ItemListViewAdapter;

.field private mItemsListView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sprd/validationtools/modules/TestItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastTestItemIndex:I

.field private mListViewItem:Landroid/widget/ListView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmItemsListView(Lcom/sprd/validationtools/itemstest/ListItemTestActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->mItemsListView:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastTestItemIndex(Lcom/sprd/validationtools/itemstest/ListItemTestActivity;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->mLastTestItemIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->mItemsListView:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->mLastTestItemIndex:I

    return-void
.end method

.method private initAdapter()V
    .locals 10

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "item":Lcom/sprd/validationtools/modules/TestItem;
    invoke-static {p0}, Lcom/sprd/validationtools/sqlite/EngSqlite;->getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/sqlite/EngSqlite;

    move-result-object v1

    .line 61
    .local v1, "engSqlite":Lcom/sprd/validationtools/sqlite/EngSqlite;
    if-nez v1, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->mItemsListView:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 64
    invoke-static {v3}, Lcom/sprd/validationtools/modules/UnitTestItemList;->getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItemList;

    move-result-object v3

    .line 65
    invoke-virtual {v3}, Lcom/sprd/validationtools/modules/TestItemList;->getTestItemList()Ljava/util/ArrayList;

    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 66
    new-instance v2, Lcom/sprd/validationtools/modules/TestItem;

    const-class v3, Lcom/sprd/validationtools/itemstest/TestResultActivity;

    .line 67
    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v6

    const-class v3, Lcom/sprd/validationtools/itemstest/TestResultActivity;

    .line 68
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x2

    const v9, 0x7f09017f

    const-string v5, "TestResult"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sprd/validationtools/modules/TestItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 69
    .local v2, "testResult":Lcom/sprd/validationtools/modules/TestItem;
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->mItemsListView:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->mItemsListView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 72
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->mItemsListView:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/sprd/validationtools/modules/TestItem;

    .line 73
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->mItemsListView:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sprd/validationtools/modules/TestItem;

    invoke-virtual {v4}, Lcom/sprd/validationtools/modules/TestItem;->getTestClassName()Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-virtual {v1, v4}, Lcom/sprd/validationtools/sqlite/EngSqlite;->getTestListItemStatus(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sprd/validationtools/modules/TestItem;->setTestResult(I)V

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ItemListViewAdapter;

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->mItemsListView:Ljava/util/ArrayList;

    invoke-direct {v3, p0, p0, v4}, Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ItemListViewAdapter;-><init>(Lcom/sprd/validationtools/itemstest/ListItemTestActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->mItemListViewAdapter:Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ItemListViewAdapter;

    .line 77
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 80
    if-nez p2, :cond_0

    .line 81
    iget v0, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->mLastTestItemIndex:I

    .line 83
    .local v0, "position":I
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->mItemsListView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/validationtools/modules/TestItem;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->mEngSqlite:Lcom/sprd/validationtools/sqlite/EngSqlite;

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->mItemsListView:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprd/validationtools/modules/TestItem;

    .line 85
    invoke-virtual {v3}, Lcom/sprd/validationtools/modules/TestItem;->getTestClassName()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {v2, v3}, Lcom/sprd/validationtools/sqlite/EngSqlite;->getTestListItemStatus(Ljava/lang/String;)I

    move-result v2

    .line 83
    invoke-virtual {v1, v2}, Lcom/sprd/validationtools/modules/TestItem;->setTestResult(I)V

    .line 86
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->mItemListViewAdapter:Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ItemListViewAdapter;

    invoke-virtual {v1}, Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ItemListViewAdapter;->notifyDataSetChanged()V

    .line 88
    .end local v0    # "position":I
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {p0}, Lcom/sprd/validationtools/sqlite/EngSqlite;->getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/sqlite/EngSqlite;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->mEngSqlite:Lcom/sprd/validationtools/sqlite/EngSqlite;

    .line 43
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f050014

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->mListViewItem:Landroid/widget/ListView;

    .line 45
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->initAdapter()V

    .line 46
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->mListViewItem:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->mItemListViewAdapter:Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ItemListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->mListViewItem:Landroid/widget/ListView;

    new-instance v1, Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ListItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ListItemClickListener;-><init>(Lcom/sprd/validationtools/itemstest/ListItemTestActivity;Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ListItemClickListener-IA;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 49
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 50
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method protected onDestroy()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->mItemsListView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 56
    return-void
.end method
