.class Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$2;
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

    .line 126
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$2;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$2;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$2$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$2$1;-><init>(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$2;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    return-void
.end method
