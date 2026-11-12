.class Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10$2;
.super Ljava/lang/Object;
.source "PhoneLoopBackTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;

    .line 384
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10$2;->this$1:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10$2;->this$1:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$fgetmPendingPaused(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10$2;->this$1:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    const v1, 0x7f090161

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 391
    :cond_0
    return-void
.end method
