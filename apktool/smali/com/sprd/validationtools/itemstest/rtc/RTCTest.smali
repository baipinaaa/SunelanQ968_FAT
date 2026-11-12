.class public Lcom/sprd/validationtools/itemstest/rtc/RTCTest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "RTCTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RTCTest"

.field public static final timeFormat:Ljava/lang/String; = "hh:mm:ss"


# instance fields
.field mContent:Landroid/widget/TextView;

.field public mHandler:Landroid/os/Handler;

.field public mTime:J


# direct methods
.method static bridge synthetic -$$Nest$mgetTime(Lcom/sprd/validationtools/itemstest/rtc/RTCTest;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/rtc/RTCTest;->getTime()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetTimeText(Lcom/sprd/validationtools/itemstest/rtc/RTCTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/rtc/RTCTest;->setTimeText()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/rtc/RTCTest;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getTime()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "TIME_FORMAT":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setTimeText()V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/rtc/RTCTest;->mContent:Landroid/widget/TextView;

    new-instance v1, Lcom/sprd/validationtools/itemstest/rtc/RTCTest$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/rtc/RTCTest$1;-><init>(Lcom/sprd/validationtools/itemstest/rtc/RTCTest;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 31
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/rtc/RTCTest;->mContent:Landroid/widget/TextView;

    .line 33
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 34
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/rtc/RTCTest;->mContent:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/rtc/RTCTest;->setContentView(Landroid/view/View;)V

    .line 35
    const v0, 0x7f09013a

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/rtc/RTCTest;->setTitle(I)V

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sprd/validationtools/itemstest/rtc/RTCTest;->mTime:J

    .line 37
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/rtc/RTCTest;->setTimeText()V

    .line 38
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method
