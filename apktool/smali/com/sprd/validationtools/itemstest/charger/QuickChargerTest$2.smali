.class Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$2;
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

    .line 138
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$2;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$2;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$2$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$2$1;-><init>(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$2;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    return-void
.end method
