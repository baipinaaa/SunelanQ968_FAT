.class Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10$1;
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

    .line 368
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10$1;->this$1:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10$1;->this$1:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$fgetmRadioReceiver(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 371
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10$1;->this$1:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$fputmCurLoopback(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;I)V

    .line 372
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10$1;->this$1:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$fgetmRadioSpeaker(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 373
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10$1;->this$1:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$fputmRadioOpenSuccess(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;Z)V

    .line 374
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10$1;->this$1:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$fgetmPendingPaused(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10$1;->this$1:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10$1;->this$1:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$fgetmCurLoopback(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$mrollbackMmiAudio(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;I)V

    goto :goto_0

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10$1;->this$1:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$10;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    const v1, 0x7f090160

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 381
    :goto_0
    return-void
.end method
