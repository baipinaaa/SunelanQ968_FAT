.class Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;
.super Lcom/sprd/validationtools/utils/BtTestUtil;
.source "BluetoothTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCount:I

.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    .line 55
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-direct {p0}, Lcom/sprd/validationtools/utils/BtTestUtil;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->mCount:I

    return-void
.end method


# virtual methods
.method public btDeviceListAdd(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 82
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->-$$Nest$fgetmBluetoothDeviceList(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    return-void

    .line 86
    :cond_0
    if-eqz p1, :cond_5

    .line 87
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->-$$Nest$fgetmBluetoothDeviceList(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    .line 89
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v1, "deviceInfo":Ljava/lang/StringBuffer;
    const-string v2, "device name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======find bluetooth device => name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n address :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 98
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    const-string v3, "BluetoothTestActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->-$$Nest$fgettvBtDeviceList(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 91
    .end local v1    # "deviceInfo":Ljava/lang/StringBuffer;
    :cond_2
    :goto_0
    return-void

    .line 101
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    iget v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->mCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->mCount:I

    .line 103
    const/4 v2, 0x2

    if-lt v0, v2, :cond_4

    .line 104
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->storeRusult(Z)V

    .line 105
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->-$$Nest$fgetbtTestUtil(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)Lcom/sprd/validationtools/utils/BtTestUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/validationtools/utils/BtTestUtil;->stopTest()V

    .line 106
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->finish()V

    .line 110
    :cond_4
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->btFinished()V

    .line 112
    :cond_5
    return-void
.end method

.method public btDiscoveryFinished()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->-$$Nest$fgetmBluetoothDeviceList(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->-$$Nest$fgetmBluetoothDeviceList(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)Ljava/util/List;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    const v2, 0x7f090183

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 128
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->storeRusult(Z)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    const v2, 0x7f090181

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 133
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->storeRusult(Z)V

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->-$$Nest$fgetbtTestUtil(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)Lcom/sprd/validationtools/utils/BtTestUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/validationtools/utils/BtTestUtil;->stopTest()V

    .line 137
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->finish()V

    .line 138
    return-void
.end method

.method public btFinished()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->-$$Nest$fgetmBluetoothDeviceList(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->-$$Nest$fgetmBluetoothDeviceList(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)Ljava/util/List;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    const v1, 0x7f090183

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->storeRusult(Z)V

    .line 119
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->-$$Nest$fgetbtTestUtil(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)Lcom/sprd/validationtools/utils/BtTestUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/validationtools/utils/BtTestUtil;->stopTest()V

    .line 120
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->finish()V

    .line 122
    :cond_0
    return-void
.end method

.method public btStateChange(I)V
    .locals 3
    .param p1, "newState"    # I

    .line 58
    packed-switch p1, :pswitch_data_0

    .line 74
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->-$$Nest$fgettvBtState(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Bluetooth state Unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->-$$Nest$fgettvBtState(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Bluetooth Closing"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    goto :goto_0

    .line 60
    :pswitch_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->-$$Nest$fgettvBtState(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Bluetooth ON,Discovering..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->-$$Nest$fgettvBtAddr(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->-$$Nest$fgetbtTestUtil(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)Lcom/sprd/validationtools/utils/BtTestUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sprd/validationtools/utils/BtTestUtil;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    goto :goto_0

    .line 71
    :pswitch_2
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->-$$Nest$fgettvBtState(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Bluetooth Opening..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    goto :goto_0

    .line 68
    :pswitch_3
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->-$$Nest$fgettvBtState(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Bluetooth OFF"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    nop

    .line 77
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
