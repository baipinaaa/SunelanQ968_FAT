.class Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1$2;
.super Ljava/lang/Object;
.source "SmartPATest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;

    .line 57
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1$2;->this$1:Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1$2;->this$1:Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->storeRusult(Z)V

    .line 61
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1$2;->this$1:Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->finish()V

    .line 62
    return-void
.end method
