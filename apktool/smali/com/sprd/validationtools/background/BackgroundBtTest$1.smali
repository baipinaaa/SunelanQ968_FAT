.class Lcom/sprd/validationtools/background/BackgroundBtTest$1;
.super Lcom/sprd/validationtools/utils/BtTestUtil;
.source "BackgroundBtTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/background/BackgroundBtTest;->startTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mIsPass:Z

.field final synthetic this$0:Lcom/sprd/validationtools/background/BackgroundBtTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/background/BackgroundBtTest;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sprd/validationtools/background/BackgroundBtTest;

    .line 31
    iput-object p1, p0, Lcom/sprd/validationtools/background/BackgroundBtTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundBtTest;

    invoke-direct {p0}, Lcom/sprd/validationtools/utils/BtTestUtil;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/background/BackgroundBtTest$1;->mIsPass:Z

    return-void
.end method


# virtual methods
.method public btDeviceListAdd(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundBtTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundBtTest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sprd/validationtools/background/BackgroundBtTest;->-$$Nest$fputtestResult(Lcom/sprd/validationtools/background/BackgroundBtTest;I)V

    .line 39
    iput-boolean v1, p0, Lcom/sprd/validationtools/background/BackgroundBtTest$1;->mIsPass:Z

    .line 40
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundBtTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundBtTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/background/BackgroundBtTest;->stopTest()V

    .line 43
    :cond_0
    return-void
.end method

.method public btDiscoveryFinished()V
    .locals 2

    .line 46
    iget-boolean v0, p0, Lcom/sprd/validationtools/background/BackgroundBtTest$1;->mIsPass:Z

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundBtTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundBtTest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sprd/validationtools/background/BackgroundBtTest;->-$$Nest$fputtestResult(Lcom/sprd/validationtools/background/BackgroundBtTest;I)V

    .line 48
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundBtTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundBtTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/background/BackgroundBtTest;->stopTest()V

    .line 50
    :cond_0
    return-void
.end method
