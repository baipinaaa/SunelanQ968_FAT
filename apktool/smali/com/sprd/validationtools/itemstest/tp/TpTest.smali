.class public Lcom/sprd/validationtools/itemstest/tp/TpTest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "TpTest.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field mContent:Landroid/widget/TextView;

.field tpNodePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 18
    const-string v0, "Tp0Test"

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/TpTest;->TAG:Ljava/lang/String;

    .line 20
    const-string v0, "/sys/touchscreen/name"

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/TpTest;->tpNodePath:Ljava/lang/String;

    return-void
.end method

.method private doTp0Test()V
    .locals 6

    .line 38
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/TpTest;->tpNodePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/tp/TpTest;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "tpName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 40
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tp0Test"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "tlsc6x_ts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "fts_ts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 66
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Tp0Test not match tp"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 52
    :pswitch_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Tp0Test fts_ts"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.focaltech.ft_terminal_test"

    const-string v5, "com.focaltech.ft_terminal_test.MainActivity"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .local v1, "componetName":Landroid/content/ComponentName;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "command"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    const-string v5, "view"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const-string v3, "autoFinish"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const-string v3, "delay"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const/4 v2, 0x2

    const-string v3, "reTry"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v4}, Lcom/sprd/validationtools/itemstest/tp/TpTest;->startActivity(Landroid/content/Intent;)V

    .line 64
    goto :goto_2

    .line 43
    .end local v1    # "componetName":Landroid/content/ComponentName;
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Tp0Test tlsc6x_ts"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.example.alpha.chipsemitptest"

    const-string v3, "com.example.alpha.chipsemitptest.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .local v1, "tlsc6xName":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v2, "tlsc6xintent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/itemstest/tp/TpTest;->startActivity(Landroid/content/Intent;)V

    .line 50
    nop

    .line 69
    .end local v1    # "tlsc6xName":Landroid/content/ComponentName;
    .end local v2    # "tlsc6xintent":Landroid/content/Intent;
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4b595067 -> :sswitch_1
        0x718e9314 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private read(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "nodePath"    # Ljava/lang/String;

    .line 73
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 74
    .local v0, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v1, "contentBuilder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .local v2, "contentMsg":Ljava/lang/String;
    return-object v2

    .line 84
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local v1    # "contentBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "contentMsg":Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 82
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 86
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    nop

    .line 87
    :goto_1
    const-string v0, "unknown"

    return-object v0
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-sprd-validationtools-itemstest-tp-TpTest()V
    .locals 1

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/tp/TpTest;->createButton(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 23
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->removeButton()V

    .line 25
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sprd/validationtools/BaseActivity;->createButton(Z)V

    .line 26
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/tp/TpTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 28
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/TpTest;->mContent:Landroid/widget/TextView;

    .line 29
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 30
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/TpTest;->mContent:Landroid/widget/TextView;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 31
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/TpTest;->mContent:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/tp/TpTest;->setContentView(Landroid/view/View;)V

    .line 32
    const-string v0, "TP0 \u6d4b\u8bd5"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/tp/TpTest;->setTitle(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/tp/TpTest;->mContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/TpTest;->mContent:Landroid/widget/TextView;

    new-instance v1, Lcom/sprd/validationtools/itemstest/tp/TpTest$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/tp/TpTest$$ExternalSyntheticLambda0;-><init>(Lcom/sprd/validationtools/itemstest/tp/TpTest;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/tp/TpTest;->doTp0Test()V

    .line 36
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method public onDestroy()V
    .locals 0

    .line 102
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 103
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 95
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 97
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 91
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onStop()V

    .line 92
    return-void
.end method
