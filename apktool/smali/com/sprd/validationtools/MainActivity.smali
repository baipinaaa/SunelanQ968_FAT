.class public Lcom/sprd/validationtools/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

.implements Landroid/widget/AdapterView$OnItemClickListener;

.field private items:[Ljava/lang/String;


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u7cfb\u7edf\u6d4b\u8bd5"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u5355\u9879\u6d4b\u8bd5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u6d4b\u8bd5\u4fe1\u606f"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u7269\u6599\u4fe1\u606f"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u5bfc\u51fa\u6d4b\u8bd5\u7ed3\u679c"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sprd/validationtools/MainActivity;->items:[Ljava/lang/String;

    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/sprd/validationtools/FatAdapter;

    invoke-direct {v2, p0, v0}, Lcom/sprd/validationtools/FatAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method


.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    const-class v1, Lcom/sprd/validationtools/ItemListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_start

    :cond_0
    if-nez p3, :cond_1

    const-class v1, Lcom/sprd/validationtools/ItemListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "mode"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_start

    :cond_1
    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    const-class v1, Lcom/sprd/validationtools/TestInfoActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_start

    :cond_2
    const/4 v1, 0x3

    if-ne p3, v1, :cond_3

    const-class v1, Lcom/sprd/validationtools/MaterialInfoActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_start

    :cond_3
    const-class v1, Lcom/sprd/validationtools/ExportActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_start
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
