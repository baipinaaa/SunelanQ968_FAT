.class Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest$1;
.super Ljava/lang/Object;
.source "ScreenColorTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;

    .line 63
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest$1;->this$0:Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest$1;->this$0:Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->-$$Nest$fgetisShowNavigationBar(Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest$1;->this$0:Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->-$$Nest$sfgetCOLOR_ARRAY()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest$1;->this$0:Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;

    iget v2, v2, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest$1;->this$0:Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mContent:Landroid/widget/TextView;

    invoke-static {}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->-$$Nest$sfgetCOLOR_ARRAY()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest$1;->this$0:Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;

    iget v2, v2, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest$1;->this$0:Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;

    iget v1, v0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mIndex:I

    .line 71
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest$1;->this$0:Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;

    iget v1, v0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->mCount:I

    .line 72
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest$1;->this$0:Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;->-$$Nest$msetBackground(Lcom/sprd/validationtools/itemstest/lcd/ScreenColorTest;)V

    .line 73
    return-void
.end method
