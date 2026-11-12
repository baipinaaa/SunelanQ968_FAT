.class public Lcom/sprd/validationtools/itemstest/usb/UsbActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "UsbActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private cc1:Ljava/lang/Boolean;

.field private cc2:Ljava/lang/Boolean;

.field nodePath:Ljava/lang/String;

.field private powerConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private textView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$mread(Lcom/sprd/validationtools/itemstest/usb/UsbActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->read()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 24
    const-string v0, "USB Test"

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->cc1:Ljava/lang/Boolean;

    .line 27
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->cc2:Ljava/lang/Boolean;

    .line 28
    const-string v0, "/sys/devices/platform/soc/soc:aon/64400000.spi/spi_master/spi4/spi4.0/sc27xx-typec/typec_cc_polarity_role"

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->nodePath:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/sprd/validationtools/itemstest/usb/UsbActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/usb/UsbActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/usb/UsbActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->powerConnectionReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private read()V
    .locals 8

    .line 73
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->nodePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

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

    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "contentMsg":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->updateTextView(Ljava/lang/String;)V

    .line 85
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USB Test contentMsg \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    const-string v4, "cc_1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 87
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USB Test cc_1 contentMsg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->cc1:Ljava/lang/Boolean;

    .line 90
    :cond_1
    const-string v4, "cc_2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USB Test cc_2 contentMsg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->cc2:Ljava/lang/Boolean;

    .line 94
    :cond_2
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->testFinish()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local v1    # "contentBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "contentMsg":Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    goto :goto_1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 98
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 102
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    nop

    .line 103
    :goto_2
    return-void
.end method

.method private testFinish()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->cc1:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->cc2:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->storeRusult(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->finish()V

    .line 67
    :cond_0
    return-void
.end method

.method private updateTextView(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->removeButton()V

    .line 42
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sprd/validationtools/BaseActivity;->createButton(Z)V

    .line 43
    const v0, 0x7f060040

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f0500c3

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->textView:Landroid/widget/TextView;

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 47
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->powerConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method protected onDestroy()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 55
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->powerConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 56
    return-void
.end method
