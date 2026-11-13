.class public Lcom/sprd/validationtools/FatAdapter;
.super Landroid/widget/BaseAdapter;
.source "FatAdapter.java"

.field private ctx:Landroid/content/Context;

.field private items:[Ljava/lang/String;


.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/sprd/validationtools/FatAdapter;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/sprd/validationtools/FatAdapter;->items:[Ljava/lang/String;

    return-void
.end method


.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sprd/validationtools/FatAdapter;->items:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method


.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sprd/validationtools/FatAdapter;->items:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method


.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method


.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sprd/validationtools/FatAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sprd/validationtools/FatAdapter;->items:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41900000

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v3, 0x30

    const/16 v4, 0x20

    const/16 v5, 0x30

    const/16 v0, 0x20

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v1
.end method
