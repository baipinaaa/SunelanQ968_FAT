.class Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$1;
.super Ljava/lang/Object;
.source "HeadSetTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    .line 80
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick isRollbackStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$fgetisRollbackStarted(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadSetTest"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$fgetisRollbackStarted(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$mstep(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;I)V

    .line 85
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$mstartMmiAudio(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)V

    .line 86
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$fputisRollbackStarted(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;Z)V

    .line 88
    :cond_0
    return-void
.end method
