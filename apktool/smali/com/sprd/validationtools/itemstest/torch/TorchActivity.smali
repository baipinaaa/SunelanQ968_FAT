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
    .locals 3

    .line 107
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->torch_flag:Z

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->createButton(Z)V

    .line 111
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->nodePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->writer:Ljava/io/BufferedWriter;

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "value":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "strValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v0    # "value":I
    .end local v1    # "strValue":Ljava/lang/String;
    :try_start_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->writer:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .end local v0    # "e":Ljava/io/IOException;
    :try_start_3
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->writer:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 127
    :cond_1
    :goto_0
    goto :goto_1

    .line 125
    :catch_1
    move-exception v0

    .line 126
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 129
    :goto_1
    return-void

    .line 122
    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->writer:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_2

    .line 123
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 127
    :cond_2
    goto :goto_3

    .line 125
    :catch_2
    move-exception v1

    .line 126
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    throw v0
.end method

.method private turnOnFlash()V
    .locals 4

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->torch_flag:Z

    .line 82
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "turnOnFlash1"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->nodePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->writer:Ljava/io/BufferedWriter;

    .line 84
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "turnOnFlash2"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x1

    .line 86
    .local v0, "value":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "strValue":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "turnOnFlash3"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 89
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "turnOnFlash4"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 91
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "turnOnFlash5"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v0    # "value":I
    .end local v1    # "strValue":Ljava/lang/String;
    :try_start_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->writer:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .end local v0    # "e":Ljava/io/IOException;
    :try_start_3
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->writer:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 101
    :cond_0
    :goto_0
    goto :goto_1

    .line 99
    :catch_1
    move-exception v0

    .line 100
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 104
    :goto_1
    return-void

    .line 96
    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/torch/TorchActivity;->writer:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 101
    :cond_1
    goto :goto_3

    .line 99
    :catch_2
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
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
