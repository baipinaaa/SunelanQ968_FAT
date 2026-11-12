.class public Lcom/sprd/validationtools/itemstest/otg/OTGTest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "OTGTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;
    }
.end annotation


# static fields
.field static final REQUEST_CODE:I = 0x1

.field private static final SPRD_OTG_TESTFILE:Ljava/lang/String; = "otgtest"

.field private static TAG:Ljava/lang/String;

.field private static final UPDATE_TIME:I


# instance fields
.field private docUri:Landroid/net/Uri;

.field private isUsb:Z

.field public mCheckRunnable:Ljava/lang/Runnable;

.field private mCountDownView:Landroid/widget/TextView;

.field public mHandler:Landroid/os/Handler;

.field public mOTGTestFlag:[B

.field public mRunnable:Ljava/lang/Runnable;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mTextView:Landroid/widget/TextView;

.field mounted:[B

.field private otgPath:Ljava/lang/String;

.field private otgUri:Landroid/net/Uri;

.field result:[B

.field private rootUri:Landroid/net/Uri;

.field private time:J

.field private usbMassStoragePath:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetdocUri(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->docUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCountDownView(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mCountDownView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextView(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettime(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)J
    .locals 2

    iget-wide v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->time:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetusbMassStoragePath(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->usbMassStoragePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdocUri(Lcom/sprd/validationtools/itemstest/otg/OTGTest;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->docUri:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtime(Lcom/sprd/validationtools/itemstest/otg/OTGTest;J)V
    .locals 0

    iput-wide p1, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->time:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckOTGdevices(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->checkOTGdevices()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monScopedDirectoryTest(Lcom/sprd/validationtools/itemstest/otg/OTGTest;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->onScopedDirectoryTest(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartVtThread(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->startVtThread()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smcloseQuietly(Ljava/lang/AutoCloseable;)V
    .locals 0

    invoke-static {p0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, "OTGTest"

    sput-object v0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->isUsb:Z

    .line 57
    const-string v1, "/mnt/media_rw/usbdisk"

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->usbMassStoragePath:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->otgPath:Ljava/lang/String;

    .line 60
    const/4 v0, 0x1

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mOTGTestFlag:[B

    .line 61
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->result:[B

    .line 62
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mounted:[B

    .line 64
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->time:J

    .line 107
    new-instance v0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest$1;-><init>(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest$2;-><init>(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mRunnable:Ljava/lang/Runnable;

    .line 149
    new-instance v0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$3;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest$3;-><init>(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mCheckRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private checkOTGdevices()V
    .locals 4

    .line 95
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sprd/validationtools/utils/StorageUtil;->getExternalStorageAppPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "otgPath":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mounted:[B

    aput-byte v1, v2, v1

    .line 98
    sget-object v1, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->TAG:Ljava/lang/String;

    const-string v2, "=== OTG mount succeed ==="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->usbMassStoragePath:Ljava/lang/String;

    goto :goto_0

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mounted:[B

    const/4 v3, 0x1

    aput-byte v3, v2, v1

    .line 102
    sget-object v1, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->TAG:Ljava/lang/String;

    const-string v2, "=== OTG mount Fail ==="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    return-void
.end method

.method private static closeQuietly(Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "c"    # Ljava/lang/AutoCloseable;

    .line 321
    if-eqz p0, :cond_0

    .line 323
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    goto :goto_0

    .line 324
    :catch_1
    move-exception v0

    .line 325
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 329
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method private getExactStorageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "storagePath"    # Ljava/lang/String;

    .line 303
    sget-object v0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExactStorageName, storagePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    if-eqz p1, :cond_0

    .line 306
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "pathName":[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1

    .line 309
    .end local v0    # "pathName":[Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getVolumes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation

    .line 282
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 283
    .local v0, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v1

    .line 284
    .local v1, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    return-object v1
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 334
    invoke-static {}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->isSupportOTG()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 335
    return v1

    .line 337
    :cond_0
    const-string v0, "OTG"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/ValidationToolsUtils;->isSupportInPCBAConf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    return v1

    .line 340
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportOTG()Z
    .locals 9

    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "bReader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 346
    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 347
    .local v2, "otgPath":Ljava/lang/String;
    const-string v3, "/sys/class/typec/port0/port_type"

    invoke-static {v3}, Lcom/sprd/validationtools/utils/FileUtils;->fileIsExists(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "/sys/class/dual_role_usb/sprd_dual_role_usb/supported_modes"

    if-eqz v3, :cond_0

    .line 348
    const-string v2, "/sys/class/typec/port0/port_type"

    goto :goto_0

    .line 349
    :cond_0
    const-string v3, "/sys/class/typec/port1/port_type"

    invoke-static {v3}, Lcom/sprd/validationtools/utils/FileUtils;->fileIsExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 350
    const-string v2, "/sys/class/typec/port1/port_type"

    goto :goto_0

    .line 351
    :cond_1
    invoke-static {v5}, Lcom/sprd/validationtools/utils/FileUtils;->fileIsExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 352
    const-string v2, "/sys/class/dual_role_usb/sprd_dual_role_usb/supported_modes"

    .line 357
    :goto_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 358
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v3

    .line 359
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, "str":Ljava/lang/String;
    sget-object v6, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OTGTest  str:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    .line 362
    nop

    .line 374
    nop

    .line 375
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 377
    nop

    .line 378
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 382
    goto :goto_1

    .line 380
    :catch_0
    move-exception v5

    .line 381
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 362
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    return v4

    .line 364
    :cond_2
    :try_start_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "[dual] source sink"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 365
    :cond_3
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "ufp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_5

    .line 366
    :cond_4
    const/4 v4, 0x1

    .line 374
    nop

    .line 375
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 377
    nop

    .line 378
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 382
    goto :goto_2

    .line 380
    :catch_1
    move-exception v5

    .line 381
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 366
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    return v4

    .line 374
    .end local v3    # "str":Ljava/lang/String;
    :cond_5
    nop

    .line 375
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 377
    nop

    .line 378
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 382
    :cond_6
    :goto_3
    goto :goto_4

    .line 380
    :catch_2
    move-exception v3

    .line 381
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 383
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 373
    :catchall_0
    move-exception v3

    goto :goto_5

    .line 370
    :catch_3
    move-exception v3

    .line 371
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 374
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_7

    .line 375
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 377
    :cond_7
    if-eqz v1, :cond_6

    .line 378
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 368
    :catch_4
    move-exception v3

    .line 369
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 374
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_8

    .line 375
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 377
    :cond_8
    if-eqz v1, :cond_6

    .line 378
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 384
    :goto_4
    return v4

    .line 374
    :goto_5
    if-eqz v0, :cond_9

    .line 375
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_6

    .line 380
    :catch_5
    move-exception v4

    goto :goto_7

    .line 377
    :cond_9
    :goto_6
    if-eqz v1, :cond_a

    .line 378
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_8

    .line 381
    .local v4, "e":Ljava/io/IOException;
    :goto_7
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 382
    .end local v4    # "e":Ljava/io/IOException;
    :cond_a
    :goto_8
    nop

    .line 383
    :goto_9
    throw v3

    .line 354
    :cond_b
    return v4
.end method

.method private onScopedDirectoryTest(Ljava/lang/String;)Z
    .locals 6
    .param p1, "storagePath"    # Ljava/lang/String;

    .line 260
    invoke-virtual {p0, p1}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->getCurrentAccessUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x1

    return v0

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->getVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 264
    .local v1, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getDirectory()Ljava/io/File;

    move-result-object v2

    .line 265
    .local v2, "volumePath":Ljava/io/File;
    sget-object v3, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volumePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    .line 267
    invoke-static {v2}, Lcom/sprd/validationtools/utils/StorageUtil;->getUsbdiskVolumeState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 268
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->requestScopedDirectoryAccess(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 270
    .end local v1    # "volume":Landroid/os/storage/StorageVolume;
    .end local v2    # "volumePath":Ljava/io/File;
    :cond_1
    goto :goto_0

    .line 271
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private requestScopedDirectoryAccess(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    .locals 2
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;
    .param p2, "directoryName"    # Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->createOpenDocumentTreeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 276
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 277
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 279
    :cond_0
    return-void
.end method

.method private startVtThread()V
    .locals 2

    .line 189
    sget-object v0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->TAG:Ljava/lang/String;

    const-string v1, "=== create thread to execute OTG test command! ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mounted:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;-><init>(Lcom/sprd/validationtools/itemstest/otg/OTGTest;)V

    .line 193
    .local v0, "vtThread":Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;
    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;->start()V

    .line 196
    .end local v0    # "vtThread":Lcom/sprd/validationtools/itemstest/otg/OTGTest$VtThread;
    :cond_0
    return-void
.end method


# virtual methods
.method public createInputStream(Landroid/os/ParcelFileDescriptor;)Ljava/io/FileInputStream;
    .locals 2
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 317
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public createOutputStream(Landroid/os/ParcelFileDescriptor;)Ljava/io/FileOutputStream;
    .locals 2
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 313
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public getCurrentAccessUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 7
    .param p1, "storagePath"    # Ljava/lang/String;

    .line 288
    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->getExactStorageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "exactStorageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object v1

    .line 290
    .local v1, "uriPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriPermission;>;"
    sget-object v2, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentAccessUri exactStorageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriPermission;

    .line 292
    .local v3, "permission":Landroid/content/UriPermission;
    sget-object v4, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentAccessUri permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/UriPermission;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    if-eqz v0, :cond_0

    invoke-virtual {v3}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 294
    sget-object v4, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentAccessUri return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v3}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->rootUri:Landroid/net/Uri;

    .line 297
    .end local v3    # "permission":Landroid/content/UriPermission;
    :cond_0
    goto :goto_0

    .line 298
    :cond_1
    sget-object v2, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentAccessUri return rootUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->rootUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->rootUri:Landroid/net/Uri;

    return-object v2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 243
    invoke-super {p0, p1, p2, p3}, Lcom/sprd/validationtools/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 244
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 245
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->otgUri:Landroid/net/Uri;

    .line 246
    sget-object v1, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->otgUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    .line 251
    .local v1, "takeFlags":I
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->otgUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->otgUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    goto :goto_0

    .line 254
    :cond_0
    const v2, 0x7f090068

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 255
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 258
    .end local v0    # "toast":Landroid/widget/Toast;
    .end local v1    # "takeFlags":I
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 72
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, "OTGLayout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 77
    .local v1, "parms":Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 79
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 80
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mTextView:Landroid/widget/TextView;

    .line 81
    const/high16 v3, 0x420c0000    # 35.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 82
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mCountDownView:Landroid/widget/TextView;

    .line 83
    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 84
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mCountDownView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->setContentView(Landroid/view/View;)V

    .line 87
    const v2, 0x7f0900f3

    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->setTitle(I)V

    .line 88
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mCountDownView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->time:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 91
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 185
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 186
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 166
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 167
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mounted:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 169
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->result:[B

    aput-byte v2, v0, v1

    .line 170
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->checkOTGdevices()V

    .line 171
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mounted:[B

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->mCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->usbMassStoragePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->onScopedDirectoryTest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/otg/OTGTest;->startVtThread()V

    .line 179
    :cond_1
    :goto_0
    return-void
.end method
