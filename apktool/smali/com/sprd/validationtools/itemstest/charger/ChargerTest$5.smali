.class Lcom/sprd/validationtools/itemstest/charger/ChargerTest$5;
.super Ljava/lang/Object;
.source "ChargerTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->getInputCurrentNewStep()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    .line 198
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    const-string v1, "/sys/class/power_supply/battery/current_now"

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$mreadFile(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 202
    .local v0, "batteryCurrent":I
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmBatteryCurrentTextView(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ma"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    return-void
.end method
