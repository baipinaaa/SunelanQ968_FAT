.class Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$6;
.super Ljava/lang/Object;
.source "KeyTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    .line 374
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->storeRusult(Z)V

    .line 377
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    const v2, 0x7f090181

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 379
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$6;->this$0:Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->finish()V

    .line 380
    return-void
.end method
