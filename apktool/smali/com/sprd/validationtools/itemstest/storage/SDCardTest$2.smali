.class Lcom/sprd/validationtools/itemstest/storage/SDCardTest$2;
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

    .line 267
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$2;->this$0:Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$2;->this$0:Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->-$$Nest$mcheckPhonStorageResult(Lcom/sprd/validationtools/itemstest/storage/SDCardTest;)V

    .line 270
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$2;->this$0:Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->-$$Nest$mcheckSdcardRessult(Lcom/sprd/validationtools/itemstest/storage/SDCardTest;)V

    .line 271
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$2;->this$0:Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/storage/SDCardTest;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$2;->this$0:Lcom/sprd/validationtools/itemstest/storage/SDCardTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->-$$Nest$fgetmRunnable(Lcom/sprd/validationtools/itemstest/storage/SDCardTest;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    return-void
.end method
