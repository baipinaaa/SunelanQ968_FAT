.class public Lcom/sprd/validationtools/utils/StorageUtil;
.super Ljava/lang/Object;
.source "StorageUtil.java"


# static fields
.field private static final EXT_COMMON_PATH:I = 0x1

.field private static final EXT_EMULATED_PATH:I = 0x0

.field private static final OTG_UDISK_PATH:I = 0x2

.field public static final TAG:Ljava/lang/String; = "StorageUtil"

.field private static final emulatedPathPrefix:Ljava/lang/String; = "/storage/emulated"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalStorageAppPath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 37
    const-string v0, "StorageUtil"

    const/4 v1, 0x0

    .line 38
    .local v1, "extEmulatedPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 39
    .local v2, "extCommonPath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 40
    .local v3, "extOtgUdiskPath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 42
    .local v4, "otgUdiskPath":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v5, "allDirPaths":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 46
    :try_start_0
    invoke-static {}, Lcom/sprd/validationtools/utils/StorageUtil;->getUsbdiskVolumePaths()[Ljava/io/File;

    move-result-object v7

    .line 47
    .local v7, "otgPaths":[Ljava/io/File;
    array-length v8, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 48
    .local v10, "file":Ljava/io/File;
    if-eqz v10, :cond_0

    const-string v11, "mounted"

    invoke-static {v10}, Lcom/sprd/validationtools/utils/StorageUtil;->getUsbdiskVolumeState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 49
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "otg udisk mounted, otg path is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    goto :goto_1

    .line 52
    :cond_0
    const-string v11, "otg udisk not mounted, otg path is null"

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v10    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 57
    .end local v7    # "otgPaths":[Ljava/io/File;
    :cond_1
    goto :goto_2

    .line 55
    :catch_0
    move-exception v7

    .line 56
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 60
    .local v8, "file":Ljava/io/File;
    if-eqz v8, :cond_3

    .line 61
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, "path":Ljava/lang/String;
    const-string v10, "/storage/emulated/0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 63
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "external storage emulated path is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    move-object v1, v9

    goto :goto_4

    .line 66
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "external storage common path is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    move-object v2, v9

    .line 70
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "path":Ljava/lang/String;
    :cond_3
    :goto_4
    goto :goto_3

    .line 72
    :cond_4
    if-nez p1, :cond_5

    .line 73
    return-object v1

    .line 74
    :cond_5
    const/4 v7, 0x1

    if-ne p1, v7, :cond_6

    .line 75
    return-object v2

    .line 76
    :cond_6
    const/4 v7, 0x2

    if-ne p1, v7, :cond_7

    .line 77
    return-object v4

    .line 79
    :cond_7
    const-string v7, "type is incorrect!"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-object v6
.end method

.method public static getExternalStoragePath(Landroid/content/Context;)Ljava/io/File;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 123
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 124
    .local v0, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v1

    .line 125
    .local v1, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 126
    .local v3, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getDirectory()Ljava/io/File;

    move-result-object v4

    .line 127
    .local v4, "volumePath":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getExternalStoragePath volumePath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "StorageUtil"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    invoke-static {v4}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "mounted"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "really createAccessIntent for : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-object v4

    .line 133
    .end local v3    # "volume":Landroid/os/storage/StorageVolume;
    .end local v4    # "volumePath":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 134
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getExternalStoragePathState(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 138
    invoke-static {p0}, Lcom/sprd/validationtools/utils/StorageUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 139
    .local v0, "volumePath":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 140
    invoke-static {v0}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 142
    :cond_0
    const-string v1, "unknown"

    return-object v1
.end method

.method public static getInternalStoragePath()Ljava/io/File;
    .locals 3

    .line 147
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/storage/emulated/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "internalPath":Ljava/io/File;
    return-object v0
.end method

.method public static getUsbdiskVolumePaths()[Ljava/io/File;
    .locals 5

    .line 86
    invoke-static {}, Lcom/sprd/validationtools/utils/StorageUtil;->getUsbdiskVolumes()Ljava/util/List;

    move-result-object v0

    .line 87
    .local v0, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 88
    .local v1, "count":I
    new-array v2, v1, [Ljava/io/File;

    .line 89
    .local v2, "files":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 90
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v4

    aput-object v4, v2, v3

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method public static getUsbdiskVolumeState(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/io/File;

    .line 113
    invoke-static {}, Lcom/sprd/validationtools/utils/StorageUtil;->getUsbdiskVolumes()Ljava/util/List;

    move-result-object v0

    .line 114
    .local v0, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 115
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v3

    invoke-static {v3, p0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v1

    invoke-static {v1}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 117
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    goto :goto_0

    .line 118
    :cond_1
    const-string v1, "unknown"

    return-object v1
.end method

.method public static getUsbdiskVolumes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/VolumeInfo;>;"
    const-string v1, "mount"

    invoke-static {v1}, Lcom/sprd/validationtools/nonpublic/ServiceManagerProxy;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    .line 100
    .local v1, "storageManager":Landroid/os/storage/IStorageManager;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .local v2, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    nop

    .line 104
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    .line 105
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v5, v4, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    goto :goto_0

    .line 109
    :cond_1
    return-object v0

    .line 101
    .end local v2    # "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    :catch_0
    return-object v0
.end method
