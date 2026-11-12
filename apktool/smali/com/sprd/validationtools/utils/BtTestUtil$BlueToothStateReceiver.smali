.class Lcom/sprd/validationtools/utils/BtTestUtil$BlueToothStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BtTestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/utils/BtTestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlueToothStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/utils/BtTestUtil;


# direct methods
.method private constructor <init>(Lcom/sprd/validationtools/utils/BtTestUtil;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/sprd/validationtools/utils/BtTestUtil$BlueToothStateReceiver;->this$0:Lcom/sprd/validationtools/utils/BtTestUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprd/validationtools/utils/BtTestUtil;Lcom/sprd/validationtools/utils/BtTestUtil$BlueToothStateReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/utils/BtTestUtil$BlueToothStateReceiver;-><init>(Lcom/sprd/validationtools/utils/BtTestUtil;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 129
    invoke-static {}, Lcom/sprd/validationtools/utils/BtTestUtil;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlueToothStateReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/sprd/validationtools/utils/BtTestUtil$BlueToothStateReceiver;->this$0:Lcom/sprd/validationtools/utils/BtTestUtil;

    invoke-static {v0}, Lcom/sprd/validationtools/utils/BtTestUtil;->-$$Nest$fgetmBluetoothAdapter(Lcom/sprd/validationtools/utils/BtTestUtil;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    invoke-static {}, Lcom/sprd/validationtools/utils/BtTestUtil;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mBluetoothAdapter == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/utils/BtTestUtil$BlueToothStateReceiver;->this$0:Lcom/sprd/validationtools/utils/BtTestUtil;

    invoke-static {v0}, Lcom/sprd/validationtools/utils/BtTestUtil;->-$$Nest$fgetmBluetoothAdapter(Lcom/sprd/validationtools/utils/BtTestUtil;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 135
    .local v0, "newState":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 141
    :pswitch_0
    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v1, p0, Lcom/sprd/validationtools/utils/BtTestUtil$BlueToothStateReceiver;->this$0:Lcom/sprd/validationtools/utils/BtTestUtil;

    invoke-virtual {v1}, Lcom/sprd/validationtools/utils/BtTestUtil;->btPageScan()V

    .line 138
    iget-object v1, p0, Lcom/sprd/validationtools/utils/BtTestUtil$BlueToothStateReceiver;->this$0:Lcom/sprd/validationtools/utils/BtTestUtil;

    invoke-static {v1}, Lcom/sprd/validationtools/utils/BtTestUtil;->-$$Nest$mbtStartDiscovery(Lcom/sprd/validationtools/utils/BtTestUtil;)V

    .line 139
    goto :goto_0

    .line 146
    :pswitch_2
    goto :goto_0

    .line 143
    :pswitch_3
    iget-object v1, p0, Lcom/sprd/validationtools/utils/BtTestUtil$BlueToothStateReceiver;->this$0:Lcom/sprd/validationtools/utils/BtTestUtil;

    invoke-static {v1}, Lcom/sprd/validationtools/utils/BtTestUtil;->-$$Nest$fgetmBluetoothAdapter(Lcom/sprd/validationtools/utils/BtTestUtil;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 144
    nop

    .line 151
    :goto_0
    iget-object v1, p0, Lcom/sprd/validationtools/utils/BtTestUtil$BlueToothStateReceiver;->this$0:Lcom/sprd/validationtools/utils/BtTestUtil;

    invoke-virtual {v1, v0}, Lcom/sprd/validationtools/utils/BtTestUtil;->btStateChange(I)V

    .line 152
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
