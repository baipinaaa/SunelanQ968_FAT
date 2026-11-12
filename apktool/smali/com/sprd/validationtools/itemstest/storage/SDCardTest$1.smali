.class Lcom/sprd/validationtools/itemstest/storage/SDCardTest$1;
.super Ljava/lang/Object;
.source "SDCardTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/storage/SDCardTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/storage/SDCardTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/storage/SDCardTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    .line 93
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$1;->this$0:Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 95
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$1;->this$0:Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->-$$Nest$fgetTAG(Lcom/sprd/validationtools/itemstest/storage/SDCardTest;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=== display SDCard test info! === mounted[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$1;->this$0:Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mounted:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$1;->this$0:Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->result:[B

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mounted[1] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$1;->this$0:Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mounted:[B

    const/4 v4, 0x1

    aget-byte v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result[1] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$1;->this$0:Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->result:[B

    aget-byte v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$1;->this$0:Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mounted:[B

    aget-byte v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$1;->this$0:Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->result:[B

    aget-byte v0, v0, v3

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    .line 99
    .local v0, "successExSdcard":Z
    :goto_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$1;->this$0:Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mounted:[B

    aget-byte v1, v1, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$1;->this$0:Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->result:[B

    aget-byte v1, v1, v4

    if-nez v1, :cond_1

    move v3, v4

    :cond_1
    move v1, v3

    .line 100
    .local v1, "successInSdcard":Z
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$1;->this$0:Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    invoke-static {v2, v0, v1}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->-$$Nest$mcheckResultText(Lcom/sprd/validationtools/itemstest/storage/SDCardTest;ZZ)V

    .line 101
    const-wide/16 v2, 0x3e8

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 102
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$1;->this$0:Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    invoke-static {v4}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/storage/SDCardTest;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$1$1;

    invoke-direct {v5, p0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$1$1;-><init>(Lcom/sprd/validationtools/itemstest/storage/SDCardTest$1;)V

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 111
    :cond_2
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$1;->this$0:Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    invoke-static {v4}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/storage/SDCardTest;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$1$2;

    invoke-direct {v5, p0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$1$2;-><init>(Lcom/sprd/validationtools/itemstest/storage/SDCardTest$1;)V

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    :goto_1
    return-void
.end method
