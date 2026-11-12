.class Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TestResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/TestResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sprd/validationtools/modules/TestItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mViewHolder:Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;

.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/TestResultActivity;


# direct methods
.method public constructor <init>(Lcom/sprd/validationtools/itemstest/TestResultActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sprd/validationtools/modules/TestItem;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprd/validationtools/modules/TestItem;>;"
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->this$0:Lcom/sprd/validationtools/itemstest/TestResultActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 99
    nop

    .line 100
    const-string p1, "layout_inflater"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 101
    new-instance p1, Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;

    invoke-direct {p1}, Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;-><init>()V

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->mViewHolder:Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;

    .line 102
    iput-object p3, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->mItems:Ljava/util/ArrayList;

    .line 103
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 117
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 122
    if-nez p2, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f06003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->mViewHolder:Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;

    const v1, 0x7f050059

    .line 127
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;->textID:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->mViewHolder:Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;

    const v1, 0x7f0500a0

    .line 129
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;->textCase:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->mViewHolder:Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;

    const v1, 0x7f0500b2

    .line 131
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;->textResult:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->mViewHolder:Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;->textID:Landroid/widget/TextView;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->mViewHolder:Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;->textCase:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/validationtools/modules/TestItem;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->this$0:Lcom/sprd/validationtools/itemstest/TestResultActivity;

    invoke-virtual {v2}, Lcom/sprd/validationtools/itemstest/TestResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sprd/validationtools/modules/TestItem;->getDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprd/validationtools/modules/TestItem;

    invoke-virtual {v0}, Lcom/sprd/validationtools/modules/TestItem;->getTestResult()I

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->mViewHolder:Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;->textResult:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->this$0:Lcom/sprd/validationtools/itemstest/TestResultActivity;

    invoke-virtual {v1}, Lcom/sprd/validationtools/itemstest/TestResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090181

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->mViewHolder:Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;->textResult:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->this$0:Lcom/sprd/validationtools/itemstest/TestResultActivity;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/TestResultActivity;->mTestResultView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->this$0:Lcom/sprd/validationtools/itemstest/TestResultActivity;

    invoke-virtual {v2}, Lcom/sprd/validationtools/itemstest/TestResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->this$0:Lcom/sprd/validationtools/itemstest/TestResultActivity;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/TestResultActivity;->mTestResultView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprd/validationtools/modules/TestItem;

    invoke-virtual {v0}, Lcom/sprd/validationtools/modules/TestItem;->getTestResult()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 142
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->mViewHolder:Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;->textResult:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->this$0:Lcom/sprd/validationtools/itemstest/TestResultActivity;

    invoke-virtual {v1}, Lcom/sprd/validationtools/itemstest/TestResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090183

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->mViewHolder:Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;->textResult:Landroid/widget/TextView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->mViewHolder:Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;->textResult:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->this$0:Lcom/sprd/validationtools/itemstest/TestResultActivity;

    invoke-virtual {v1}, Lcom/sprd/validationtools/itemstest/TestResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090182

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ListAdapter;->mViewHolder:Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/TestResultActivity$ViewHolder;->textResult:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    :goto_0
    return-object p2
.end method
