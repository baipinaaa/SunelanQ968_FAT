.class Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$2$1;
.super Ljava/lang/Object;
.source "WirelessChargerTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$2;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$2;

    .line 128
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$2$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$2$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$2;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$2;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->finish()V

    .line 131
    return-void
.end method
