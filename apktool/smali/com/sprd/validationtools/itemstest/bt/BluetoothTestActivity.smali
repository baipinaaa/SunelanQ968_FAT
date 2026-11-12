.class public Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "BluetoothTestActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothTestActivity"


# instance fields
.field private btTestUtil:Lcom/sprd/validationtools/utils/BtTestUtil;

.field private mBluetoothDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private tvBtAddr:Landroid/widget/TextView;

.field private tvBtDeviceList:Landroid/widget/TextView;

.field private tvBtState:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetbtTestUtil(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)Lcom/sprd/validationtools/utils/BtTestUtil;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->btTestUtil:Lcom/sprd/validationtools/utils/BtTestUtil;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothDeviceList(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->mBluetoothDeviceList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettvBtAddr(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->tvBtAddr:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettvBtDeviceList(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->tvBtDeviceList:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettvBtState(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->tvBtState:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->mBluetoothDeviceList:Ljava/util/List;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->tvBtAddr:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->tvBtState:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->tvBtDeviceList:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->btTestUtil:Lcom/sprd/validationtools/utils/BtTestUtil;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->btTestUtil:Lcom/sprd/validationtools/utils/BtTestUtil;

    invoke-virtual {v0}, Lcom/sprd/validationtools/utils/BtTestUtil;->stopTest()V

    .line 176
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onBackPressed()V

    .line 177
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 156
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->btTestUtil:Lcom/sprd/validationtools/utils/BtTestUtil;

    invoke-virtual {v0}, Lcom/sprd/validationtools/utils/BtTestUtil;->stopTest()V

    .line 157
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onClick(Landroid/view/View;)V

    .line 158
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 45
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->removeButton()V

    .line 47
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sprd/validationtools/BaseActivity;->createButton(Z)V

    .line 48
    const-string v0, "BluetoothTestActivity"

    const-string v1, "+++++++enter bt+++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 52
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 55
    new-instance v1, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;)V

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->btTestUtil:Lcom/sprd/validationtools/utils/BtTestUtil;

    .line 141
    const v1, 0x7f050025

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->tvBtAddr:Landroid/widget/TextView;

    .line 142
    const v1, 0x7f050028

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->tvBtState:Landroid/widget/TextView;

    .line 143
    const v1, 0x7f0500d2

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->tvBtDeviceList:Landroid/widget/TextView;

    .line 146
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->btTestUtil:Lcom/sprd/validationtools/utils/BtTestUtil;

    invoke-virtual {v1}, Lcom/sprd/validationtools/utils/BtTestUtil;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->tvBtAddr:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->btTestUtil:Lcom/sprd/validationtools/utils/BtTestUtil;

    invoke-virtual {v2}, Lcom/sprd/validationtools/utils/BtTestUtil;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/sprd/validationtools/Safe;->btAddress(Landroid/bluetooth/BluetoothAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->tvBtAddr:Landroid/widget/TextView;

    const-string v2, "NA"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const-string v1, "onCreate mBluetoothAdapter == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 39
    invoke-static {}, Lcom/sprd/validationtools/utils/WcndUtils;->dumpCPLog()V

    .line 40
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 41
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 169
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 170
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->btTestUtil:Lcom/sprd/validationtools/utils/BtTestUtil;

    invoke-virtual {v0}, Lcom/sprd/validationtools/utils/BtTestUtil;->stopTest()V

    .line 171
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 162
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 163
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/bt/BluetoothTestActivity;->btTestUtil:Lcom/sprd/validationtools/utils/BtTestUtil;

    invoke-virtual {v0, p0}, Lcom/sprd/validationtools/utils/BtTestUtil;->startTest(Landroid/content/Context;)V

    .line 164
    return-void
.end method
