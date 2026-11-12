.class Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;
.super Landroid/content/BroadcastReceiver;
.source "QuickChargerTest.java"


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

    .line 359
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 362
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 364
    const-string v3, "status"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 365
    .local v5, "status":I
    const-string v6, "plugged"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 366
    .local v7, "plugged":I
    const-string v8, "voltage"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 367
    .local v8, "voltage":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "level"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 368
    .local v9, "current":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "scale"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 369
    .local v10, "total":I
    iget-object v11, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    mul-int/lit8 v12, v9, 0x64

    div-int/2addr v12, v10

    invoke-static {v11, v12}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fputmBatteryPercent(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;I)V

    .line 370
    const-string v11, ""

    .line 371
    .local v11, "statusString":Ljava/lang/String;
    const v12, 0x7f090049

    const v13, 0x7f090048

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 385
    :pswitch_0
    iget-object v14, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-virtual {v14}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f09004c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 386
    goto :goto_0

    .line 382
    :pswitch_1
    iget-object v14, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-virtual {v14}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f09004f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 383
    goto :goto_0

    .line 379
    :pswitch_2
    iget-object v14, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-virtual {v14}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 380
    goto :goto_0

    .line 376
    :pswitch_3
    iget-object v14, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-virtual {v14}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 377
    goto :goto_0

    .line 373
    :pswitch_4
    iget-object v14, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-virtual {v14}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090055

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 374
    nop

    .line 390
    :goto_0
    const-string v14, "QuickChargerTest"

    packed-switch v7, :pswitch_data_1

    .line 402
    iget-object v4, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    const/4 v15, -0x1

    invoke-static {v4, v15}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fputmPluggedType(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;I)V

    .line 403
    iget-object v4, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-virtual {v4}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09004e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fputmPluggeString(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;Ljava/lang/String;)V

    .line 404
    iget-object v4, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v4}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v12, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    const v13, 0x7f090058

    invoke-virtual {v12, v13}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v4, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v4}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 406
    iget-object v4, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v4}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    iget-object v4, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    const v12, 0x7f090048

    invoke-virtual {v4, v12}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 410
    iget-object v4, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-virtual {v4}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f090049

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 411
    const-string v4, "Correct the error displays charge status."

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 397
    :pswitch_5
    iget-object v12, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v12, v4}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fputmPluggedType(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;I)V

    .line 398
    iget-object v12, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-virtual {v12}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f090056

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fputmPluggeString(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;Ljava/lang/String;)V

    .line 399
    iget-object v12, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v12}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    goto :goto_1

    .line 392
    :pswitch_6
    iget-object v12, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fputmPluggedType(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;I)V

    .line 393
    iget-object v12, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-virtual {v12}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f090047

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fputmPluggeString(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;Ljava/lang/String;)V

    .line 394
    iget-object v12, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v12}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    :cond_0
    :goto_1
    iget-object v4, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v4}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetstatusTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mIsQuickCharger = "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v12, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-virtual {v12}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->getChargerType()Z

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v4, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v4}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmChargingProtocolTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v12, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v12}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmChargerType(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v4, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v4}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetpluggedTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v12, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v12}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmPluggeString(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v4, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v4}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmBatteryVoltageTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mv"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    invoke-static {}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$sfgetENABLE_BATTRY_TEMPERATURE()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 422
    iget-object v4, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    const-string v12, "/sys/class/power_supply/battery/current_now"

    invoke-static {v4, v12}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$mreadFile(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    div-int/lit16 v12, v12, 0x3e8

    int-to-float v12, v12

    invoke-static {v4, v12}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fputmBatteryElectronic(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;F)V

    .line 423
    iget-object v4, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v4}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmBatteryElectronicTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v13}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmBatteryElectronic(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ma"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v4, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    const-string v12, "sys/class/power_supply/sc27xx-fgu/temp"

    invoke-static {v4, v12}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$mgetDateFromNode(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;Ljava/lang/String;)F

    move-result v12

    invoke-static {v4, v12}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fputmBatteryTemperature(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;F)V

    .line 426
    iget-object v4, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v4}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmTemperatureTextView(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v13}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmBatteryTemperature(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)F

    move-result v13

    const/high16 v14, 0x41200000    # 10.0f

    div-float/2addr v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \u2103"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    :cond_1
    invoke-static {v3, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v3, v0, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest$5;->this$0:Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;->-$$Nest$fgetmPluggeString(Lcom/sprd/validationtools/itemstest/charger/QuickChargerTest;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .end local v5    # "status":I
    .end local v7    # "plugged":I
    .end local v8    # "voltage":I
    .end local v9    # "current":I
    .end local v10    # "total":I
    .end local v11    # "statusString":Ljava/lang/String;
    :cond_2
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
