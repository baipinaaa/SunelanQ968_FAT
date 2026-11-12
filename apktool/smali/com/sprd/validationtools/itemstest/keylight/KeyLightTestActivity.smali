.class public Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "KeyLightTestActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field keylight_flag:Z

.field private mTurnOff:Landroid/widget/Button;

.field private mTurnOn:Landroid/widget/Button;

.field nodePath:Ljava/lang/String;

.field writer:Ljava/io/BufferedWriter;


# direct methods
.method static bridge synthetic -$$Nest$mturnOffFlash(Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->turnOffFlash()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mturnOnFlash(Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->turnOnFlash()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 27
    const-string v0, "Key Light Test"

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "/sys/class/leds/keyboard-backlight/brightness"

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->nodePath:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->writer:Ljava/io/BufferedWriter;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->keylight_flag:Z

    return-void
.end method

.method private turnOffFlash()V
    .locals 3

    .line 102
    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->keylight_flag:Z

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->createButton(Z)V

    .line 107
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->nodePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->writer:Ljava/io/BufferedWriter;

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "value":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "strValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v0    # "value":I
    .end local v1    # "strValue":Ljava/lang/String;
    :try_start_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->writer:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    .end local v0    # "e":Ljava/io/IOException;
    :try_start_3
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->writer:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 123
    :cond_1
    :goto_0
    goto :goto_1

    .line 121
    :catch_1
    move-exception v0

    .line 122
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 124
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 125
    :goto_1
    return-void

    .line 118
    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->writer:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_2

    .line 119
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 123
    :cond_2
    goto :goto_3

    .line 121
    :catch_2
    move-exception v1

    .line 122
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 124
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    throw v0
.end method

.method private turnOnFlash()V
    .locals 3

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->keylight_flag:Z

    .line 83
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->nodePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->writer:Ljava/io/BufferedWriter;

    .line 84
    const/16 v0, 0x7f

    .line 85
    .local v0, "value":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "strValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .end local v0    # "value":I
    .end local v1    # "strValue":Ljava/lang/String;
    :try_start_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->writer:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .end local v0    # "e":Ljava/io/IOException;
    :try_start_3
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->writer:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 97
    :cond_0
    :goto_0
    goto :goto_1

    .line 95
    :catch_1
    move-exception v0

    .line 96
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 98
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 100
    :goto_1
    return-void

    .line 92
    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->writer:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 97
    :cond_1
    goto :goto_3

    .line 95
    :catch_2
    move-exception v1

    .line 96
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 98
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
    const v0, 0x7f06001e

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f0500ce

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->mTurnOn:Landroid/widget/Button;

    .line 44
    const v0, 0x7f0500cd

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->mTurnOff:Landroid/widget/Button;

    .line 46
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->mTurnOn:Landroid/widget/Button;

    new-instance v1, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->mTurnOff:Landroid/widget/Button;

    new-instance v1, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity$2;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity$2;-><init>(Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->turnOffFlash()V

    .line 77
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 78
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->turnOffFlash()V

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
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->turnOffFlash()V

    .line 65
    return-void
.end method
