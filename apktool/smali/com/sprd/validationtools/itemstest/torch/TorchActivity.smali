.class public Lcom/sprd/validationtools/itemstest/torch/TorchActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "TorchActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mTurnOff:Landroid/widget/Button;

.field private mTurnOn:Landroid/widget/Button;

.field nodePath:Ljava/lang/String;

.field torch_flag:Z

.field writer:Ljava/io/BufferedWriter;


# direct methods
.method static bridge synthetic -$$Nest$mturnOffFlash(Lcom/sprd/validationtools/itemstest/torch/TorchActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->turnOffFlash()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mturnOnFlash(Lcom/sprd/validationtools/itemstest/torch/TorchActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->turnOnFlash()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 27
    const-string v0, "Torch Light Test"

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "/sys/class/leds/torch/brightness"

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->nodePath:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->writer:Ljava/io/BufferedWriter;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->torch_flag:Z

    return-void
.end method

.method private turnOffFlash()V
    .locals 1

    const-string v0, "echo 0 > /sys/class/leds/torch/brightness"

    invoke-static {v0}, Lcom/sprd/validationtools/Sh;->run(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->torch_flag:Z

    return-void
.end method


.method private turnOnFlash()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->torch_flag:Z

    const-string v0, "echo 255 > /sys/class/leds/torch/brightness"

    invoke-static {v0}, Lcom/sprd/validationtools/Sh;->run(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method



# virtual methods
.method public onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->removeButton()V

    .line 40
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sprd/validationtools/BaseActivity;->createButton(Z)V

    .line 41
    const v0, 0x7f06003f

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f0500ce

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->mTurnOn:Landroid/widget/Button;

    .line 44
    const v0, 0x7f0500cd

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->mTurnOff:Landroid/widget/Button;

    .line 46
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->mTurnOn:Landroid/widget/Button;

    new-instance v1, Lcom/sprd/validationtools/itemstest/torch/TorchActivity$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/torch/TorchActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/torch/TorchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->mTurnOff:Landroid/widget/Button;

    new-instance v1, Lcom/sprd/validationtools/itemstest/torch/TorchActivity$2;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/torch/TorchActivity$2;-><init>(Lcom/sprd/validationtools/itemstest/torch/TorchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method public onDestroy()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->turnOffFlash()V

    .line 77
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 78
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->turnOffFlash()V

    .line 69
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 70
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 63
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onStop()V

    .line 64
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->turnOffFlash()V

    .line 65
    return-void
.end method
