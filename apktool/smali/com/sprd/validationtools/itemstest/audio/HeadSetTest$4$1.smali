.class Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4$1;
.super Ljava/lang/Object;
.source "HeadSetTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4;

    .line 270
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4$1;->this$1:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4$1;->this$1:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$4;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->-$$Nest$mstep(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;I)V

    .line 273
    return-void
.end method
