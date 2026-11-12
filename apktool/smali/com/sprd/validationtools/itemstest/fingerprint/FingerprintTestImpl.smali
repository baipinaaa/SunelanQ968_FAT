.class public Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;
.super Ljava/lang/Object;
.source "FingerprintTestImpl.java"

# interfaces
.implements Lcom/sprd/validationtools/itemstest/fingerprint/IFactoryTestImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MMI-FingerprintTestImpl"


# instance fields
.field private mAidlService:Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi;

.field private mHidlService:Lvendor/sprd/hardware/fingerprintmmi/V1_0/IFingerprintmmi;

.field status:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->mAidlService:Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi;

    .line 18
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->mHidlService:Lvendor/sprd/hardware/fingerprintmmi/V1_0/IFingerprintmmi;

    .line 20
    sget-object v0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;->IDLE:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->status:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    return-void
.end method

.method private getFingerprintService()V
    .locals 2

    .line 24
    :try_start_0
    const-string v0, "vendor.sprd.hardware.fingerprintmmi.IFingerprintmmi/default"

    invoke-static {v0}, Lcom/sprd/validationtools/nonpublic/ServiceManagerProxy;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->mAidlService:Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi;

    .line 25
    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x1

    invoke-static {v0}, Lvendor/sprd/hardware/fingerprintmmi/V1_0/IFingerprintmmi;->getService(Z)Lvendor/sprd/hardware/fingerprintmmi/V1_0/IFingerprintmmi;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->mHidlService:Lvendor/sprd/hardware/fingerprintmmi/V1_0/IFingerprintmmi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :cond_0
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAidlService ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->mAidlService:Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmHidlService ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->mHidlService:Lvendor/sprd/hardware/fingerprintmmi/V1_0/IFingerprintmmi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMI-FingerprintTestImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method


# virtual methods
.method public deadpixel_test()I
    .locals 5

    .line 117
    const/4 v0, -0x1

    .line 118
    .local v0, "ret":I
    const-class v1, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->mAidlService:Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi;

    if-eqz v2, :cond_0

    .line 121
    invoke-interface {v2}, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi;->deadpixel_test()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->mHidlService:Lvendor/sprd/hardware/fingerprintmmi/V1_0/IFingerprintmmi;

    if-eqz v2, :cond_1

    .line 123
    invoke-interface {v2}, Lvendor/sprd/hardware/fingerprintmmi/V1_0/IFingerprintmmi;->deadpixel_test()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 127
    :cond_1
    :goto_0
    goto :goto_1

    .line 128
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "MMI-FingerprintTestImpl"

    const-string v4, "Failed to do deadpixel_test"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1

    .line 129
    return v0

    .line 128
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public factory_exit()I
    .locals 5

    .line 56
    const/4 v0, -0x1

    .line 57
    .local v0, "ret":I
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->status:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    sget-object v2, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;->RUNNING:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    if-eq v1, v2, :cond_0

    .line 58
    sget-object v1, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;->IDLE:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->status:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    .line 59
    const-string v1, "MMI-FingerprintTestImpl"

    const-string v2, "factory_exit no finger test,return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v1, -0x1

    return v1

    .line 62
    :cond_0
    sget-object v1, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;->EXIT:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->status:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    .line 63
    const-class v1, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->mAidlService:Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi;

    if-eqz v2, :cond_1

    .line 66
    invoke-interface {v2}, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi;->factory_exit()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->mHidlService:Lvendor/sprd/hardware/fingerprintmmi/V1_0/IFingerprintmmi;

    if-eqz v2, :cond_2

    .line 68
    invoke-interface {v2}, Lvendor/sprd/hardware/fingerprintmmi/V1_0/IFingerprintmmi;->factory_exit()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 72
    :cond_2
    :goto_0
    goto :goto_1

    .line 73
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 70
    :catch_0
    move-exception v2

    .line 71
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "MMI-FingerprintTestImpl"

    const-string v4, "Failed to do factory_exit"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    sget-object v1, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;->IDLE:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->status:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    .line 75
    return v0

    .line 73
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public factory_init()I
    .locals 5

    .line 36
    const/4 v0, -0x1

    .line 37
    .local v0, "ret":I
    sget-object v1, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;->RUNNING:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->status:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    .line 38
    const-class v1, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;

    monitor-enter v1

    .line 39
    :try_start_0
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->getFingerprintService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :try_start_1
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->mAidlService:Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi;

    if-eqz v2, :cond_0

    .line 42
    invoke-interface {v2}, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi;->factory_init()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->mHidlService:Lvendor/sprd/hardware/fingerprintmmi/V1_0/IFingerprintmmi;

    if-eqz v2, :cond_1

    .line 44
    invoke-interface {v2}, Lvendor/sprd/hardware/fingerprintmmi/V1_0/IFingerprintmmi;->factory_init()I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 48
    :cond_1
    :goto_0
    goto :goto_1

    .line 46
    :catch_0
    move-exception v2

    .line 47
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "MMI-FingerprintTestImpl"

    const-string v4, "Failed to do factory_init"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1

    .line 50
    return v0

    .line 49
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public finger_detect(Lcom/sprd/validationtools/itemstest/fingerprint/ISprdFingerDetectListener;)I
    .locals 6
    .param p1, "listener"    # Lcom/sprd/validationtools/itemstest/fingerprint/ISprdFingerDetectListener;

    .line 135
    const/4 v0, -0x1

    .line 136
    .local v0, "ret":I
    const-class v1, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;

    monitor-enter v1

    .line 137
    const/16 v2, 0x64

    .line 139
    .local v2, "times":I
    if-eqz p1, :cond_5

    .line 140
    :goto_0
    if-lez v2, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->status:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    sget-object v4, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;->EXIT:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl$FingerMmiStatus;

    if-eq v3, v4, :cond_3

    .line 141
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->mAidlService:Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi;

    if-eqz v3, :cond_0

    .line 142
    invoke-interface {v3}, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi;->finger_detect()I

    move-result v3

    move v0, v3

    goto :goto_1

    .line 143
    :cond_0
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->mHidlService:Lvendor/sprd/hardware/fingerprintmmi/V1_0/IFingerprintmmi;

    if-eqz v3, :cond_1

    .line 144
    invoke-interface {v3}, Lvendor/sprd/hardware/fingerprintmmi/V1_0/IFingerprintmmi;->finger_detect()I

    move-result v3

    move v0, v3

    .line 146
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 147
    goto :goto_3

    .line 149
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 150
    const-string v3, "MMI-FingerprintTestImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not detect fingerprint, try again... ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    const-wide/16 v3, 0x64

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :goto_2
    goto :goto_0

    .line 153
    :catch_0
    move-exception v3

    goto :goto_2

    .line 166
    .end local v2    # "times":I
    :catchall_0
    move-exception v2

    goto :goto_7

    .line 163
    .restart local v2    # "times":I
    :catch_1
    move-exception v3

    goto :goto_4

    .line 158
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 159
    :try_start_2
    const-string v3, "MMI-FingerprintTestImpl"

    const-string v4, "finger_detect several times but failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_4
    invoke-interface {p1, v0}, Lcom/sprd/validationtools/itemstest/fingerprint/ISprdFingerDetectListener;->on_finger_detected(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 164
    .local v3, "e":Landroid/os/RemoteException;
    :goto_4
    :try_start_3
    const-string v4, "MMI-FingerprintTestImpl"

    const-string v5, "Failed to do finger_detect()"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 165
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_5
    nop

    .line 166
    .end local v2    # "times":I
    :goto_6
    monitor-exit v1

    .line 167
    return v0

    .line 166
    :goto_7
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public interrupt_test()I
    .locals 5

    .line 99
    const/4 v0, -0x1

    .line 100
    .local v0, "ret":I
    const-class v1, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;

    monitor-enter v1

    .line 102
    :try_start_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->mAidlService:Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi;

    if-eqz v2, :cond_0

    .line 103
    invoke-interface {v2}, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi;->interrupt_test()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->mHidlService:Lvendor/sprd/hardware/fingerprintmmi/V1_0/IFingerprintmmi;

    if-eqz v2, :cond_1

    .line 105
    invoke-interface {v2}, Lvendor/sprd/hardware/fingerprintmmi/V1_0/IFingerprintmmi;->interrupt_test()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 109
    :cond_1
    :goto_0
    goto :goto_1

    .line 110
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 107
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "MMI-FingerprintTestImpl"

    const-string v4, "Failed to do interrupt_test"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1

    .line 111
    return v0

    .line 110
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public spi_test()I
    .locals 5

    .line 81
    const/4 v0, -0x1

    .line 82
    .local v0, "ret":I
    const-class v1, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->mAidlService:Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi;

    if-eqz v2, :cond_0

    .line 85
    invoke-interface {v2}, Lvendor/sprd/hardware/fingerprintmmi/IFingerprintmmi;->spi_test()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;->mHidlService:Lvendor/sprd/hardware/fingerprintmmi/V1_0/IFingerprintmmi;

    if-eqz v2, :cond_1

    .line 87
    invoke-interface {v2}, Lvendor/sprd/hardware/fingerprintmmi/V1_0/IFingerprintmmi;->spi_test()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 91
    :cond_1
    :goto_0
    goto :goto_1

    .line 92
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 89
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "MMI-FingerprintTestImpl"

    const-string v4, "Failed to do spi_test"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1

    .line 93
    return v0

    .line 92
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
