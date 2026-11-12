.class Lcom/sprd/validationtools/testinfo/TestInfoSecondActivity$2;
.super Lcom/sprd/validationtools/utils/BtTestUtil;
.source "TestInfoSecondActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/testinfo/TestInfoSecondActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/testinfo/TestInfoSecondActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/testinfo/TestInfoSecondActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/testinfo/TestInfoSecondActivity;

    .line 288
    iput-object p1, p0, Lcom/sprd/validationtools/testinfo/TestInfoSecondActivity$2;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoSecondActivity;

    invoke-direct {p0}, Lcom/sprd/validationtools/utils/BtTestUtil;-><init>()V

    return-void
.end method


# virtual methods
.method public btDeviceListAdd(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 310
    return-void
.end method

.method public btDiscoveryFinished()V
    .locals 0

    .line 313
    return-void
.end method

.method public btStateChange(I)V
    .locals 3
    .param p1, "newState"    # I

    .line 291
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 299
    :pswitch_0
    goto :goto_0

    .line 294
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 295
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/sprd/validationtools/Safe;->btAddress(Landroid/bluetooth/BluetoothAdapter;)Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "localAddress":Ljava/lang/String;
    iget-object v2, p0, Lcom/sprd/validationtools/testinfo/TestInfoSecondActivity$2;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoSecondActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/testinfo/TestInfoSecondActivity;->-$$Nest$fgetmBLTtxtInfo(Lcom/sprd/validationtools/testinfo/TestInfoSecondActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    goto :goto_0

    .line 303
    .end local v0    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "localAddress":Ljava/lang/String;
    :pswitch_2
    goto :goto_0

    .line 301
    :pswitch_3
    nop

    .line 307
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
