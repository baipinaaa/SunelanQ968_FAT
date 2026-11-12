.class public Lcom/sprd/validationtools/utils/LogControlAidl;
.super Ljava/lang/Object;
.source "LogControlAidl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MMI-LogControlAidl"


# instance fields
.field private mLogControlAidlService:Lvendor/sprd/hardware/log/ILogControl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    :try_start_0
    const-string v0, "vendor.sprd.hardware.log.ILogControl/default"

    invoke-static {v0}, Lcom/sprd/validationtools/nonpublic/ServiceManagerProxy;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/sprd/hardware/log/ILogControl$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/sprd/hardware/log/ILogControl;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/utils/LogControlAidl;->mLogControlAidlService:Lvendor/sprd/hardware/log/ILogControl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public sendCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "socket"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/sprd/validationtools/utils/LogControlAidl;->mLogControlAidlService:Lvendor/sprd/hardware/log/ILogControl;

    if-nez v0, :cond_0

    .line 27
    const-string v0, "vendor.sprd.hardware.log.ILogControl/default"

    invoke-static {v0}, Lcom/sprd/validationtools/nonpublic/ServiceManagerProxy;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/sprd/hardware/log/ILogControl$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/sprd/hardware/log/ILogControl;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/utils/LogControlAidl;->mLogControlAidlService:Lvendor/sprd/hardware/log/ILogControl;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/utils/LogControlAidl;->mLogControlAidlService:Lvendor/sprd/hardware/log/ILogControl;

    if-eqz v0, :cond_1

    .line 30
    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/log/ILogControl;->sendCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 34
    :cond_1
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
