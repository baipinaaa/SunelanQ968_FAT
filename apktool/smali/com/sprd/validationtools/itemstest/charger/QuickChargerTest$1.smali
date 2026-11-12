.class Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;
.super Ljava/lang/Object;
.source "QuickChargerTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    .line 88
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    new-instance v1, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;-><init>(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;)V

    iput-object v1, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->task:Landroid/os/AsyncTask;

    .line 134
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->task:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 135
    return-void
.end method
