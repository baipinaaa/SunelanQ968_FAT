.class Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;
.super Landroid/os/AsyncTask;
.source "WirelessChargerTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    .line 75
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .line 78
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$mgetInputElectronicNewStep(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "testResult":Ljava/lang/String;
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/String;

    .line 82
    move-object v0, p1

    .line 83
    .local v0, "testResult":Ljava/lang/String;
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    const-string v3, "/sys/class/power_supply/wireless/online"

    invoke-static {v2, v3}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$mreadFile(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fputchargerStateWireless(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;I)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chargerStateWireless = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetchargerStateWireless(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WirelessChargerTest"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mElectronicUpdate data,mChargerVoltage="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v3, v3, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmChargerVoltage(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",testResult:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v1, "success"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x7d0

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetchargerStateWireless(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 90
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    const v6, 0x7f090053

    invoke-virtual {v2, v6}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/widget/TextView;

    move-result-object v1

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-virtual {v1, v3}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->storeRusult(Z)V

    .line 93
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmCompleteTest(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmElectronicUpdate(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmIsPlugUSB_AC(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Z

    move-result v1

    const/4 v6, 0x0

    const/high16 v7, -0x10000

    const v8, 0x7f090052

    if-eqz v1, :cond_2

    .line 99
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-virtual {v2, v8}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-virtual {v1, v6}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->storeRusult(Z)V

    .line 102
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmCompleteTest(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetchargerStateWireless(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 104
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmRetryNum(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)I

    move-result v9

    add-int/2addr v9, v3

    invoke-static {v1, v9}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fputmRetryNum(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;I)V

    .line 105
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmRetryNum(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)I

    move-result v1

    const/16 v3, 0xf

    if-gt v1, v3, :cond_3

    .line 106
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v3, v3, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmRetryNum(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-static {v1, v3}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fputmWaitTime(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;I)V

    .line 108
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v3, v3, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmElectronicUpdate(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retry test num:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v3, v3, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmRetryNum(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",wait time is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v3, v3, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmWaitTime(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_3
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-virtual {v2, v8}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-virtual {v1, v6}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->storeRusult(Z)V

    .line 114
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmCompleteTest(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 117
    :cond_4
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmElectronicUpdate(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    :goto_0
    return-void
.end method
