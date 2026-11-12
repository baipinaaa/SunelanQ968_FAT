.class Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$4;
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

    .line 181
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 183
    const-string v0, "WirelessChargerTest"

    const-string v1, "=== getCurrent! ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$mstopCharge(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)V

    .line 186
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 190
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    const-string v2, "/sys/class/power_supply/battery/current_now"

    invoke-static {v1, v2}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$mreadFile(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v1, v2}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fputmElecBeforeCharge(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;I)V

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInputElectronicNewStep inputCurrent c1=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmElecBeforeCharge(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$mstartCharge(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)V

    .line 193
    return-void
.end method
