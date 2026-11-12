.class Lcom/sprd/validationtools/itemstest/otg/OTGTest$3;
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

    .line 149
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$3;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 151
    invoke-static {}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "=== checkOTGdevices! ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$3;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$mcheckOTGdevices(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)V

    .line 153
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$3;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mounted:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$3;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$fgetmTextView(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$3;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-virtual {v1}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$3;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$3;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$3;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$fgetusbMassStoragePath(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$monScopedDirectoryTest(Lcom/sprd/validationtools/itemstest/otg/OTGTest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$3;->this$0:Lcom/sprd/validationtools/itemstest/otg/OTGTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->-$$Nest$mstartVtThread(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)V

    .line 161
    :cond_1
    :goto_0
    return-void
.end method
