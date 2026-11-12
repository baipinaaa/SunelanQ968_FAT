.class public Lcom/sprd/validationtools/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFile()V
    .locals 4

    .line 185
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/vendor/BBATtest.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 188
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete file is success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 191
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 192
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 193
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    nop

    .end local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static fileIsExists(Ljava/lang/String;)Z
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 72
    const-string v0, "FileUtils"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 73
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileIsExists path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fileIsExists false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return v1

    .line 85
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    nop

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fileIsExists true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x1

    return v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    return v1

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 81
    return v1
.end method

.method public static getIntFromFile(Ljava/lang/String;)I
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 30
    .local v1, "fIn":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 32
    .local v2, "isr":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 33
    new-instance v3, Ljava/io/InputStreamReader;

    .line 34
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v2, v3

    .line 35
    const/16 v3, 0x400

    new-array v3, v3, [C

    .line 36
    .local v3, "inputBuffer":[C
    const/4 v4, -0x1

    .line 37
    .local v4, "q":I
    invoke-virtual {v2, v3}, Ljava/io/InputStreamReader;->read([C)I

    move-result v5

    move v4, v5

    .line 38
    if-lez v4, :cond_0

    .line 39
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 39
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    nop

    .line 48
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 50
    nop

    .line 51
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    goto :goto_0

    .line 53
    :catch_0
    move-exception v6

    .line 54
    .local v6, "e2":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 39
    .end local v6    # "e2":Ljava/io/IOException;
    :goto_0
    return v5

    .line 47
    .end local v3    # "inputBuffer":[C
    .end local v4    # "q":I
    :cond_0
    nop

    .line 48
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 50
    nop

    .line 51
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 55
    :cond_1
    :goto_1
    goto :goto_2

    .line 53
    :catch_1
    move-exception v3

    .line 54
    .local v3, "e2":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 56
    .end local v3    # "e2":Ljava/io/IOException;
    goto :goto_2

    .line 46
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 43
    :catch_2
    move-exception v3

    .line 44
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    if-eqz v2, :cond_2

    .line 48
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 50
    :cond_2
    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 41
    :catch_3
    move-exception v3

    .line 42
    .local v3, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 47
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_3

    .line 48
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 50
    :cond_3
    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 57
    :goto_2
    const/4 v3, -0x1

    return v3

    .line 47
    :goto_3
    if-eqz v2, :cond_4

    .line 48
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    goto :goto_4

    .line 53
    :catch_4
    move-exception v4

    goto :goto_5

    .line 50
    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    .line 51
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    .line 54
    .local v4, "e2":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 55
    .end local v4    # "e2":Ljava/io/IOException;
    :cond_5
    :goto_6
    nop

    .line 56
    :goto_7
    throw v3
.end method

.method public static declared-synchronized readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    const-class v0, Lcom/sprd/validationtools/utils/FileUtils;

    monitor-enter v0

    .line 91
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 93
    .local v2, "sBuffer":Ljava/lang/StringBuffer;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .local v3, "fIn":Ljava/io/InputStream;
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 94
    .local v4, "bReader":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "str":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_0

    .line 97
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 100
    monitor-exit v0

    return-object v6

    .line 93
    .end local v5    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    :try_start_7
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "sBuffer":Ljava/lang/StringBuffer;
    .end local v3    # "fIn":Ljava/io/InputStream;
    .end local p0    # "path":Ljava/lang/String;
    :goto_1
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v4    # "bReader":Ljava/io/BufferedReader;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "sBuffer":Ljava/lang/StringBuffer;
    .restart local v3    # "fIn":Ljava/io/InputStream;
    .restart local p0    # "path":Ljava/lang/String;
    :catchall_2
    move-exception v4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v5

    :try_start_9
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "sBuffer":Ljava/lang/StringBuffer;
    .end local p0    # "path":Ljava/lang/String;
    :goto_2
    throw v4
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 101
    .end local v3    # "fIn":Ljava/io/InputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "sBuffer":Ljava/lang/StringBuffer;
    .restart local p0    # "path":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 102
    .local v3, "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 104
    .end local v3    # "e":Ljava/io/IOException;
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 90
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "sBuffer":Ljava/lang/StringBuffer;
    .end local p0    # "path":Ljava/lang/String;
    :catchall_4
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static readFileData(Ljava/lang/String;)I
    .locals 7
    .param p0, "readPath"    # Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "count":I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, "inFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 148
    .local v2, "finS":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 149
    const/16 v3, 0x200

    new-array v3, v3, [B

    .line 151
    .local v3, "bys":[B
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v4

    .local v5, "c":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 152
    move v0, v5

    goto :goto_0

    .line 158
    .end local v3    # "bys":[B
    .end local v5    # "c":I
    :cond_0
    nop

    .line 159
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    :cond_1
    :goto_1
    goto :goto_2

    .line 161
    :catch_0
    move-exception v3

    .line 162
    .local v3, "e2":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 164
    .end local v3    # "e2":Ljava/io/IOException;
    goto :goto_2

    .line 157
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 154
    :catch_1
    move-exception v3

    .line 155
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_1

    .line 159
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 165
    :goto_2
    return v0

    .line 158
    :goto_3
    if-eqz v2, :cond_2

    .line 159
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 161
    :catch_2
    move-exception v4

    .line 162
    .local v4, "e2":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 163
    .end local v4    # "e2":Ljava/io/IOException;
    :cond_2
    :goto_4
    nop

    .line 164
    :goto_5
    throw v3
.end method

.method public static saveFileData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "readPath"    # Ljava/lang/String;
    .param p1, "writePath"    # Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "count":I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, "inFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v2, "outFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 114
    .local v3, "finS":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 116
    .local v4, "foutS":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 117
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v5

    .line 118
    const/16 v5, 0x200

    new-array v5, v5, [B

    .line 120
    .local v5, "bys":[B
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "c":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 121
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 122
    move v0, v7

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 125
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .end local v5    # "bys":[B
    .end local v7    # "c":I
    nop

    .line 131
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 133
    nop

    .line 134
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    :cond_1
    :goto_1
    goto :goto_2

    .line 136
    :catch_0
    move-exception v5

    .line 137
    .local v5, "e2":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 139
    .end local v5    # "e2":Ljava/io/IOException;
    goto :goto_2

    .line 129
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 126
    :catch_1
    move-exception v5

    .line 127
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_2

    .line 131
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 133
    :cond_2
    if-eqz v4, :cond_1

    .line 134
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 140
    :goto_2
    return v0

    .line 130
    :goto_3
    if-eqz v3, :cond_3

    .line 131
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_4

    .line 136
    :catch_2
    move-exception v6

    goto :goto_5

    .line 133
    :cond_3
    :goto_4
    if-eqz v4, :cond_4

    .line 134
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    .line 137
    .local v6, "e2":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 138
    .end local v6    # "e2":Ljava/io/IOException;
    :cond_4
    :goto_6
    nop

    .line 139
    :goto_7
    throw v5
.end method

.method public static declared-synchronized writeAutoTestResult(II)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "result"    # I

    const-class v0, Lcom/sprd/validationtools/utils/FileUtils;

    monitor-enter v0

    .line 170
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt/vendor/BBATtest.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 172
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 173
    .local v3, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 174
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 175
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    goto :goto_0

    .line 169
    .end local p0    # "id":I
    .end local p1    # "result":I
    :catchall_0
    move-exception p0

    goto :goto_2

    .line 178
    .restart local p0    # "id":I
    .restart local p1    # "result":I
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 176
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 177
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 181
    :goto_1
    monitor-exit v0

    return-void

    .line 169
    .end local p0    # "id":I
    .end local p1    # "result":I
    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .line 61
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 63
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 64
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .end local v1    # "bytes":[B
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 67
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 61
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "filename":Ljava/lang/String;
    .end local p1    # "content":Ljava/lang/String;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 65
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "filename":Ljava/lang/String;
    .restart local p1    # "content":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method
