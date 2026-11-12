.class Lcom/sprd/validationtools/itemstest/audio/SmartPATest$2;
.super Ljava/lang/Object;
.source "SmartPATest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    .line 82
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$2;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$2;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->startSmartpaTest()V

    .line 86
    return-void
.end method
