.class Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;
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

    .line 210
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 212
    const-string v0, "QuickChargerTest"

    const-string v1, "=== checkVolatge! ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-virtual {v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getChargerType()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fputmIsQuickCharger(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;Z)V

    .line 214
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmIsQuickCharger(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Z

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    if-eqz v1, :cond_4

    .line 215
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmBatteryPercent(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)I

    move-result v1

    const/16 v5, 0x5a

    const/high16 v6, -0x10000

    const v7, 0x7f090052

    if-lt v1, v5, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v5}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$mgetChargerTypeTip(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-virtual {v5, v7}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    const v1, 0x7f09001c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 219
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-virtual {v0, v2}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->storeRusult(Z)V

    .line 220
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmCompleteTest(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetupdateTime(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)I

    move-result v1

    if-nez v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$mstopCharge(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)V

    .line 225
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 229
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    const-string v2, "/sys/class/power_supply/battery/current_now"

    invoke-static {v1, v2}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$mreadFile(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v1, v2}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fputmElecBeforeCharge(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;I)V

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop charge mElecBeforeCharge=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmElecBeforeCharge(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$mstartCharge(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)V

    goto :goto_1

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetupdateTime(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_2

    .line 233
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v5}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$mgetChargerTypeTip(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-virtual {v5, v7}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-virtual {v0, v2}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->storeRusult(Z)V

    .line 236
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmCompleteTest(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetupdateTime(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fputupdateTime(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;I)V

    .line 239
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$minitView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)V

    .line 240
    const v0, 0x45dac000    # 7000.0f

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmChargerVoltage(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmElectronicUpdate(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 247
    :cond_4
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v0, v2}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fputupdateTime(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;I)V

    .line 248
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$4;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->mCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    :goto_2
    return-void
.end method
