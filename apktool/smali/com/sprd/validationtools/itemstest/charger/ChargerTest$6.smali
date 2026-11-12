.class Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;
.super Landroid/content/BroadcastReceiver;
.source "ChargerTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/charger/ChargerTest;
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

    .line 277
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 280
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    const-string v1, "status"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 283
    .local v1, "status":I
    const-string v3, "plugged"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 284
    .local v3, "plugged":I
    const-string v4, "voltage"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 285
    .local v4, "batteryVoltage":I
    const-string v5, ""

    .line 286
    .local v5, "statusString":Ljava/lang/String;
    const-string v6, ""

    .line 287
    .local v6, "pluggeString":Ljava/lang/String;
    const v7, 0x7f090049

    const v8, 0x7f090048

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 301
    :pswitch_0
    iget-object v9, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-virtual {v9}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09004c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 302
    goto :goto_0

    .line 298
    :pswitch_1
    iget-object v9, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-virtual {v9}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09004f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 299
    goto :goto_0

    .line 295
    :pswitch_2
    iget-object v9, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-virtual {v9}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 296
    goto :goto_0

    .line 292
    :pswitch_3
    iget-object v9, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-virtual {v9}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 293
    goto :goto_0

    .line 289
    :pswitch_4
    iget-object v9, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-virtual {v9}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090055

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 290
    nop

    .line 306
    :goto_0
    const-string v9, "ChargerTest"

    const/4 v10, 0x1

    packed-switch v3, :pswitch_data_1

    .line 318
    iget-object v10, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v10, v2}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fputmIsPlugUSB(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;Z)V

    .line 319
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-virtual {v2}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v10, 0x7f09004e

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 320
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v10, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    const v11, 0x7f090058

    invoke-virtual {v10, v11}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v10, -0x1

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 322
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-virtual {v2, v8}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-virtual {v2}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 327
    const-string v2, "Correct the error displays charge status."

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 313
    :pswitch_5
    iget-object v7, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v7, v10}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fputmIsPlugUSB(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;Z)V

    .line 314
    iget-object v7, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-virtual {v7}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090056

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 315
    iget-object v7, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v7}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    goto :goto_1

    .line 308
    :pswitch_6
    iget-object v7, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v7, v10}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fputmIsPlugUSB(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;Z)V

    .line 309
    iget-object v7, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-virtual {v7}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090047

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 310
    iget-object v7, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v7}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "status:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "plugged:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmStatusTextView(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmPluggedTextView(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmBatteryVoltageTextView(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mv"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    const-string v7, "/sys/class/power_supply/battery/current_now"

    invoke-static {v2, v7}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$mreadFile(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    .line 336
    .local v2, "batteryCurrent":I
    iget-object v7, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v7}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmBatteryCurrentTextView(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ma"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v7, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    const-string v8, "sys/class/power_supply/battery/temp"

    invoke-static {v7, v8}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$mgetDataFromNode(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;Ljava/lang/String;)F

    move-result v8

    invoke-static {v7, v8}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fputmBatteryTemperature(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;F)V

    .line 338
    iget-object v7, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v7}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmTemperatureTextView(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/ChargerTest;

    invoke-static {v9}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->-$$Nest$fgetmBatteryTemperature(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)F

    move-result v9

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u2103"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    .end local v1    # "status":I
    .end local v2    # "batteryCurrent":I
    .end local v3    # "plugged":I
    .end local v4    # "batteryVoltage":I
    .end local v5    # "statusString":Ljava/lang/String;
    .end local v6    # "pluggeString":Ljava/lang/String;
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
