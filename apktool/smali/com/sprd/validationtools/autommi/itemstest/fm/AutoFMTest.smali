.class public Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "AutoFMTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest$FMHandler;
    }
.end annotation


# static fields
.field private static final CHECK_RESULT:I = 0x2

.field private static final FORCE_NONE:I = 0x0

.field private static final FOR_FM:I = 0x8

.field private static final START_FM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AutoFMTest"

.field private static mAudioManagerEx:Landroid/media/UnisocAudioManager;

.field private static mType:Ljava/lang/String;


# instance fields
.field private TEST_FREQUENCY:Ljava/lang/String;

.field private TEST_FREQUENCY_TAG:Ljava/lang/String;

.field private volatile instance:Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;

.field private isOpen:Z

.field public mContext:Landroid/content/Context;

.field private mEarphonePluginReceiver:Landroid/content/BroadcastReceiver;

.field private mFMFreq:Landroid/widget/TextView;

.field private mFMHandler:Landroid/os/Handler;

.field private mFMHandlerThread:Landroid/os/HandlerThread;

.field private mFMRSSI:Landroid/widget/TextView;

.field private mFmManager:Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;

.field private mFreq:F

.field private mIsHeadsetIn:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetTEST_FREQUENCY(Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->TEST_FREQUENCY:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFMHandler(Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFMHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsHeadsetIn(Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mIsHeadsetIn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misHeadsetExists(Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->isHeadsetExists()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFmManager:Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;

    .line 34
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->isOpen:Z

    .line 35
    const/4 v1, 0x0

    iput v1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFreq:F

    .line 36
    const-string v1, "95.3"

    iput-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->TEST_FREQUENCY:Ljava/lang/String;

    .line 37
    const-string v1, "Test Frequency="

    iput-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->TEST_FREQUENCY_TAG:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFMHandlerThread:Landroid/os/HandlerThread;

    .line 94
    new-instance v0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest$1;-><init>(Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mEarphonePluginReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private isHeadsetExists()Z
    .locals 2

    .line 163
    const-string v0, "/sys/class/switch/h2w/state"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->getIntFromFile(Ljava/lang/String;)I

    move-result v0

    .line 164
    .local v0, "newState":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 214
    const-string v0, "ro.product.board"

    invoke-static {v0}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "board":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMTest board name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutoFMTest"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-eqz v0, :cond_0

    const-string v1, "512"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    const/4 v1, 0x0

    return v1

    .line 219
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private startPowerUp()V
    .locals 3

    .line 149
    const-string v0, "AutoFMTest"

    const-string v1, "startPowerUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFmManager:Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;

    invoke-virtual {v1}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;->openDev()Z

    move-result v1

    .line 151
    .local v1, "value":Z
    if-nez v1, :cond_0

    .line 152
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->isOpen:Z

    .line 153
    const-string v2, "openDev fail "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->isOpen:Z

    .line 157
    iget-object v2, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFmManager:Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;

    invoke-virtual {v2, v0}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;->setMute(Z)V

    .line 158
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFmManager:Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;

    iget v2, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFreq:F

    invoke-virtual {v0, v2}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;->tuneRadio(F)Z

    .line 159
    invoke-direct {p0}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->startRender()V

    .line 160
    return-void
.end method

.method private declared-synchronized startRender()V
    .locals 3

    monitor-enter p0

    .line 168
    :try_start_0
    const-string v0, "AutoFMTest"

    const-string v1, "startRender "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->isHeadsetExists()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 170
    sget-object v0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mAudioManagerEx:Landroid/media/UnisocAudioManager;

    invoke-virtual {v0, v1}, Landroid/media/UnisocAudioManager;->setFmSpeakerOn(Z)V

    goto :goto_0

    .line 172
    .end local p0    # "this":Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;
    :cond_0
    sget-object v0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mAudioManagerEx:Landroid/media/UnisocAudioManager;

    invoke-virtual {v0, v2}, Landroid/media/UnisocAudioManager;->setFmSpeakerOn(Z)V

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFmManager:Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;->setAudioPathEnable(Z)Z

    .line 175
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFmManager:Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;

    invoke-virtual {v0, v2}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;->setMute(Z)V

    .line 176
    invoke-virtual {p0}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->startScan()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public checkRssi(I)Z
    .locals 2
    .param p1, "rssi"    # I

    .line 188
    neg-int v0, p1

    .line 189
    .local v0, "result":I
    const/16 v1, -0x64

    if-le v0, v1, :cond_0

    const/16 v1, -0xa

    if-ge v0, v1, :cond_0

    .line 190
    const/4 v1, 0x1

    return v1

    .line 192
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getFreq()I
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFmManager:Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;

    invoke-virtual {v0}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;->getFreq()I

    move-result v0

    .line 202
    .local v0, "iFreq":I
    if-lez v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 78
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mContext:Landroid/content/Context;

    .line 81
    new-instance v1, Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;

    invoke-direct {v1, v0}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFmManager:Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mEarphonePluginReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/UnisocAudioManager;->getInstance(Landroid/content/Context;)Landroid/media/UnisocAudioManager;

    move-result-object v1

    sput-object v1, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mAudioManagerEx:Landroid/media/UnisocAudioManager;

    .line 86
    const v1, 0x7f0500fe

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFMFreq:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f05001d

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFMRSSI:Landroid/widget/TextView;

    .line 88
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "FMHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFMHandlerThread:Landroid/os/HandlerThread;

    .line 89
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 90
    new-instance v1, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest$FMHandler;

    iget-object v2, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFMHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest$FMHandler;-><init>(Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFMHandler:Landroid/os/Handler;

    .line 91
    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 92
    return-void
.end method

.method public powerOffFM()V
    .locals 2

    .line 206
    const-string v0, "AutoFMTest"

    const-string v1, "power off fm device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFmManager:Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;->setMute(Z)V

    .line 208
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFmManager:Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;

    invoke-virtual {v0}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;->closeDev()Z

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->isOpen:Z

    .line 210
    return-void
.end method

.method public showRssi()Z
    .locals 4

    .line 180
    const-string v0, "AutoFMTest"

    const-string v1, "show fm device rssi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {}, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->getInstance()Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->getRssi()I

    move-result v1

    .line 182
    .local v1, "rssi":I
    iget-object v2, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFMRSSI:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rssi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->checkRssi(I)Z

    move-result v0

    return v0
.end method

.method public startFM(Ljava/lang/String;)V
    .locals 4
    .param p1, "param"    # Ljava/lang/String;

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AutoFMTest"

    if-eqz v0, :cond_0

    .line 113
    const-string v0, " start() failed -> param is empty!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFMFreq:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->TEST_FREQUENCY_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFreq:F

    .line 119
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFreq:F

    .line 120
    iget-boolean v2, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->isOpen:Z

    if-nez v2, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->startPowerUp()V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFmManager:Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;

    invoke-virtual {v2, v0}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;->tuneRadio(F)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    nop

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FmManager power up and setFreq() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFreq:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start param is error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public startScan()V
    .locals 0

    .line 198
    return-void
.end method

.method public stopFM()V
    .locals 3

    .line 133
    const-string v0, "AutoFMTest"

    iget-boolean v1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->isOpen:Z

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->powerOffFM()V

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mFmManager:Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;->setAudioPathEnable(Z)Z

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->mEarphonePluginReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    const-string v1, "unregister receiver..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "unregisterreceiver Exception:"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->instance:Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;

    if-eqz v0, :cond_1

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;->instance:Lcom/sprd/validationtools/autommi/itemstest/fm/AutoFMTest;

    .line 146
    :cond_1
    return-void
.end method
