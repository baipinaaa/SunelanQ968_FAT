.class public Lcom/sprd/validationtools/autommi/AutoMMIService;
.super Landroid/app/Service;
.source "AutoMMIService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoMMIService"


# instance fields
.field private mAutoTestArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sprd/validationtools/modules/TestItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/AutoMMIService;->mContext:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Lcom/sprd/validationtools/autommi/AutoMMIService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 33
    iput-object v0, p0, Lcom/sprd/validationtools/autommi/AutoMMIService;->mAutoTestArray:Ljava/util/ArrayList;

    return-void
.end method

.method private autoTest()V
    .locals 4

    .line 83
    const-string v0, "AutoMMIService"

    const-string v1, "mAutoTestCurrentNumber0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/AutoMMIService;->mAutoTestArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/sprd/validationtools/autommi/AutoMMIService;->mAutoTestArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/validationtools/modules/TestItem;

    invoke-virtual {v1}, Lcom/sprd/validationtools/modules/TestItem;->getTestClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/sprd/validationtools/autommi/AutoMMIService;->mAutoTestArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/validationtools/modules/TestItem;

    invoke-virtual {v1}, Lcom/sprd/validationtools/modules/TestItem;->getTestName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "testname"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "testindex"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/sprd/validationtools/autommi/AutoMMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private initAutoTest()V
    .locals 1

    .line 77
    invoke-static {}, Lcom/sprd/validationtools/utils/FileUtils;->deleteFile()V

    .line 78
    invoke-static {p0}, Lcom/sprd/validationtools/autommi/modules/AutoTestItemList;->getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItemList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/validationtools/modules/TestItemList;->getAutoTestItemList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/AutoMMIService;->mAutoTestArray:Ljava/util/ArrayList;

    .line 79
    invoke-direct {p0}, Lcom/sprd/validationtools/autommi/AutoMMIService;->autoTest()V

    .line 80
    return-void
.end method

.method private sendKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .line 49
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 50
    .local v0, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    nop

    .end local v0    # "runtime":Ljava/lang/Runtime;
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 37
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 38
    invoke-virtual {p0}, Lcom/sprd/validationtools/autommi/AutoMMIService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/AutoMMIService;->mContext:Landroid/content/Context;

    .line 39
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/AutoMMIService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 40
    .local v0, "powerManager":Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    .line 41
    const/16 v1, 0x1a

    const-string v2, "WakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/validationtools/autommi/AutoMMIService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 42
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/sprd/validationtools/autommi/AutoMMIService;->initAutoTest()V

    .line 45
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 73
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 74
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 58
    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 68
    const/4 v0, 0x0

    return v0
.end method
