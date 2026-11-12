.class Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ItemListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListItemTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/ListItemTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemListViewAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sprd/validationtools/modules/TestItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/ListItemTestActivity;


# direct methods
.method public constructor <init>(Lcom/sprd/validationtools/itemstest/ListItemTestActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p2, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sprd/validationtools/modules/TestItem;",
            ">;)V"
        }
    .end annotation

    .line 112
    .local p3, "mItemsListView":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprd/validationtools/modules/TestItem;>;"
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ItemListViewAdapter;->this$0:Lcom/sprd/validationtools/itemstest/ListItemTestActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 113
    iput-object p3, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ItemListViewAdapter;->mItemList:Ljava/util/ArrayList;

    .line 114
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ItemListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 115
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ItemListViewAdapter;->mItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 132
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ItemListViewAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/validationtools/modules/TestItem;

    .line 139
    .local v1, "item":Lcom/sprd/validationtools/modules/TestItem;
    if-nez p2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ItemListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f06001f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_0
    move-object v0, p2

    .line 144
    :goto_0
    const v2, 0x7f050068

    .line 145
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 146
    .local v2, "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ItemListViewAdapter;->this$0:Lcom/sprd/validationtools/itemstest/ListItemTestActivity;

    invoke-virtual {v3}, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sprd/validationtools/modules/TestItem;->getDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v1}, Lcom/sprd/validationtools/modules/TestItem;->getTestResult()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 149
    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {v1}, Lcom/sprd/validationtools/modules/TestItem;->getTestResult()I

    move-result v3

    if-nez v3, :cond_2

    .line 151
    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 153
    :cond_2
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    :goto_1
    return-object v0
.end method
