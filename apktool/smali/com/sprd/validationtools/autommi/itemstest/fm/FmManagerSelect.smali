.class public Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;
.super Ljava/lang/Object;
.source "FmManagerSelect.java"


# static fields
.field public static final DEVICE_OUT_FM_HEADSET:I = 0x100000

.field private static final DEVICE_STATE_AVAILABLE:I = 0x1

.field private static final DEVICE_STATE_UNAVAILABLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FmManagerSelect"

.field private static mAudioManagerEx:Landroid/media/UnisocAudioManager;


# instance fields
.field private mAudioManagerProxy:Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    invoke-direct {v0, p1}, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;->mAudioManagerProxy:Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    .line 25
    invoke-static {p1}, Landroid/media/UnisocAudioManager;->getInstance(Landroid/content/Context;)Landroid/media/UnisocAudioManager;

    move-result-object v0

    sput-object v0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;->mAudioManagerEx:Landroid/media/UnisocAudioManager;

    .line 26
    return-void
.end method


# virtual methods
.method public closeDev()Z
    .locals 1

    .line 33
    invoke-static {}, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->getInstance()Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->closeDev()Z

    move-result v0

    return v0
.end method

.method public getFreq()I
    .locals 1

    .line 57
    const/4 v0, -0x1

    return v0
.end method

.method public openDev()Z
    .locals 1

    .line 29
    invoke-static {}, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->getInstance()Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->openDev()Z

    move-result v0

    return v0
.end method

.method public setAudioPathEnable(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .line 46
    const/4 v0, 0x1

    const/high16 v1, 0x100000

    const-string v2, ""

    if-eqz p1, :cond_0

    .line 47
    sget-object v3, Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;->mAudioManagerEx:Landroid/media/UnisocAudioManager;

    invoke-virtual {v3, v1, v0, v2, v2}, Landroid/media/UnisocAudioManager;->setDeviceConnectionStateForFM(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_0
    sget-object v3, Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;->mAudioManagerEx:Landroid/media/UnisocAudioManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2, v2}, Landroid/media/UnisocAudioManager;->setDeviceConnectionStateForFM(IILjava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_0
    return v0
.end method

.method public setMute(Z)V
    .locals 4
    .param p1, "mute"    # Z

    .line 41
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;->mAudioManagerProxy:Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;->getStreamMaxVolume(I)I

    move-result v0

    .line 42
    .local v0, "volumeMusic":I
    iget-object v2, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/FmManagerSelect;->mAudioManagerProxy:Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;->setStreamVolume(III)V

    .line 43
    return-void
.end method

.method public tuneRadio(F)Z
    .locals 1
    .param p1, "frequency"    # F

    .line 37
    invoke-static {}, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->getInstance()Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->tune(F)Z

    move-result v0

    return v0
.end method
