.class Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$5;
.super Ljava/lang/Object;
.source "WirelessChargerTest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->showTips()V
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

    .line 199
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 202
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->finish()V

    .line 203
    return-void
.end method
