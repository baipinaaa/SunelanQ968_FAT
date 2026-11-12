.class Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;
.super Lcom/sprd/validationtools/utils/WifiTestUtil;
.source "WifiTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;
    .param p2, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .line 98
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-direct {p0, p2}, Lcom/sprd/validationtools/utils/WifiTestUtil;-><init>(Landroid/net/wifi/WifiManager;)V

    return-void
.end method


# virtual methods
.method public wifiDeviceListChange(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 126
    .local p1, "wifiDeviceList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez p1, :cond_0

    .line 127
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    .line 131
    .local v0, "mFind5GFlag":Z
    const/4 v1, 0x0

    .line 132
    .local v1, "mFind24GFlag":Z
    const/4 v2, 0x0

    .line 133
    .local v2, "count":I
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fgettvWifiDeviceList(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifiDeviceListChange mIs5GHzBandSupported="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-static {v4}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fgetmIs5GHzBandSupported(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WifiTestActivity"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 137
    .local v5, "result":Landroid/net/wifi/ScanResult;
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fgettvWifiDeviceList(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "device name: "

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fgettvWifiDeviceList(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fgettvWifiDeviceList(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "\nsignal level: "

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fgettvWifiDeviceList(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget v7, v5, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fgettvWifiDeviceList(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wifiDeviceListChange result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fgetmIs5GHzBandSupported(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    .line 144
    iget v6, v5, Landroid/net/wifi/ScanResult;->frequency:I

    .line 145
    .local v6, "frequency":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wifiDeviceListChange frequency"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v8, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-static {v8, v6}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$mis5GHz(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 147
    const-string v8, "is support 5GHz"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x1

    goto :goto_1

    .line 150
    :cond_1
    const/4 v1, 0x1

    .line 152
    :goto_1
    iget-object v8, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    move v9, v7

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    invoke-static {v8, v9}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fputmFindFlag(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;Z)V

    .line 153
    .end local v6    # "frequency":I
    goto :goto_3

    .line 154
    :cond_3
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-static {v6, v7}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fputmFindFlag(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;Z)V

    .line 157
    :goto_3
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fgetmFindFlag(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 158
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-virtual {v3}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->testFinish()V

    .line 159
    goto :goto_4

    .line 162
    :cond_4
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 163
    add-int/lit8 v2, v2, 0x1

    .line 164
    const/4 v6, 0x2

    if-lt v2, v6, :cond_5

    .line 165
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-static {v6, v7}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fputmFindFlag(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;Z)V

    .line 166
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    iget-object v6, v6, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-static {v7}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fgetmR(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    :cond_5
    goto/16 :goto_0

    .line 170
    :cond_6
    :goto_4
    return-void
.end method

.method public wifiStateChange(I)V
    .locals 2
    .param p1, "newState"    # I

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifiStateChange newState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiTestActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    packed-switch p1, :pswitch_data_0

    .line 118
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fgettvWifiState(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Wifi state Unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fgettvWifiState(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Wifi ON,Discovering..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fgetmWifiManager(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fputmIs5GHzBandSupported(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;Z)V

    .line 106
    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fgettvWifiState(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Wifi Opening"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fgettvWifiState(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Wifi OFF"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    goto :goto_0

    .line 111
    :pswitch_3
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;->-$$Nest$fgettvWifiState(Lcom/sprd/validationtools/itemstest/wifi/WifiTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Wifi Closing"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    nop

    .line 123
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
