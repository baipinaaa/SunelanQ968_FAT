.class public Lcom/sprd/validationtools/utils/IATUtils;
.super Ljava/lang/Object;
.source "IATUtils.java"


# static fields
.field public static AT_CONNECT:Ljava/lang/String; = null

.field public static AT_FAIL:Ljava/lang/String; = null

.field public static AT_NOT_SUPPORT:Ljava/lang/String; = null

.field public static AT_OK:Ljava/lang/String; = null

.field private static AT_SOCKET_NAME:Ljava/lang/String; = null

.field private static HIDL_SOCKET_NAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "IATUtils"

.field public static mPhoneCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-string v0, "AT FAILED"

    sput-object v0, Lcom/sprd/validationtools/utils/IATUtils;->AT_FAIL:Ljava/lang/String;

    .line 19
    const-string v0, "OK"

    sput-object v0, Lcom/sprd/validationtools/utils/IATUtils;->AT_OK:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/sprd/validationtools/utils/IATUtils;->mPhoneCount:I

    .line 22
    const-string v0, "CONNECT"

    sput-object v0, Lcom/sprd/validationtools/utils/IATUtils;->AT_CONNECT:Ljava/lang/String;

    .line 23
    const-string v0, "ERROR: 4"

    sput-object v0, Lcom/sprd/validationtools/utils/IATUtils;->AT_NOT_SUPPORT:Ljava/lang/String;

    .line 25
    const-string v0, "hidl_common_socket"

    sput-object v0, Lcom/sprd/validationtools/utils/IATUtils;->HIDL_SOCKET_NAME:Ljava/lang/String;

    .line 26
    const-string v0, "miscserver"

    sput-object v0, Lcom/sprd/validationtools/utils/IATUtils;->AT_SOCKET_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAtCmd(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/sprd/validationtools/utils/IATUtils;->AT_SOCKET_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string v1, "%s sendAt %d %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAtCmdAidl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string v1, "sendAt %d %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getChannelBySim(I)Ljava/lang/String;
    .locals 2
    .param p0, "simIdx"    # I

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "atchannel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPhoneIdByChannelName(Ljava/lang/String;)I
    .locals 2
    .param p0, "channelName"    # Ljava/lang/String;

    .line 61
    const-string v0, "atchannel0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 62
    return v1

    .line 63
    :cond_0
    const-string v0, "atchannel1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_1
    return v1
.end method

.method static synthetic lambda$sendAt$0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "serverName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-static {p0, p1}, Lcom/sprd/validationtools/utils/IATUtils;->sendATCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized sendATCmd(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    const-class v0, Lcom/sprd/validationtools/utils/IATUtils;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/sprd/validationtools/utils/IATUtils;->AT_SOCKET_NAME:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sprd/validationtools/utils/IATUtils;->getAtCmdAidl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprd/validationtools/utils/SocketUtils;->sendCmdByAidl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .local v1, "res":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 82
    monitor-exit v0

    return-object v1

    .line 84
    :cond_0
    :try_start_1
    sget-object v2, Lcom/sprd/validationtools/utils/IATUtils;->HIDL_SOCKET_NAME:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sprd/validationtools/utils/IATUtils;->getAtCmd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sprd/validationtools/utils/SocketUtils;->sendCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v2

    .line 79
    .end local v1    # "res":Ljava/lang/String;
    .end local p0    # "cmd":Ljava/lang/String;
    .end local p1    # "phoneId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized sendATCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "channelName"    # Ljava/lang/String;

    const-class v0, Lcom/sprd/validationtools/utils/IATUtils;

    monitor-enter v0

    .line 88
    :try_start_0
    invoke-static {p1}, Lcom/sprd/validationtools/utils/IATUtils;->getPhoneIdByChannelName(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/sprd/validationtools/utils/IATUtils;->sendATCmd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 88
    .end local p0    # "cmd":Ljava/lang/String;
    .end local p1    # "channelName":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static sendAt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "serverName"    # Ljava/lang/String;

    .line 40
    const-string v0, "IATUtils"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 43
    .local v1, "exec":Ljava/util/concurrent/ExecutorService;
    :try_start_0
    new-instance v2, Lcom/sprd/validationtools/utils/IATUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/sprd/validationtools/utils/IATUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 44
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    const-wide/16 v3, 0x7d0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 51
    .end local v2    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    .local v0, "futureObj":Ljava/lang/String;
    nop

    .line 52
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 53
    if-eqz v0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/sprd/validationtools/utils/IATUtils;->AT_FAIL:Ljava/lang/String;

    :goto_0
    return-object v2

    .line 48
    .end local v0    # "futureObj":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 49
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "modem at exception"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    sget-object v0, Lcom/sprd/validationtools/utils/IATUtils;->AT_FAIL:Ljava/lang/String;

    return-object v0

    .line 45
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 46
    .local v2, "ex":Ljava/util/concurrent/TimeoutException;
    const-string v3, "modem at timeout"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    sget-object v0, Lcom/sprd/validationtools/utils/IATUtils;->AT_FAIL:Ljava/lang/String;

    return-object v0
.end method

.method public static sendAtCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "cmd"    # Ljava/lang/String;

    .line 92
    const-string v0, "atchannel0"

    invoke-static {p0, v0}, Lcom/sprd/validationtools/utils/IATUtils;->sendATCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    :cond_0
    sget-object v0, Lcom/sprd/validationtools/utils/IATUtils;->AT_FAIL:Ljava/lang/String;

    .line 96
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IATUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-object v0
.end method
