.class Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ListItemClickListener;
.super Ljava/lang/Object;
.source "ListItemTestActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/ListItemTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/ListItemTestActivity;


# direct methods
.method private constructor <init>(Lcom/sprd/validationtools/itemstest/ListItemTestActivity;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ListItemClickListener;->this$0:Lcom/sprd/validationtools/itemstest/ListItemTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprd/validationtools/itemstest/ListItemTestActivity;Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ListItemClickListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ListItemClickListener;-><init>(Lcom/sprd/validationtools/itemstest/ListItemTestActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 95
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ListItemClickListener;->this$0:Lcom/sprd/validationtools/itemstest/ListItemTestActivity;

    invoke-static {v0, p3}, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->-$$Nest$fputmLastTestItemIndex(Lcom/sprd/validationtools/itemstest/ListItemTestActivity;I)V

    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ListItemClickListener;->this$0:Lcom/sprd/validationtools/itemstest/ListItemTestActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->-$$Nest$fgetmItemsListView(Lcom/sprd/validationtools/itemstest/ListItemTestActivity;)Ljava/util/ArrayList;

    move-result-object v2

    .line 98
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprd/validationtools/modules/TestItem;

    invoke-virtual {v2}, Lcom/sprd/validationtools/modules/TestItem;->getTestClassName()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ListItemClickListener;->this$0:Lcom/sprd/validationtools/itemstest/ListItemTestActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->-$$Nest$fgetmItemsListView(Lcom/sprd/validationtools/itemstest/ListItemTestActivity;)Ljava/util/ArrayList;

    move-result-object v1

    .line 100
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/validationtools/modules/TestItem;

    invoke-virtual {v1}, Lcom/sprd/validationtools/modules/TestItem;->getTestName()Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string v2, "testname"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v1, "testindex"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/ListItemTestActivity$ListItemClickListener;->this$0:Lcom/sprd/validationtools/itemstest/ListItemTestActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 104
    return-void
.end method
