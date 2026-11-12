.class public Lcom/sprd/validationtools/itemstest/storage/SDCardTest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "SDCardTest.java"


# static fields
.field private static final PHONE_STORAGE_PATH:Ljava/lang/String; = "/data/data/com.sprd.validationtools/"

.field private static final SPRD_SD_TESTFILE:Ljava/lang/String; = "sprdtest.txt"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field mContent:Landroid/widget/TextView;

.field mContent2:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSDCardTestFlag:[B

.field private mWorkHandler:Landroid/os/Handler;

.field mounted:[B

.field result:[B

.field vtThread:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sprd/validationtools/itemstest/storage/SDCardTest;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/storage/SDCardTest;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunnable(Lcom/sprd/validationtools/itemstest/storage/SDCardTest;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckPhonStorageResult(Lcom/sprd/validationtools/itemstest/storage/SDCardTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->checkPhonStorageResult()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckResultText(Lcom/sprd/validationtools/itemstest/storage/SDCardTest;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->checkResultText(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckSdcardRessult(Lcom/sprd/validationtools/itemstest/storage/SDCardTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->checkSdcardRessult()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 31
    const-string v0, "SDCardTest"

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x2

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mounted:[B

    .line 36
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->result:[B

    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mSDCardTestFlag:[B

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$1;-><init>(Lcom/sprd/validationtools/itemstest/storage/SDCardTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mRunnable:Ljava/lang/Runnable;

    .line 267
    new-instance v0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest$2;-><init>(Lcom/sprd/validationtools/itemstest/storage/SDCardTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->vtThread:Ljava/lang/Runnable;

    return-void
.end method

.method private checkPhonStorageResult()V
    .locals 11

    .line 177
    const-string v0, "close in/out err"

    const/4 v1, 0x0

    .line 178
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 179
    .local v2, "out":Ljava/io/FileOutputStream;
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->TAG:Ljava/lang/String;

    const-string v4, "checkPhonStorageResult start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :try_start_0
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mounted:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    if-nez v3, :cond_2

    .line 182
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/data/com.sprd.validationtools/"

    const-string v6, "sprdtest.txt"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v3, "fp":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 185
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 186
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v5

    .line 187
    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mSDCardTestFlag:[B

    const/16 v6, 0x64

    const/4 v7, 0x0

    aput-byte v6, v5, v7

    .line 188
    invoke-virtual {v2, v5, v7, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 189
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 190
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v5

    .line 191
    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mSDCardTestFlag:[B

    const/16 v8, 0x30

    aput-byte v8, v5, v7

    .line 192
    iget-object v8, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->result:[B

    aput-byte v4, v8, v4

    .line 193
    invoke-virtual {v1, v5, v7, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    .line 194
    .local v5, "count":I
    iget-object v8, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read count =: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-lez v5, :cond_2

    .line 196
    iget-object v8, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mSDCardTestFlag:[B

    aget-byte v8, v8, v7

    if-ne v8, v6, :cond_1

    .line 197
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->result:[B

    aput-byte v7, v6, v4

    goto :goto_0

    .line 199
    :cond_1
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->result:[B

    aput-byte v4, v6, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .end local v3    # "fp":Ljava/io/File;
    .end local v5    # "count":I
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 209
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    .line 214
    :catch_0
    move-exception v3

    goto :goto_2

    .line 211
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 212
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 215
    .local v3, "io":Ljava/io/IOException;
    :goto_2
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 218
    .end local v3    # "io":Ljava/io/IOException;
    goto :goto_4

    .line 217
    :cond_4
    :goto_3
    goto :goto_4

    .line 207
    :catchall_0
    move-exception v3

    goto :goto_5

    .line 203
    :catch_1
    move-exception v3

    .line 204
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->TAG:Ljava/lang/String;

    const-string v5, "=== error: Exception happens when sdcard I/O! ==="

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_5

    .line 209
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 211
    :cond_5
    if-eqz v1, :cond_4

    .line 212
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 219
    :goto_4
    return-void

    .line 208
    :goto_5
    if-eqz v2, :cond_6

    .line 209
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_6

    .line 214
    :catch_2
    move-exception v4

    goto :goto_7

    .line 211
    :cond_6
    :goto_6
    if-eqz v1, :cond_7

    .line 212
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    .line 215
    .local v4, "io":Ljava/io/IOException;
    :goto_7
    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 217
    .end local v4    # "io":Ljava/io/IOException;
    :cond_7
    :goto_8
    nop

    .line 218
    :goto_9
    throw v3
.end method

.method private checkResultText(ZZ)V
    .locals 3
    .param p1, "successExSdcard"    # Z
    .param p2, "successInSdcard"    # Z

    .line 76
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkResultText successExSdcard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",successInSdcard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090145

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090144

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_0
    if-eqz p2, :cond_1

    .line 86
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mContent2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09014a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mContent2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090149

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_1
    return-void
.end method

.method private checkSDCard()V
    .locals 3

    .line 139
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sprd/validationtools/utils/StorageUtil;->getExternalStoragePathState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mounted:[B

    aput-byte v1, v0, v2

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mounted:[B

    aput-byte v2, v0, v2

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mounted:[B

    aput-byte v2, v0, v1

    .line 146
    return-void
.end method

.method private checkSdcardRessult()V
    .locals 10

    .line 222
    const-string v0, "close in/out err"

    const/4 v1, 0x0

    .line 223
    .local v1, "in2":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 224
    .local v2, "out2":Ljava/io/FileOutputStream;
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->TAG:Ljava/lang/String;

    const-string v4, "checkSdcardRessult start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :try_start_0
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mounted:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    if-nez v3, :cond_5

    .line 227
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/sprd/validationtools/utils/StorageUtil;->getExternalStorageAppPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "secondPath":Ljava/lang/String;
    invoke-static {v3}, Lcom/sprd/validationtools/utils/FileUtils;->fileIsExists(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    .line 255
    if-eqz v2, :cond_0

    .line 256
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 261
    :catch_0
    move-exception v4

    goto :goto_1

    .line 258
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 259
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 262
    .local v4, "io":Ljava/io/IOException;
    :goto_1
    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 264
    .end local v4    # "io":Ljava/io/IOException;
    :cond_1
    :goto_2
    nop

    .line 228
    :goto_3
    return-void

    .line 229
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkSdcardRessult secondPath =: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v6, Ljava/io/File;

    const-string v7, "sprdtest.txt"

    invoke-direct {v6, v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .local v6, "fp":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 232
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 233
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 234
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v7

    .line 235
    iget-object v7, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mSDCardTestFlag:[B

    const/16 v8, 0x36

    aput-byte v8, v7, v4

    .line 236
    invoke-virtual {v2, v7, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 237
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 238
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v7

    .line 239
    iget-object v7, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mSDCardTestFlag:[B

    const/16 v9, 0x30

    aput-byte v9, v7, v4

    .line 240
    iget-object v9, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->result:[B

    aput-byte v5, v9, v4

    .line 241
    invoke-virtual {v1, v7, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    .line 242
    .local v7, "count":I
    if-lez v7, :cond_5

    .line 243
    iget-object v9, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mSDCardTestFlag:[B

    aget-byte v9, v9, v4

    if-ne v9, v8, :cond_4

    .line 244
    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->result:[B

    aput-byte v4, v5, v4

    goto :goto_4

    .line 246
    :cond_4
    iget-object v8, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->result:[B

    aput-byte v5, v8, v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    .end local v3    # "secondPath":Ljava/lang/String;
    .end local v6    # "fp":Ljava/io/File;
    .end local v7    # "count":I
    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    .line 256
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_5

    .line 261
    :catch_1
    move-exception v3

    goto :goto_6

    .line 258
    :cond_6
    :goto_5
    if-eqz v1, :cond_7

    .line 259
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    .line 262
    .local v3, "io":Ljava/io/IOException;
    :goto_6
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 265
    .end local v3    # "io":Ljava/io/IOException;
    goto :goto_8

    .line 264
    :cond_7
    :goto_7
    goto :goto_8

    .line 254
    :catchall_0
    move-exception v3

    goto :goto_9

    .line 250
    :catch_2
    move-exception v3

    .line 251
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->TAG:Ljava/lang/String;

    const-string v5, "=== error: Exception happens when sdcard I/O! ==="

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 255
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_8

    .line 256
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 258
    :cond_8
    if-eqz v1, :cond_7

    .line 259
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_7

    .line 266
    :goto_8
    return-void

    .line 255
    :goto_9
    if-eqz v2, :cond_9

    .line 256
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_a

    .line 261
    :catch_3
    move-exception v4

    goto :goto_b

    .line 258
    :cond_9
    :goto_a
    if-eqz v1, :cond_a

    .line 259
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_c

    .line 262
    .restart local v4    # "io":Ljava/io/IOException;
    :goto_b
    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 264
    .end local v4    # "io":Ljava/io/IOException;
    :cond_a
    :goto_c
    nop

    .line 265
    :goto_d
    throw v3
.end method

.method private startBackgroundThread()V
    .locals 2

    .line 157
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SdcardBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 158
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 159
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mWorkHandler:Landroid/os/Handler;

    .line 160
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 168
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 170
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 174
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, "ll":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 44
    .local v1, "parms":Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 46
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 47
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mContent:Landroid/widget/TextView;

    .line 48
    const/high16 v3, 0x420c0000    # 35.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 49
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mContent2:Landroid/widget/TextView;

    .line 52
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 53
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mContent2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->setContentView(Landroid/view/View;)V

    .line 56
    const v2, 0x7f090147

    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->setTitle(I)V

    .line 57
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090143

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mContent2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090142

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->removeButton()V

    .line 60
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->startBackgroundThread()V

    .line 61
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mWorkHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->vtThread:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 67
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 68
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->stopBackgroundThread()V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 125
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 126
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->checkSDCard()V

    .line 127
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mounted:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mounted:[B

    aget-byte v0, v0, v1

    if-ne v0, v1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->mContent2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/storage/SDCardTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_1
    const-string v0, "SDCardTest"

    const-string v1, "=== create thread to execute SDCard test command! ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method
