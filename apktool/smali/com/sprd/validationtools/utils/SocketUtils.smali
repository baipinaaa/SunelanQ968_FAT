.class public Lcom/sprd/validationtools/utils/SocketUtils;
.super Ljava/lang/Object;
.source "SocketUtils.java"


# static fields
.field public static final FAIL:Ljava/lang/String; = "FAIL"

.field public static final OK:Ljava/lang/String; = "OK"

.field private static final TAG:Ljava/lang/String; = "SocketUtils"

.field public static logctl:Lcom/sprd/validationtools/utils/LogControlAidl;


# direct methods
.method public static synthetic $r8$lambda$6FqnoRurmpTAbRQuID1ADJjfdyw(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lcom/sprd/validationtools/utils/SocketUtils;->timeout(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/sprd/validationtools/utils/LogControlAidl;

    invoke-direct {v0}, Lcom/sprd/validationtools/utils/LogControlAidl;-><init>()V

    sput-object v0, Lcom/sprd/validationtools/utils/SocketUtils;->logctl:Lcom/sprd/validationtools/utils/LogControlAidl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized sendByteAndRecResult(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;[BI)Ljava/lang/String;
    .locals 16
    .param p0, "socketName"    # Ljava/lang/String;
    .param p1, "namespace"    # Landroid/net/LocalSocketAddress$Namespace;
    .param p2, "sendBuf"    # [B
    .param p3, "rsplen"    # I

    move/from16 v1, p3

    const-class v2, Lcom/sprd/validationtools/utils/SocketUtils;

    monitor-enter v2

    .line 31
    :try_start_0
    const-string v0, "SocketUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendByteAndRecResult rsplen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v3, 0x0

    if-gtz v1, :cond_0

    .line 33
    const-string v0, "SocketUtils"

    const-string v4, "sendByteAndRecResult len == 0"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 34
    monitor-exit v2

    return-object v3

    .line 36
    :cond_0
    const/4 v4, 0x0

    .line 37
    .local v4, "result":Ljava/lang/String;
    :try_start_1
    new-array v0, v1, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v5, v0

    .line 38
    .local v5, "rspBuff":[B
    const/4 v6, 0x0

    .line 39
    .local v6, "mSocketName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 40
    .local v7, "mSocketClient":Landroid/net/LocalSocket;
    const/4 v8, 0x0

    .line 41
    .local v8, "mOutputStream":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 42
    .local v9, "mInputStream":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 45
    .local v10, "mSocketAddress":Landroid/net/LocalSocketAddress;
    :try_start_2
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    move-object v7, v0

    .line 46
    move-object/from16 v6, p0

    .line 47
    new-instance v0, Landroid/net/LocalSocketAddress;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v11, p1

    :try_start_3
    invoke-direct {v0, v6, v11}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    move-object v10, v0

    .line 48
    invoke-virtual {v7}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    const-string v0, "SocketUtils"

    const-string v12, "isConnected..."

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {v7, v10}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 53
    :cond_1
    const-string v0, "SocketUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mSocketClient connect is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {v7}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v8, v0

    .line 55
    if-eqz v8, :cond_2

    .line 56
    move-object/from16 v12, p2

    :try_start_4
    invoke-virtual {v8, v12}, Ljava/io/OutputStream;->write([B)V

    .line 57
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    .line 55
    :cond_2
    move-object/from16 v12, p2

    .line 59
    :goto_0
    invoke-virtual {v7}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v9, v0

    .line 60
    const/4 v0, 0x0

    invoke-virtual {v9, v5, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 61
    .local v0, "count":I
    new-instance v13, Ljava/lang/String;

    const-string v14, "utf-8"

    invoke-direct {v13, v5, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v4, v13

    .line 62
    const-string v13, "SocketUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "count = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", result is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 68
    .end local v0    # "count":I
    const/4 v5, 0x0

    .line 69
    if-eqz v8, :cond_3

    .line 70
    :try_start_5
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .line 79
    :catch_0
    move-exception v0

    goto :goto_2

    .line 72
    :cond_3
    :goto_1
    if-eqz v9, :cond_4

    .line 73
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 75
    :cond_4
    nop

    .line 76
    invoke-virtual {v7}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 77
    const/4 v0, 0x0

    .line 82
    .end local v7    # "mSocketClient":Landroid/net/LocalSocket;
    .local v0, "mSocketClient":Landroid/net/LocalSocket;
    nop

    .line 84
    monitor-exit v2

    return-object v4

    .line 80
    .local v0, "e":Ljava/io/IOException;
    .restart local v7    # "mSocketClient":Landroid/net/LocalSocket;
    :goto_2
    :try_start_6
    const-string v13, "SocketUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "catch exception is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 81
    monitor-exit v2

    return-object v3

    .line 63
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    goto :goto_5

    .line 67
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 63
    :catch_2
    move-exception v0

    goto :goto_4

    .line 67
    :catchall_1
    move-exception v0

    move-object/from16 v11, p1

    :goto_3
    move-object/from16 v12, p2

    goto :goto_9

    .line 63
    :catch_3
    move-exception v0

    move-object/from16 v11, p1

    :goto_4
    move-object/from16 v12, p2

    :goto_5
    move-object v13, v0

    .line 64
    .local v13, "e":Ljava/io/IOException;
    :try_start_7
    const-string v0, "SocketUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed get output stream: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 65
    nop

    .line 68
    const/4 v5, 0x0

    .line 69
    if-eqz v8, :cond_5

    .line 70
    :try_start_8
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    goto :goto_6

    .line 79
    :catch_4
    move-exception v0

    goto :goto_7

    .line 72
    :cond_5
    :goto_6
    if-eqz v9, :cond_6

    .line 73
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 75
    :cond_6
    if-eqz v7, :cond_7

    .line 76
    invoke-virtual {v7}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 77
    const/4 v7, 0x0

    goto :goto_8

    .line 80
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_9
    const-string v14, "SocketUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catch exception is "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 81
    monitor-exit v2

    const/4 v2, 0x0

    return-object v2

    .line 82
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    :goto_8
    nop

    .line 65
    monitor-exit v2

    const/4 v2, 0x0

    return-object v2

    .line 67
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v0

    .line 68
    :goto_9
    const/4 v3, 0x0

    .line 69
    .end local v5    # "rspBuff":[B
    .local v3, "rspBuff":[B
    if-eqz v8, :cond_8

    .line 70
    :try_start_a
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    goto :goto_a

    .line 79
    :catch_5
    move-exception v0

    goto :goto_b

    .line 72
    :cond_8
    :goto_a
    if-eqz v9, :cond_9

    .line 73
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 75
    :cond_9
    if-eqz v7, :cond_a

    .line 76
    invoke-virtual {v7}, Landroid/net/LocalSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 77
    const/4 v7, 0x0

    goto :goto_c

    .line 80
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_b
    :try_start_b
    const-string v5, "SocketUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "catch exception is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 81
    monitor-exit v2

    const/4 v2, 0x0

    return-object v2

    .line 82
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a
    :goto_c
    nop

    .line 83
    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 30
    .end local v3    # "rspBuff":[B
    .end local v4    # "result":Ljava/lang/String;
    .end local v6    # "mSocketName":Ljava/lang/String;
    .end local v7    # "mSocketClient":Landroid/net/LocalSocket;
    .end local v8    # "mOutputStream":Ljava/io/OutputStream;
    .end local v9    # "mInputStream":Ljava/io/InputStream;
    .end local v10    # "mSocketAddress":Landroid/net/LocalSocketAddress;
    .end local p0    # "socketName":Ljava/lang/String;
    .end local p1    # "namespace":Landroid/net/LocalSocketAddress$Namespace;
    .end local p2    # "sendBuf":[B
    .end local p3    # "rsplen":I
    :catchall_3
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized sendByteAndRecResult2(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;[BI)[B
    .locals 16
    .param p0, "socketName"    # Ljava/lang/String;
    .param p1, "namespace"    # Landroid/net/LocalSocketAddress$Namespace;
    .param p2, "sendBuf"    # [B
    .param p3, "rsplen"    # I

    const-class v1, Lcom/sprd/validationtools/utils/SocketUtils;

    monitor-enter v1

    .line 88
    const/4 v2, 0x0

    .line 89
    .local v2, "result":Ljava/lang/String;
    const/16 v0, 0x1000

    :try_start_0
    new-array v3, v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 90
    .local v3, "rspBuff":[B
    const/4 v4, 0x0

    .line 91
    .local v4, "mSocketName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 92
    .local v5, "mSocketClient":Landroid/net/LocalSocket;
    const/4 v6, 0x0

    .line 93
    .local v6, "mOutputStream":Ljava/io/OutputStream;
    const/4 v7, 0x0

    .line 94
    .local v7, "mInputStream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 96
    .local v8, "mSocketAddress":Landroid/net/LocalSocketAddress;
    :try_start_1
    new-instance v10, Landroid/net/LocalSocket;

    invoke-direct {v10}, Landroid/net/LocalSocket;-><init>()V

    move-object v5, v10

    .line 97
    move-object/from16 v4, p0

    .line 98
    new-instance v10, Landroid/net/LocalSocketAddress;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v11, p1

    :try_start_2
    invoke-direct {v10, v4, v11}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    move-object v8, v10

    .line 99
    invoke-virtual {v5}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v10

    if-nez v10, :cond_0

    .line 100
    const-string v10, "SocketUtils"

    const-string v12, "isConnected..."

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v5, v8}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 104
    :cond_0
    const-string v10, "SocketUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mSocketClient connect is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v10

    .line 106
    if-eqz v6, :cond_1

    .line 107
    move-object/from16 v10, p2

    :try_start_3
    invoke-virtual {v6, v10}, Ljava/io/OutputStream;->write([B)V

    .line 108
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    .line 106
    :cond_1
    move-object/from16 v10, p2

    .line 110
    :goto_0
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    move-object v7, v12

    .line 111
    const/4 v12, 0x0

    invoke-virtual {v7, v3, v12, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    .line 112
    .local v13, "count":I
    new-instance v14, Ljava/lang/String;

    const-string v15, "utf-8"

    invoke-direct {v14, v3, v12, v13, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v2, v14

    .line 113
    const-string v12, "SocketUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "count = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", result is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    if-lez v13, :cond_5

    if-ge v13, v0, :cond_5

    .line 115
    new-array v0, v13, [B

    move-object v12, v0

    .line 116
    .local v12, "rspBuff2":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v13, :cond_2

    .line 117
    aget-byte v14, v3, v0

    aput-byte v14, v12, v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    .end local v0    # "i":I
    :cond_2
    nop

    .line 128
    const/4 v3, 0x0

    .line 129
    if-eqz v6, :cond_3

    .line 130
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    .line 139
    :catch_0
    move-exception v0

    goto :goto_3

    .line 132
    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    .line 133
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 135
    :cond_4
    nop

    .line 136
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 137
    const/4 v0, 0x0

    .line 142
    .end local v5    # "mSocketClient":Landroid/net/LocalSocket;
    .local v0, "mSocketClient":Landroid/net/LocalSocket;
    nop

    .line 119
    monitor-exit v1

    return-object v12

    .line 140
    .local v0, "e":Ljava/io/IOException;
    .restart local v5    # "mSocketClient":Landroid/net/LocalSocket;
    :goto_3
    :try_start_5
    const-string v14, "SocketUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "catch exception is "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 141
    monitor-exit v1

    const/4 v1, 0x0

    return-object v1

    .line 121
    .end local v0    # "e":Ljava/io/IOException;
    .end local v12    # "rspBuff2":[B
    :cond_5
    nop

    .line 128
    const/4 v3, 0x0

    .line 129
    if-eqz v6, :cond_6

    .line 130
    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_4

    .line 139
    :catch_1
    move-exception v0

    goto :goto_5

    .line 132
    :cond_6
    :goto_4
    if-eqz v7, :cond_7

    .line 133
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 135
    :cond_7
    nop

    .line 136
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 137
    const/4 v0, 0x0

    .line 142
    .end local v5    # "mSocketClient":Landroid/net/LocalSocket;
    .local v0, "mSocketClient":Landroid/net/LocalSocket;
    nop

    .line 121
    monitor-exit v1

    const/4 v1, 0x0

    return-object v1

    .line 140
    .local v0, "e":Ljava/io/IOException;
    .restart local v5    # "mSocketClient":Landroid/net/LocalSocket;
    :goto_5
    :try_start_7
    const-string v9, "SocketUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "catch exception is "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 141
    monitor-exit v1

    const/4 v1, 0x0

    return-object v1

    .line 123
    .end local v0    # "e":Ljava/io/IOException;
    .end local v13    # "count":I
    :catch_2
    move-exception v0

    goto :goto_8

    .line 127
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 123
    :catch_3
    move-exception v0

    goto :goto_7

    .line 127
    :catchall_1
    move-exception v0

    move-object/from16 v11, p1

    :goto_6
    move-object/from16 v10, p2

    goto :goto_c

    .line 123
    :catch_4
    move-exception v0

    move-object/from16 v11, p1

    :goto_7
    move-object/from16 v10, p2

    :goto_8
    move-object v9, v0

    .line 124
    .local v9, "e":Ljava/io/IOException;
    :try_start_8
    const-string v0, "SocketUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed get output stream: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 125
    nop

    .line 128
    const/4 v3, 0x0

    .line 129
    if-eqz v6, :cond_8

    .line 130
    :try_start_9
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_9

    .line 139
    :catch_5
    move-exception v0

    goto :goto_a

    .line 132
    :cond_8
    :goto_9
    if-eqz v7, :cond_9

    .line 133
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 135
    :cond_9
    if-eqz v5, :cond_a

    .line 136
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 137
    const/4 v5, 0x0

    goto :goto_b

    .line 140
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_a
    :try_start_a
    const-string v12, "SocketUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "catch exception is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 141
    monitor-exit v1

    const/4 v1, 0x0

    return-object v1

    .line 142
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a
    :goto_b
    nop

    .line 125
    monitor-exit v1

    const/4 v1, 0x0

    return-object v1

    .line 127
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v0

    .line 128
    :goto_c
    const/4 v3, 0x0

    .line 129
    if-eqz v6, :cond_b

    .line 130
    :try_start_b
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_d

    .line 139
    :catch_6
    move-exception v0

    goto :goto_e

    .line 132
    :cond_b
    :goto_d
    if-eqz v7, :cond_c

    .line 133
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 135
    :cond_c
    if-eqz v5, :cond_d

    .line 136
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 137
    const/4 v5, 0x0

    goto :goto_f

    .line 140
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_e
    :try_start_c
    const-string v9, "SocketUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "catch exception is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 141
    monitor-exit v1

    const/4 v1, 0x0

    return-object v1

    .line 142
    .end local v0    # "e":Ljava/io/IOException;
    :cond_d
    :goto_f
    nop

    .line 143
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 87
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "rspBuff":[B
    .end local v4    # "mSocketName":Ljava/lang/String;
    .end local v5    # "mSocketClient":Landroid/net/LocalSocket;
    .end local v6    # "mOutputStream":Ljava/io/OutputStream;
    .end local v7    # "mInputStream":Ljava/io/InputStream;
    .end local v8    # "mSocketAddress":Landroid/net/LocalSocketAddress;
    .end local p0    # "socketName":Ljava/lang/String;
    .end local p1    # "namespace":Landroid/net/LocalSocketAddress$Namespace;
    .end local p2    # "sendBuf":[B
    .end local p3    # "rsplen":I
    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static sendCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "socketName"    # Ljava/lang/String;
    .param p1, "cmd"    # Ljava/lang/String;

    .line 221
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 222
    .local v3, "thread":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "caller":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v0, v6

    .line 224
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v0, v8

    const/16 v7, 0xa

    const/16 v8, 0x5c

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v4

    const-string v4, "[%s][%d]<%s>"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "strcmd":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " send cmd: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "SocketUtils"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    move-object v8, v0

    .line 228
    .local v8, "socketClient":Landroid/net/LocalSocket;
    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v9, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v9}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    move-object v9, v0

    .line 231
    .local v9, "mSocketAddress":Landroid/net/LocalSocketAddress;
    const/4 v10, 0x0

    .line 232
    .local v10, "ops":Ljava/io/OutputStream;
    const/4 v11, 0x0

    .line 233
    .local v11, "ins":Ljava/io/InputStream;
    const/16 v0, 0x400

    new-array v12, v0, [B

    .line 234
    .local v12, "buf":[B
    const/4 v13, 0x0

    .line 235
    .local v13, "result":Ljava/lang/String;
    const/4 v14, 0x0

    .line 237
    .local v14, "wd":Lcom/sprd/validationtools/utils/Watchdog;
    :try_start_0
    invoke-virtual {v8, v9}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 239
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v0, "connect "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " success"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    move-object v10, v0

    .line 241
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v11, v0

    .line 244
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/OutputStream;->write([B)V

    .line 245
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " write cmd done , flush data done"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v0, Lcom/sprd/validationtools/utils/Watchdog;

    invoke-direct {v0, v1, v2}, Lcom/sprd/validationtools/utils/Watchdog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v0

    .line 250
    new-instance v0, Lcom/sprd/validationtools/utils/SocketUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sprd/validationtools/utils/SocketUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v14, v0, v8}, Lcom/sprd/validationtools/utils/Watchdog;->setTimeoutCallback(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 251
    invoke-virtual {v14}, Lcom/sprd/validationtools/utils/Watchdog;->wantEat()V

    .line 252
    const/16 v0, 0x400

    invoke-virtual {v11, v12, v6, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 253
    .local v0, "count":I
    invoke-virtual {v14}, Lcom/sprd/validationtools/utils/Watchdog;->feedFood()V

    .line 254
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v6, " result read done"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v6, "read count is -1"

    move-object v13, v6

    .line 256
    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    .line 257
    new-array v6, v0, [B

    .line 258
    .local v6, "temp":[B
    const/4 v15, 0x0

    invoke-static {v12, v15, v6, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    new-instance v15, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v15, v6, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v1, v15

    .line 260
    .end local v6    # "temp":[B
    .end local v13    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    move-object v13, v1

    goto :goto_0

    .line 261
    .end local v1    # "result":Ljava/lang/String;
    .restart local v13    # "result":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " read failed"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "count = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", result is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    nop

    .line 269
    .end local v0    # "count":I
    invoke-virtual {v14}, Lcom/sprd/validationtools/utils/Watchdog;->feedFood()V

    .line 273
    if-eqz v10, :cond_1

    .line 274
    :try_start_1
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .line 280
    :catch_0
    move-exception v0

    goto :goto_3

    .line 276
    :cond_1
    :goto_1
    if-eqz v11, :cond_2

    .line 277
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 279
    :cond_2
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 282
    :goto_2
    goto :goto_4

    .line 281
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 283
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 268
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_5

    .line 265
    :catch_1
    move-exception v0

    .line 266
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v14, :cond_3

    .line 269
    invoke-virtual {v14}, Lcom/sprd/validationtools/utils/Watchdog;->feedFood()V

    .line 273
    :cond_3
    if-eqz v10, :cond_4

    .line 274
    :try_start_3
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 276
    :cond_4
    if-eqz v11, :cond_5

    .line 277
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 279
    :cond_5
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 285
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "handle over and result is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-object v13

    .line 268
    :goto_5
    if-eqz v14, :cond_6

    .line 269
    invoke-virtual {v14}, Lcom/sprd/validationtools/utils/Watchdog;->feedFood()V

    .line 273
    :cond_6
    if-eqz v10, :cond_7

    .line 274
    :try_start_4
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    goto :goto_6

    .line 280
    :catch_2
    move-exception v0

    goto :goto_7

    .line 276
    :cond_7
    :goto_6
    if-eqz v11, :cond_8

    .line 277
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 279
    :cond_8
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 282
    goto :goto_8

    .line 281
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 283
    .end local v0    # "e":Ljava/io/IOException;
    :goto_8
    throw v1
.end method

.method public static declared-synchronized sendCmdAndRecResult(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "socketName"    # Ljava/lang/String;
    .param p1, "namespace"    # Landroid/net/LocalSocketAddress$Namespace;
    .param p2, "strcmd"    # Ljava/lang/String;

    move-object/from16 v1, p2

    const-class v2, Lcom/sprd/validationtools/utils/SocketUtils;

    monitor-enter v2

    .line 148
    :try_start_0
    const-string v0, "SocketUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send cmd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/16 v0, 0xff

    new-array v3, v0, [B

    .line 150
    .local v3, "buf":[B
    const/4 v4, 0x0

    .line 151
    .local v4, "result":Ljava/lang/String;
    const-string v5, "SocketUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set cmd: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 152
    const/4 v5, 0x0

    .line 153
    .local v5, "mSocketName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 154
    .local v6, "mSocketClient":Landroid/net/LocalSocket;
    const/4 v7, 0x0

    .line 155
    .local v7, "mOutputStream":Ljava/io/OutputStream;
    const/4 v8, 0x0

    .line 156
    .local v8, "mInputStream":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 158
    .local v9, "mSocketAddress":Landroid/net/LocalSocketAddress;
    const/4 v10, 0x0

    :try_start_1
    new-instance v11, Landroid/net/LocalSocket;

    invoke-direct {v11}, Landroid/net/LocalSocket;-><init>()V

    move-object v6, v11

    .line 159
    move-object/from16 v5, p0

    .line 160
    new-instance v11, Landroid/net/LocalSocketAddress;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v12, p1

    :try_start_2
    invoke-direct {v11, v5, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    move-object v9, v11

    .line 161
    invoke-virtual {v6}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v11

    if-nez v11, :cond_0

    .line 162
    const-string v11, "SocketUtils"

    const-string v13, "isConnected..."

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v6, v9}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 166
    :cond_0
    const-string v11, "SocketUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mSocketClient connect is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    move-object v7, v11

    .line 168
    const/4 v11, 0x0

    if-eqz v7, :cond_1

    .line 169
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 170
    .local v13, "cmdBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 171
    .local v14, "cmd":Ljava/lang/String;
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/io/OutputStream;->write([B)V

    .line 172
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 174
    .end local v13    # "cmdBuilder":Ljava/lang/StringBuilder;
    .end local v14    # "cmd":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    move-object v8, v13

    .line 175
    invoke-virtual {v8, v3, v11, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 176
    .local v0, "count":I
    const-string v11, ""

    move-object v4, v11

    .line 177
    new-instance v11, Ljava/lang/String;

    const-string v13, "utf-8"

    invoke-direct {v11, v3, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v4, v11

    .line 178
    const-string v11, "SocketUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "count = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", result is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 184
    .end local v0    # "count":I
    const/4 v3, 0x0

    .line 185
    if-eqz v7, :cond_2

    .line 186
    :try_start_3
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    goto :goto_1

    .line 188
    :cond_2
    :goto_0
    if-eqz v8, :cond_3

    .line 189
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 191
    :cond_3
    nop

    .line 192
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 193
    const/4 v0, 0x0

    .line 198
    .end local v6    # "mSocketClient":Landroid/net/LocalSocket;
    .local v0, "mSocketClient":Landroid/net/LocalSocket;
    nop

    .line 200
    monitor-exit v2

    return-object v4

    .line 196
    .local v0, "e":Ljava/io/IOException;
    .restart local v6    # "mSocketClient":Landroid/net/LocalSocket;
    :goto_1
    :try_start_4
    const-string v11, "SocketUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "catch exception is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 197
    monitor-exit v2

    return-object v10

    .line 179
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    goto :goto_2

    .line 183
    :catchall_0
    move-exception v0

    move-object/from16 v12, p1

    goto :goto_6

    .line 179
    :catch_2
    move-exception v0

    move-object/from16 v12, p1

    :goto_2
    move-object v11, v0

    .line 180
    .local v11, "e":Ljava/io/IOException;
    :try_start_5
    const-string v0, "SocketUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed get output stream: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 181
    nop

    .line 184
    const/4 v3, 0x0

    .line 185
    if-eqz v7, :cond_4

    .line 186
    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    .line 195
    :catch_3
    move-exception v0

    goto :goto_4

    .line 188
    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    .line 189
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 191
    :cond_5
    if-eqz v6, :cond_6

    .line 192
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 193
    const/4 v6, 0x0

    goto :goto_5

    .line 196
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v13, "SocketUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "catch exception is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 197
    monitor-exit v2

    return-object v10

    .line 198
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    :goto_5
    nop

    .line 181
    monitor-exit v2

    return-object v10

    .line 183
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    .line 184
    :goto_6
    const/4 v3, 0x0

    .line 185
    if-eqz v7, :cond_7

    .line 186
    :try_start_8
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto :goto_7

    .line 195
    :catch_4
    move-exception v0

    goto :goto_8

    .line 188
    :cond_7
    :goto_7
    if-eqz v8, :cond_8

    .line 189
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 191
    :cond_8
    if-eqz v6, :cond_9

    .line 192
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 193
    const/4 v6, 0x0

    goto :goto_9

    .line 196
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_8
    :try_start_9
    const-string v11, "SocketUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "catch exception is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 197
    monitor-exit v2

    return-object v10

    .line 198
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9
    :goto_9
    nop

    .line 199
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 147
    .end local v3    # "buf":[B
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "mSocketName":Ljava/lang/String;
    .end local v6    # "mSocketClient":Landroid/net/LocalSocket;
    .end local v7    # "mOutputStream":Ljava/io/OutputStream;
    .end local v8    # "mInputStream":Ljava/io/InputStream;
    .end local v9    # "mSocketAddress":Landroid/net/LocalSocketAddress;
    .end local p0    # "socketName":Ljava/lang/String;
    .end local p1    # "namespace":Landroid/net/LocalSocketAddress$Namespace;
    .end local p2    # "strcmd":Ljava/lang/String;
    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static sendCmdAndRecResult(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "socketName"    # Ljava/lang/String;
    .param p1, "namespace"    # Landroid/net/LocalSocketAddress$Namespace;
    .param p2, "strcmd"    # Ljava/lang/String;
    .param p3, "time"    # I

    .line 205
    :goto_0
    add-int/lit8 v0, p3, -0x1

    .end local p3    # "time":I
    .local v0, "time":I
    if-eqz p3, :cond_1

    .line 206
    invoke-static {p0, p1, p2}, Lcom/sprd/validationtools/utils/SocketUtils;->sendCmdAndRecResult(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 207
    .local p3, "tmp":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 208
    return-object p3

    .line 210
    :cond_0
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_1

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 214
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try again"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SocketUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local p3    # "tmp":Ljava/lang/String;
    move p3, v0

    goto :goto_0

    .line 216
    :cond_1
    const/4 p3, 0x0

    return-object p3
.end method

.method public static declared-synchronized sendCmdByAidl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "socketName"    # Ljava/lang/String;
    .param p1, "strcmd"    # Ljava/lang/String;

    const-class v0, Lcom/sprd/validationtools/utils/SocketUtils;

    monitor-enter v0

    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "cmd":Ljava/lang/String;
    sget-object v3, Lcom/sprd/validationtools/utils/SocketUtils;->logctl:Lcom/sprd/validationtools/utils/LogControlAidl;

    if-eqz v3, :cond_0

    .line 302
    const-string v3, "SocketUtils"

    const-string v4, "logctl not null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    sget-object v3, Lcom/sprd/validationtools/utils/SocketUtils;->logctl:Lcom/sprd/validationtools/utils/LogControlAidl;

    invoke-virtual {v3, p0, v2}, Lcom/sprd/validationtools/utils/LogControlAidl;->sendCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 305
    :cond_0
    const-string v3, "SocketUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aidl cmd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit v0

    return-object v1

    .line 298
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "cmd":Ljava/lang/String;
    .end local p0    # "socketName":Ljava/lang/String;
    .end local p1    # "strcmd":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static timeout(Ljava/lang/Object;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 290
    move-object v0, p0

    check-cast v0, Landroid/net/LocalSocket;

    .line 292
    .local v0, "socket":Landroid/net/LocalSocket;
    :try_start_0
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    goto :goto_0

    .line 293
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 296
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
