.class public Lcom/sprd/validationtools/TelephonyManagerSprd;
.super Ljava/lang/Object;
.source "TelephonyManagerSprd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;
    }
.end annotation


# static fields
.field private static CDMA_FLAG:Ljava/lang/String; = null

.field private static LTE_FLAG_LF:Ljava/lang/String; = null

.field private static LTE_FLAG_TD:Ljava/lang/String; = null

.field private static LTE_FLAG_TL:Ljava/lang/String; = null

.field public static final MODEM_TYPE:Ljava/lang/String; = "ro.vendor.radio.modemtype"

.field public static final MODEM_TYPE_GSM:I = 0x0

.field public static final MODEM_TYPE_LTE:I = 0x3

.field public static final MODEM_TYPE_NR:I = 0x4

.field public static final MODEM_TYPE_TDSCDMA:I = 0x1

.field public static final MODEM_TYPE_WCDMA:I = 0x2

.field private static MODE_CSFB:Ljava/lang/String; = null

.field private static MODE_FDD_CSFB:Ljava/lang/String; = null

.field private static MODE_LW:Ljava/lang/String; = null

.field private static MODE_LWG_LWG:Ljava/lang/String; = null

.field private static MODE_LWG_WG:Ljava/lang/String; = null

.field private static MODE_LW_LW:Ljava/lang/String; = null

.field private static MODE_SUPPORT_LTE:[Ljava/lang/String; = null

.field private static MODE_SUPPORT_NR:[Ljava/lang/String; = null

.field private static MODE_SUPPORT_WCDMA:[Ljava/lang/String; = null

.field private static MODE_SVLTE:Ljava/lang/String; = null

.field private static MODE_TDD_CSFB:Ljava/lang/String; = null

.field private static MODE_WG:Ljava/lang/String; = null

.field private static MODE_WG_WG:Ljava/lang/String; = null

.field private static NR_FLAG:Ljava/lang/String; = null

.field private static PROP_SSDA_MODE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "TelephonyManagerSprd"

.field private static WCDMA_FLAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 22
    const-string v0, "persist.vendor.radio.modem.config"

    sput-object v0, Lcom/sprd/validationtools/TelephonyManagerSprd;->PROP_SSDA_MODE:Ljava/lang/String;

    .line 25
    const-string v0, "svlte"

    sput-object v0, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_SVLTE:Ljava/lang/String;

    .line 26
    const-string v0, "TL_TD_G,G"

    sput-object v0, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_TDD_CSFB:Ljava/lang/String;

    .line 27
    const-string v0, "TL_LF_W_G,G"

    sput-object v0, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_FDD_CSFB:Ljava/lang/String;

    .line 28
    const-string v0, "TL_LF_TD_W_G,G"

    sput-object v0, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_CSFB:Ljava/lang/String;

    .line 29
    const-string v0, "TL_LF_TD_W_G,W_G"

    sput-object v0, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_LW:Ljava/lang/String;

    .line 31
    const-string v0, "W_G,G"

    sput-object v0, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_WG:Ljava/lang/String;

    .line 32
    const-string v0, "W_G,W_G"

    sput-object v0, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_WG_WG:Ljava/lang/String;

    .line 35
    const-string v0, "TL_LF_TD_W_G,TL_LF_TD_W_G"

    sput-object v0, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_LW_LW:Ljava/lang/String;

    .line 38
    const-string v0, "TL"

    sput-object v0, Lcom/sprd/validationtools/TelephonyManagerSprd;->LTE_FLAG_TL:Ljava/lang/String;

    .line 39
    const-string v1, "TD"

    sput-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd;->LTE_FLAG_TD:Ljava/lang/String;

    .line 40
    const-string v2, "LF"

    sput-object v2, Lcom/sprd/validationtools/TelephonyManagerSprd;->LTE_FLAG_LF:Ljava/lang/String;

    .line 42
    const-string v3, "TL_LF_W_G,W_G"

    sput-object v3, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_LWG_WG:Ljava/lang/String;

    .line 43
    const-string v4, "TL_LF_W_G,TL_LF_W_G"

    sput-object v4, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_LWG_LWG:Ljava/lang/String;

    .line 44
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v4, v6, v3

    sput-object v6, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_SUPPORT_WCDMA:[Ljava/lang/String;

    .line 45
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v7

    aput-object v1, v4, v3

    aput-object v2, v4, v5

    sput-object v4, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_SUPPORT_LTE:[Ljava/lang/String;

    .line 48
    const-string v0, "C"

    sput-object v0, Lcom/sprd/validationtools/TelephonyManagerSprd;->CDMA_FLAG:Ljava/lang/String;

    .line 49
    const-string v0, "W"

    sput-object v0, Lcom/sprd/validationtools/TelephonyManagerSprd;->WCDMA_FLAG:Ljava/lang/String;

    .line 51
    const-string v0, "NR"

    sput-object v0, Lcom/sprd/validationtools/TelephonyManagerSprd;->NR_FLAG:Ljava/lang/String;

    .line 52
    new-array v1, v3, [Ljava/lang/String;

    aput-object v0, v1, v7

    sput-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_SUPPORT_NR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsSupportCDMA()Z
    .locals 5

    .line 124
    sget-object v0, Lcom/sprd/validationtools/TelephonyManagerSprd;->PROP_SSDA_MODE:Ljava/lang/String;

    invoke-static {v0}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "ssdaMode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsSupportCDMA: ssdaMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManagerSprd"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-eqz v0, :cond_0

    sget-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd;->CDMA_FLAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 127
    .local v1, "support":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsSupportCDMA: support="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v1
.end method

.method public static IsSupportLTE()Z
    .locals 9

    .line 132
    sget-object v0, Lcom/sprd/validationtools/TelephonyManagerSprd;->PROP_SSDA_MODE:Ljava/lang/String;

    invoke-static {v0}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "ssdaMode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsSupportLTE: ssdaMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManagerSprd"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_SUPPORT_LTE:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 135
    .local v6, "support":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IsSupportLTE: support="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 137
    const/4 v1, 0x1

    return v1

    .line 134
    .end local v6    # "support":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 140
    :cond_1
    return v4
.end method

.method public static IsSupportNR()Z
    .locals 9

    .line 143
    sget-object v0, Lcom/sprd/validationtools/TelephonyManagerSprd;->PROP_SSDA_MODE:Ljava/lang/String;

    invoke-static {v0}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "ssdaMode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsSupportNR: ssdaMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManagerSprd"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sget-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_SUPPORT_NR:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 146
    .local v6, "support":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IsSupportNR: support="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 148
    const/4 v1, 0x1

    return v1

    .line 145
    .end local v6    # "support":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 151
    :cond_1
    return v4
.end method

.method public static IsSupportWCDMA()Z
    .locals 10

    .line 108
    sget-object v0, Lcom/sprd/validationtools/TelephonyManagerSprd;->PROP_SSDA_MODE:Ljava/lang/String;

    invoke-static {v0}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "ssdaMode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsSupportWCDMA: ssdaMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManagerSprd"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_SUPPORT_WCDMA:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const-string v6, "IsSupportWCDMA: support="

    const/4 v7, 0x1

    if-ge v5, v3, :cond_1

    aget-object v8, v1, v5

    .line 111
    .local v8, "support":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 113
    return v7

    .line 110
    .end local v8    # "support":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 116
    :cond_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd;->WCDMA_FLAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v4, v7

    :cond_2
    move v1, v4

    .line 117
    .local v1, "support":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v1
.end method

.method public static getModemType()I
    .locals 3

    .line 58
    const-string v0, "ro.vendor.radio.modemtype"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "modeType":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModemType: modemType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManagerSprd"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v1, "t"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const/4 v1, 0x1

    return v1

    .line 62
    :cond_0
    const-string v1, "w"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const/4 v1, 0x2

    return v1

    .line 64
    :cond_1
    const-string v1, "tl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "lf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 65
    const-string v1, "l"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 67
    :cond_2
    const-string v1, "nr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    const/4 v1, 0x4

    return v1

    .line 71
    :cond_3
    const/4 v1, 0x0

    return v1

    .line 66
    :cond_4
    :goto_0
    const/4 v1, 0x3

    return v1
.end method

.method public static getRadioCapbility()Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;
    .locals 3

    .line 80
    sget-object v0, Lcom/sprd/validationtools/TelephonyManagerSprd;->PROP_SSDA_MODE:Ljava/lang/String;

    invoke-static {v0}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "ssdaMode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioCapbility: ssdaMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManagerSprd"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_SVLTE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    sget-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->TDD_SVLTE:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    return-object v1

    .line 84
    :cond_0
    sget-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_TDD_CSFB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    sget-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->TDD_CSFB:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    return-object v1

    .line 86
    :cond_1
    sget-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_FDD_CSFB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    sget-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->FDD_CSFB:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    return-object v1

    .line 88
    :cond_2
    sget-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_CSFB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    sget-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->CSFB:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    return-object v1

    .line 90
    :cond_3
    sget-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_LW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 91
    sget-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->CSFB:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    return-object v1

    .line 94
    :cond_4
    sget-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_WG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_WG_WG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 99
    :cond_5
    sget-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd;->MODE_LW_LW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 100
    sget-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->LWLW:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    return-object v1

    .line 103
    :cond_6
    sget-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->NONE:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    return-object v1

    .line 95
    :cond_7
    :goto_0
    sget-object v1, Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;->WG:Lcom/sprd/validationtools/TelephonyManagerSprd$RadioCapbility;

    return-object v1
.end method
