.class public Lcom/sprd/validationtools/utils/WcndUtils;
.super Ljava/lang/Object;
.source "WcndUtils.java"


# static fields
.field private static final CMD_FLUSHLOG:Ljava/lang/String; = "wcn at+flushwcnlog\u0000"

.field private static final CMD_FLUSHLOG_SLOGMODEM:Ljava/lang/String; = "SAVE_LAST_LOG WCN"

.field private static final SOCKET_NAME:Ljava/lang/String; = "wcnd"

.field private static final SOCKET_NAME_SLOGMODEM:Ljava/lang/String; = "slogmodem"

.field private static final TAG:Ljava/lang/String; = "WcndUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpCPLog()V
    .locals 5

    .line 29
    new-instance v0, Lcom/sprd/validationtools/utils/WcndUtils$1;

    invoke-direct {v0}, Lcom/sprd/validationtools/utils/WcndUtils$1;-><init>()V

    .line 37
    .local v0, "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 39
    return-void
.end method

.method public static declared-synchronized sendSlogModemCmdFlushLog()Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/sprd/validationtools/utils/WcndUtils;

    monitor-enter v0

    .line 24
    :try_start_0
    const-string v1, "slogmodem"

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    const-string v3, "SAVE_LAST_LOG WCN"

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lcom/sprd/validationtools/utils/SocketUtils;->sendCmdAndRecResult(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 24
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized sendWcndCmdFlushLog()Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/sprd/validationtools/utils/WcndUtils;

    monitor-enter v0

    .line 20
    :try_start_0
    const-string v1, "wcnd"

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    const-string v3, "wcn at+flushwcnlog\u0000"

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lcom/sprd/validationtools/utils/SocketUtils;->sendCmdAndRecResult(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 20
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
