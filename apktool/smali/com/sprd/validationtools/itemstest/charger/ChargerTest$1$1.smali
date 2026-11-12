.class Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;
.super Landroid/os/AsyncTask;
.source "ChargerTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->run()V
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
.field final synthetic this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    .line 57
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .line 61
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$mgetInputCurrentNewStep(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "testResult":Ljava/lang/String;
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .line 65
    move-object v0, p1

    .line 66
    .local v0, "testResult":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUpdate mChargerVoltage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmChargerVoltage(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBatteryTemperature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmBatteryTemperature(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", testResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChargerTest"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v1, "success"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x7d0

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmIsPlugUSB(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    const v6, 0x7f090053

    invoke-virtual {v2, v6}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/widget/TextView;

    move-result-object v1

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-virtual {v1, v3}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->storeRusult(Z)V

    .line 74
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmCompleteTest(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmUpdate(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmIsPlugUSB(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmRetryNum(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)I

    move-result v6

    add-int/2addr v6, v3

    invoke-static {v1, v6}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fputmRetryNum(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;I)V

    .line 81
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmRetryNum(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)I

    move-result v1

    const/4 v3, 0x5

    if-gt v1, v3, :cond_2

    .line 82
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v3, v3, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmUpdate(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retry test num:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v3, v3, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmRetryNum(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_2
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    const v3, 0x7f090052

    invoke-virtual {v2, v3}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->storeRusult(Z)V

    .line 88
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmCompleteTest(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 91
    :cond_3
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmUpdate(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    :goto_0
    return-void
.end method
