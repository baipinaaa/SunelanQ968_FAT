.class Lcom/sprd/validationtools/itemstest/otg/OTGTest$2;
.super Ljava/lang/Object;
.source "OTGTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/otg/OTGTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    .line 129
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$2;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 131
    invoke-static {}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "=== display OTG test succeed info! ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$2;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mounted:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const v2, 0x7f0900f4

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$2;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->result:[B

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$2;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$fgetmTextView(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$2;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-virtual {v1}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$2;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->storeRusult(Z)V

    .line 136
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$2;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->finish()V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$2;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$fgetmTextView(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$2;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-virtual {v3}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$2;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->storeRusult(Z)V

    .line 140
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$2;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->finish()V

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$2;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$fgetmTextView(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$2;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-virtual {v3}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$2;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->storeRusult(Z)V

    .line 145
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$2;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->finish()V

    .line 147
    :goto_0
    return-void
.end method
