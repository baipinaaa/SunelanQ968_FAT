.class Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;
.super Landroid/content/BroadcastReceiver;
.source "WirelessChargerTest.java"


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

    .line 286
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 289
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    const-string v1, "status"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 292
    .local v3, "status":I
    const-string v4, "plugged"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 293
    .local v5, "plugged":I
    const-string v6, "voltage"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 294
    .local v6, "voltage":I
    const-string v7, ""

    .line 295
    .local v7, "statusString":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 309
    :pswitch_0
    iget-object v8, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-virtual {v8}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09004c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 310
    goto :goto_0

    .line 306
    :pswitch_1
    iget-object v8, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-virtual {v8}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09004f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 307
    goto :goto_0

    .line 303
    :pswitch_2
    iget-object v8, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-virtual {v8}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090049

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 304
    goto :goto_0

    .line 300
    :pswitch_3
    iget-object v8, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-virtual {v8}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090048

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 301
    goto :goto_0

    .line 297
    :pswitch_4
    iget-object v8, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-virtual {v8}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090055

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 298
    nop

    .line 314
    :goto_0
    const/16 v8, 0x8

    const/4 v9, 0x1

    packed-switch v5, :pswitch_data_1

    .line 326
    iget-object v8, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    const-string v10, "/sys/class/power_supply/wireless/online"

    invoke-static {v8, v10}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$mreadFile(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v8, v10}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fputchargerStateWireless(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;I)V

    .line 327
    iget-object v8, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v8}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v10, -0x1

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    iget-object v8, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v8}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetchargerStateWireless(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)I

    move-result v8

    if-ne v8, v9, :cond_0

    .line 329
    iget-object v8, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-virtual {v8}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090057

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fputmPluggeString(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;Ljava/lang/String;)V

    .line 330
    iget-object v8, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v8}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    const v10, 0x7f090058

    invoke-virtual {v9, v10}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v8, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v8}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 321
    :pswitch_5
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v2, v9}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fputmIsPlugUSB_AC(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;Z)V

    .line 322
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-virtual {v2}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090056

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fputmPluggeString(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    goto :goto_1

    .line 316
    :pswitch_6
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v2, v9}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fputmIsPlugUSB_AC(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;Z)V

    .line 317
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-virtual {v2}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090047

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fputmPluggeString(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;Ljava/lang/String;)V

    .line 318
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    goto :goto_1

    .line 333
    :cond_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-virtual {v2}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09004e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fputmPluggeString(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;Ljava/lang/String;)V

    .line 337
    :goto_1
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetstatusTextView(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetpluggedTextView(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v8, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v8}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmPluggeString(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetvoltageTextView(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mv"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    const-string v8, "/sys/class/power_supply/battery/current_now"

    invoke-static {v2, v8}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$mreadFile(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    div-int/lit16 v8, v8, 0x3e8

    int-to-float v8, v8

    invoke-static {v2, v8}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fputmBatteryElectronic(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;F)V

    .line 341
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmBatteryElectronicTextView(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v9}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmBatteryElectronic(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ma"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest$6;->this$0:Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;->-$$Nest$fgetmPluggeString(Lcom/sprd/validationtools/itemstest/charger/WirelessChargerTest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v3    # "status":I
    .end local v5    # "plugged":I
    .end local v6    # "voltage":I
    .end local v7    # "statusString":Ljava/lang/String;
    :cond_1
    return-void

    nop

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
