.class Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$3;
.super Ljava/lang/Object;
.source "WirelessChargerTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    .line 173
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$3;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 175
    const-string v0, "WirelessChargerTest"

    const-string v1, "=== checkVolatge! ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$3;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$minitView(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)V

    .line 177
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$3;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$3;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->mUpdataRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    return-void
.end method
