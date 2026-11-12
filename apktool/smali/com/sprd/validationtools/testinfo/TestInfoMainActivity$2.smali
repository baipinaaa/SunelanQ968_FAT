.class Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$2;
.super Lcom/sprd/validationtools/utils/BtTestUtil;
.source "TestInfoMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    .line 289
    iput-object p1, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$2;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    invoke-direct {p0}, Lcom/sprd/validationtools/utils/BtTestUtil;-><init>()V

    return-void
.end method


# virtual methods
.method public btDeviceListAdd(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 311
    return-void
.end method

.method public btDiscoveryFinished()V
    .locals 0

    .line 314
    return-void
.end method

.method public btStateChange(I)V
    .locals 3
    .param p1, "newState"    # I

    .line 292
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 300
    :pswitch_0
    goto :goto_0

    .line 295
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 296
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/sprd/validationtools/Safe;->btAddress(Landroid/bluetooth/BluetoothAdapter;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "localAddress":Ljava/lang/String;
    iget-object v2, p0, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity$2;->this$0:Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;->-$$Nest$fgetmBLTtxtInfo(Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    goto :goto_0

    .line 304
    .end local v0    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "localAddress":Ljava/lang/String;
    :pswitch_2
    goto :goto_0

    .line 302
    :pswitch_3
    nop

    .line 308
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
