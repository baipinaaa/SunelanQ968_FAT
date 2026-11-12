.class Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;
.super Landroid/os/AsyncTask;
.source "QuickChargerTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->run()V
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
.field final synthetic this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    .line 91
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .line 95
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$mgetInputElectronicNewStep(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "testResult":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "testResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickChargerTest"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 91
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .line 100
    move-object v0, p1

    .line 101
    .local v0, "testResult":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mElectronicUpdate data, mChargerVoltage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmChargerVoltage(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBatteryTemperature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmBatteryTemperature(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",testResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickChargerTest"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v1, "success"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x3e8

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmPluggedType(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)I

    move-result v1

    if-ne v3, v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v6, v6, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$mgetChargerTypeTip(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v6, v6, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    const v7, 0x7f090053

    invoke-virtual {v6, v7}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;

    move-result-object v1

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-virtual {v1, v3}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->storeRusult(Z)V

    .line 110
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmCompleteTest(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmElectronicUpdate(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmPluggedType(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)I

    move-result v1

    if-ne v3, v1, :cond_3

    .line 116
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmRetryNum(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)I

    move-result v6

    add-int/2addr v6, v3

    invoke-static {v1, v6}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fputmRetryNum(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;I)V

    .line 117
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmRetryNum(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)I

    move-result v1

    const/16 v3, 0x1e

    if-gt v1, v3, :cond_2

    .line 118
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v3, v3, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmRetryNum(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-static {v1, v3}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fputmWaitTime(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;I)V

    .line 120
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v3, v3, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmElectronicUpdate(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retry test num:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v3, v3, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmRetryNum(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",wait time is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v3, v3, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmWaitTime(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v3, v3, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$mgetChargerTypeTip(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v3, v3, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    const v6, 0x7f090052

    invoke-virtual {v3, v6}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->storeRusult(Z)V

    .line 126
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmCompleteTest(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 129
    :cond_3
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmElectronicUpdate(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    :goto_0
    return-void
.end method
