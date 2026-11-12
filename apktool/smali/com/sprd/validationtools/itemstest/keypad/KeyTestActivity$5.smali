.class Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$5;
.super Ljava/lang/Object;
.source "KeyTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
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

    .line 353
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$5;->this$0:Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$5;->this$0:Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->finish()V

    .line 357
    return-void
.end method
