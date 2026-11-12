.class Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$3;
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

    .line 192
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$3;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 194
    const-string v0, "QuickChargerTest"

    const-string v1, "=== checkVolatge! ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$3;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$minitView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)V

    .line 196
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$3;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$3;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mUpdataRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    return-void
.end method
