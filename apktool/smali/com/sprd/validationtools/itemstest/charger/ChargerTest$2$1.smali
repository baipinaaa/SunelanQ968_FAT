.class Lcom/sprd/validationtools/itemstest/charger/ChargerTest$2$1;
.super Ljava/lang/Object;
.source "ChargerTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/charger/ChargerTest$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$2;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/charger/ChargerTest$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sprd/validationtools/itemstest/charger/ChargerTest$2;

    .line 102
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$2$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$2$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$2;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$2;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->finish()V

    .line 105
    return-void
.end method
