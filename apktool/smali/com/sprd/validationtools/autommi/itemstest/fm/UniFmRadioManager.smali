.class public Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;
.super Ljava/lang/Object;
.source "UniFmRadioManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UniFmRadioManager"

.field private static sInstance:Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;


# instance fields
.field private mCallback:Lcom/sprd/validationtools/autommi/itemstest/fm/FmCallback;

.field private mFmTunerCallbackAdapter:Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;

.field private final mHandler:Landroid/os/Handler;

.field private mIBroadcastRadio:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

.field private mITunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

.field private mOpenSessionCallback:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$openSessionCallback;


# direct methods
.method static bridge synthetic -$$Nest$fputmITunerSession(Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;Landroid/hardware/broadcastradio/V2_0/ITunerSession;)V
    .locals 0

    iput-object p1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->mITunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmCallback;

    invoke-direct {v0}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmCallback;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->mCallback:Lcom/sprd/validationtools/autommi/itemstest/fm/FmCallback;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->mHandler:Landroid/os/Handler;

    .line 29
    new-instance v0, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager$1;-><init>(Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;)V

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->mOpenSessionCallback:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$openSessionCallback;

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;
    .locals 1

    .line 40
    sget-object v0, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->sInstance:Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;

    if-eqz v0, :cond_0

    .line 41
    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;

    invoke-direct {v0}, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;-><init>()V

    sput-object v0, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->sInstance:Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;

    .line 45
    return-object v0
.end method

.method private getParm(Ljava/lang/String;)I
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getParm begin! key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniFmRadioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "result":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v2, "keylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :try_start_0
    iget-object v3, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->mITunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-interface {v3, v2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->getParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 132
    .local v3, "resultMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;>;"
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    iget-object v4, v4, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 136
    nop

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getParm end! result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return v0

    .line 133
    .end local v3    # "resultMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;>;"
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    return v0
.end method


# virtual methods
.method public closeDev()Z
    .locals 3

    .line 73
    const-string v0, "UniFmRadioManager"

    const-string v1, "closeDev begin!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->mITunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 75
    return v2

    .line 79
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    nop

    .line 84
    const-string v1, "closeDev end!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x1

    return v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 82
    return v2
.end method

.method public getRssi()I
    .locals 1

    .line 117
    const-string v0, "rssi"

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->getParm(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSnr()I
    .locals 1

    .line 121
    const-string v0, "snr"

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->getParm(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public openDev()Z
    .locals 4

    .line 54
    const-string v0, "UniFmRadioManager"

    const-string v1, "openDev begin!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :try_start_0
    invoke-static {}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getService()Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->mIBroadcastRadio:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    .line 57
    new-instance v1, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;

    iget-object v2, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->mCallback:Lcom/sprd/validationtools/autommi/itemstest/fm/FmCallback;

    iget-object v3, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;-><init>(Lcom/sprd/validationtools/autommi/itemstest/fm/FmCallback;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->mFmTunerCallbackAdapter:Lcom/sprd/validationtools/autommi/itemstest/fm/FmTunerCallbackAdapter;

    .line 58
    iget-object v2, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->mIBroadcastRadio:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    iget-object v3, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->mOpenSessionCallback:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$openSessionCallback;

    invoke-interface {v2, v1, v3}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->openSession(Landroid/hardware/broadcastradio/V2_0/ITunerCallback;Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$openSessionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    nop

    .line 63
    const-string v1, "openDev end!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v0, 0x1

    return v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    const/4 v1, 0x0

    return v1
.end method

.method public tune(F)Z
    .locals 7
    .param p1, "frequency"    # F

    .line 96
    const-string v0, "UniFmRadioManager"

    const-string v1, "tuneRadio begin!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, "result":I
    new-instance v2, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-direct {v2}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;-><init>()V

    .line 99
    .local v2, "programSelector":Landroid/hardware/broadcastradio/V2_0/ProgramSelector;
    iget-object v3, v2, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    const/4 v4, 0x1

    iput v4, v3, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    .line 100
    iget-object v3, v2, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v5, p1

    float-to-long v5, v5

    iput-wide v5, v3, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->value:J

    .line 101
    iget-object v3, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->mITunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 103
    :try_start_0
    invoke-interface {v3, v2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->tune(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)I

    move-result v3

    move v1, v3

    .line 104
    const/16 v3, -0x26

    if-ne v1, v3, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->openDev()Z

    .line 106
    iget-object v3, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->mITunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-interface {v3, v2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->tune(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 110
    :cond_0
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    return v5

    .line 112
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tuning to station: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " result: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    return v4
.end method
