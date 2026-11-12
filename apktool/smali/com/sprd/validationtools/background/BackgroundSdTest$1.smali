.class Lcom/sprd/validationtools/background/BackgroundSdTest$1;
.super Ljava/lang/Thread;
.source "BackgroundSdTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/background/BackgroundSdTest;->startTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/background/BackgroundSdTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/background/BackgroundSdTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/background/BackgroundSdTest;

    .line 36
    iput-object p1, p0, Lcom/sprd/validationtools/background/BackgroundSdTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundSdTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 38
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundSdTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundSdTest;

    invoke-static {v0}, Lcom/sprd/validationtools/background/BackgroundSdTest;->-$$Nest$fgetmContext(Lcom/sprd/validationtools/background/BackgroundSdTest;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sprd/validationtools/utils/StorageUtil;->getExternalStoragePathState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundSdTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundSdTest;

    invoke-static {v0}, Lcom/sprd/validationtools/background/BackgroundSdTest;->-$$Nest$fgetmounted(Lcom/sprd/validationtools/background/BackgroundSdTest;)[B

    move-result-object v0

    aput-byte v1, v0, v2

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundSdTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundSdTest;

    invoke-static {v0}, Lcom/sprd/validationtools/background/BackgroundSdTest;->-$$Nest$fgetmounted(Lcom/sprd/validationtools/background/BackgroundSdTest;)[B

    move-result-object v0

    aput-byte v2, v0, v2

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundSdTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundSdTest;

    invoke-static {v0}, Lcom/sprd/validationtools/background/BackgroundSdTest;->-$$Nest$fgetmounted(Lcom/sprd/validationtools/background/BackgroundSdTest;)[B

    move-result-object v0

    aput-byte v2, v0, v1

    .line 46
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundSdTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundSdTest;

    invoke-static {v0}, Lcom/sprd/validationtools/background/BackgroundSdTest;->-$$Nest$fgetmounted(Lcom/sprd/validationtools/background/BackgroundSdTest;)[B

    move-result-object v0

    aget-byte v0, v0, v2

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundSdTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundSdTest;

    invoke-static {v0}, Lcom/sprd/validationtools/background/BackgroundSdTest;->-$$Nest$fgetmounted(Lcom/sprd/validationtools/background/BackgroundSdTest;)[B

    move-result-object v0

    aget-byte v0, v0, v1

    if-ne v0, v1, :cond_1

    goto/16 :goto_d

    .line 52
    :cond_1
    const/4 v0, 0x0

    .line 53
    .local v0, "in":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 55
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-array v4, v1, [B

    .line 56
    .local v4, "mSDCardTestFlag":[B
    const/4 v5, 0x2

    new-array v5, v5, [B

    .line 58
    .local v5, "result":[B
    iget-object v6, p0, Lcom/sprd/validationtools/background/BackgroundSdTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundSdTest;

    invoke-static {v6}, Lcom/sprd/validationtools/background/BackgroundSdTest;->-$$Nest$fgetmounted(Lcom/sprd/validationtools/background/BackgroundSdTest;)[B

    move-result-object v6

    aget-byte v6, v6, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "sprdtest.txt"

    if-nez v6, :cond_4

    .line 59
    :try_start_1
    new-instance v6, Ljava/io/File;

    iget-object v8, p0, Lcom/sprd/validationtools/background/BackgroundSdTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundSdTest;

    invoke-static {v8}, Lcom/sprd/validationtools/background/BackgroundSdTest;->-$$Nest$fgetmContext(Lcom/sprd/validationtools/background/BackgroundSdTest;)Landroid/content/Context;

    move-result-object v8

    .line 60
    invoke-static {v8, v2}, Lcom/sprd/validationtools/utils/StorageUtil;->getExternalStorageAppPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .local v6, "fp":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 63
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 64
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 65
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v8

    .line 66
    const/16 v8, 0x36

    aput-byte v8, v4, v2

    .line 67
    invoke-virtual {v3, v4, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 68
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 69
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v9

    .line 70
    invoke-virtual {v0, v4, v2, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 71
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 72
    aget-byte v9, v4, v2

    if-ne v9, v8, :cond_3

    .line 73
    aput-byte v2, v5, v2

    goto :goto_1

    .line 75
    :cond_3
    aput-byte v1, v5, v2

    .line 78
    .end local v6    # "fp":Ljava/io/File;
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/sprd/validationtools/background/BackgroundSdTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundSdTest;

    invoke-static {v6}, Lcom/sprd/validationtools/background/BackgroundSdTest;->-$$Nest$fgetmounted(Lcom/sprd/validationtools/background/BackgroundSdTest;)[B

    move-result-object v6

    aget-byte v6, v6, v1

    if-nez v6, :cond_7

    .line 79
    new-instance v6, Ljava/io/File;

    const-string v8, "/data/data/com.sprd.validationtools/"

    invoke-direct {v6, v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .restart local v6    # "fp":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 81
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 82
    :cond_5
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 83
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v7

    .line 84
    const/16 v7, 0x64

    aput-byte v7, v4, v2

    .line 85
    invoke-virtual {v3, v4, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 86
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 87
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v8

    .line 88
    invoke-virtual {v0, v4, v2, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 89
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 90
    aget-byte v8, v4, v2

    if-ne v8, v7, :cond_6

    .line 91
    aput-byte v2, v5, v1

    goto :goto_2

    .line 93
    :cond_6
    aput-byte v1, v5, v1

    .line 97
    .end local v6    # "fp":Ljava/io/File;
    :cond_7
    :goto_2
    aget-byte v2, v5, v2

    if-nez v2, :cond_8

    aget-byte v2, v5, v1

    if-nez v2, :cond_8

    .line 98
    iget-object v2, p0, Lcom/sprd/validationtools/background/BackgroundSdTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundSdTest;

    invoke-static {v2, v1}, Lcom/sprd/validationtools/background/BackgroundSdTest;->-$$Nest$fputtestResult(Lcom/sprd/validationtools/background/BackgroundSdTest;I)V

    .line 99
    iget-object v1, p0, Lcom/sprd/validationtools/background/BackgroundSdTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundSdTest;

    invoke-virtual {v1}, Lcom/sprd/validationtools/background/BackgroundSdTest;->stopTest()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .end local v4    # "mSDCardTestFlag":[B
    .end local v5    # "result":[B
    :cond_8
    if-eqz v3, :cond_9

    .line 106
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 107
    const/4 v3, 0x0

    .line 109
    :cond_9
    if-eqz v0, :cond_b

    .line 110
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 104
    :catchall_0
    move-exception v1

    goto :goto_8

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_a

    .line 106
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 107
    const/4 v1, 0x0

    move-object v3, v1

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v1, "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 113
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    goto :goto_5

    .line 109
    :cond_a
    :goto_3
    if-eqz v0, :cond_b

    .line 110
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 111
    :goto_4
    const/4 v0, 0x0

    goto :goto_6

    .line 114
    .local v1, "io":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 116
    .end local v1    # "io":Ljava/io/IOException;
    goto :goto_7

    .line 115
    :cond_b
    :goto_6
    nop

    .line 117
    :goto_7
    return-void

    .line 105
    :goto_8
    if-eqz v3, :cond_c

    .line 106
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 107
    const/4 v3, 0x0

    goto :goto_9

    .line 113
    :catch_2
    move-exception v2

    goto :goto_a

    .line 109
    :cond_c
    :goto_9
    if-eqz v0, :cond_d

    .line 110
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 111
    const/4 v0, 0x0

    goto :goto_b

    .line 114
    .local v2, "io":Ljava/io/IOException;
    :goto_a
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 115
    .end local v2    # "io":Ljava/io/IOException;
    :cond_d
    :goto_b
    nop

    .line 116
    :goto_c
    throw v1

    .line 47
    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :cond_e
    :goto_d
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundSdTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundSdTest;

    invoke-static {v0, v2}, Lcom/sprd/validationtools/background/BackgroundSdTest;->-$$Nest$fputtestResult(Lcom/sprd/validationtools/background/BackgroundSdTest;I)V

    .line 48
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundSdTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundSdTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/background/BackgroundSdTest;->stopTest()V

    .line 49
    return-void
.end method
