.class public Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "SIMCardTestActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SIMCardTestActivity"


# instance fields
.field private container:Landroid/widget/LinearLayout;

.field public mHandler:Landroid/os/Handler;

.field private mSimReadyCount:I

.field private mSubscriptionManagerProxy:Lcom/sprd/validationtools/nonpublic/SubscriptionManagerProxy;

.field private mTelMgr:Landroid/telephony/TelephonyManager;

.field private mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

.field private phoneCount:I


# direct methods
.method static bridge synthetic -$$Nest$mgetResultList(Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;I)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->getResultList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mSimReadyCount:I

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getKeyList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v0, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "Sim State:  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    const-string v1, "Sim Country:  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    const-string v1, "Sim Operator:  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    const-string v1, "Sim Operator Name:  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v1, "Sim Serial Number:  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    const-string v1, "Subscriber Id:  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    const-string v1, "Device Id:  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    const-string v1, "Line 1 Number:  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    const-string v1, "Phone Type:  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    const-string v1, "Data State:  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v1, "Data Activity:  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    const-string v1, "Network Country:  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    const-string v1, "Network Operator:  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    const-string v1, "Network Type:  "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    return-object v0
.end method

.method private getResultList(I)Ljava/util/List;
    .locals 11
    .param p1, "simId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 85
    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 86
    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 87
    if-nez v1, :cond_0

    .line 88
    return-object v3

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mSubscriptionManagerProxy:Lcom/sprd/validationtools/nonpublic/SubscriptionManagerProxy;

    invoke-virtual {v1, p1}, Lcom/sprd/validationtools/nonpublic/SubscriptionManagerProxy;->getSubId(I)[I

    move-result-object v1

    .line 92
    .local v1, "mSubIds":[I
    if-eqz v1, :cond_29

    array-length v2, v1

    if-gtz v2, :cond_1

    goto/16 :goto_e

    .line 93
    :cond_1
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 95
    .local v2, "mSubId":I
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    .line 96
    const-string v3, "fine"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mSimReadyCount:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mSimReadyCount:I

    goto :goto_0

    .line 98
    :cond_2
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 99
    const-string v3, "no SIM card"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_3
    const-string v3, "locked/unknow"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :goto_0
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, p1}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 105
    const-string v3, "can not get country"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :cond_4
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, p1}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :goto_1
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, p1}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 111
    const-string v3, "can not get operator"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 113
    :cond_5
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, p1}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :goto_2
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, p1}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 117
    const-string v3, "can not get operator name"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 119
    :cond_6
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, p1}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :goto_3
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, v2}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 123
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, v2}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 125
    :cond_7
    const-string v3, "can not get serial number"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :goto_4
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, v2}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 129
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, v2}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 131
    :cond_8
    const-string v3, "can not get subscriber id"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :goto_5
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-static {v3, p1}, Lcom/sprd/validationtools/Safe;->deviceId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 135
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-static {v3, p1}, Lcom/sprd/validationtools/Safe;->deviceId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 137
    :cond_9
    const-string v3, "can not get device id"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_6
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, v2}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getLine1Number(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 141
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, v2}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getLine1Number(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 143
    :cond_a
    const-string v3, "can not get phone number"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :goto_7
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, p1}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getPhoneType(I)I

    move-result v3

    const-string v7, "unknow"

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-nez v3, :cond_b

    .line 147
    const-string v3, "NONE"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 148
    :cond_b
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, p1}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getPhoneType(I)I

    move-result v3

    if-ne v3, v5, :cond_c

    .line 149
    const-string v3, "GSM"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 150
    :cond_c
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, p1}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getPhoneType(I)I

    move-result v3

    if-ne v3, v9, :cond_d

    .line 151
    const-string v3, "CDMA"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 152
    :cond_d
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, p1}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getPhoneType(I)I

    move-result v3

    if-ne v3, v8, :cond_e

    .line 153
    const-string v3, "SIP"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 155
    :cond_e
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :goto_8
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v3

    if-nez v3, :cond_f

    .line 160
    const-string v3, "disconnected"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 161
    :cond_f
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v3

    if-ne v3, v5, :cond_10

    .line 162
    const-string v3, "connecting"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 163
    :cond_10
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v3

    if-ne v3, v9, :cond_11

    .line 164
    const-string v3, "connected"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 165
    :cond_11
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v3

    if-ne v3, v8, :cond_12

    .line 166
    const-string v3, "suspended"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 168
    :cond_12
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :goto_9
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v3

    const/4 v10, 0x4

    if-nez v3, :cond_13

    .line 172
    const-string v3, "none"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 173
    :cond_13
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v3

    if-ne v3, v5, :cond_14

    .line 174
    const-string v3, "in"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 175
    :cond_14
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v3

    if-ne v3, v9, :cond_15

    .line 176
    const-string v3, "out"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 177
    :cond_15
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v3

    if-ne v3, v8, :cond_16

    .line 178
    const-string v3, "in/out"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 179
    :cond_16
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v3

    if-ne v3, v10, :cond_17

    .line 180
    const-string v3, "dormant"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 182
    :cond_17
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :goto_a
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 186
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 188
    :cond_18
    const-string v3, "can not get network country"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :goto_b
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, p1}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 192
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, p1}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 194
    :cond_19
    const-string v3, "can not get network operator"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :goto_c
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, v2}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getNetworkType(I)I

    move-result v3

    if-ne v3, v5, :cond_1a

    .line 198
    const-string v3, "gprs"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 199
    :cond_1a
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, v2}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getNetworkType(I)I

    move-result v3

    if-ne v3, v9, :cond_1b

    .line 200
    const-string v3, "edge"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 201
    :cond_1b
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, v2}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getNetworkType(I)I

    move-result v3

    if-ne v3, v8, :cond_1c

    .line 202
    const-string v3, "umts"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 203
    :cond_1c
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, v2}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getNetworkType(I)I

    move-result v3

    if-ne v3, v10, :cond_1d

    .line 204
    const-string v3, "hsdpa"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 205
    :cond_1d
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, v2}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getNetworkType(I)I

    move-result v3

    if-ne v3, v4, :cond_1e

    .line 206
    const-string v3, "hsupa"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 207
    :cond_1e
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, v2}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getNetworkType(I)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1f

    .line 208
    const-string v3, "hspa"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 209
    :cond_1f
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, v2}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getNetworkType(I)I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_20

    .line 210
    const-string v3, "cdma"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 211
    :cond_20
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, v2}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getNetworkType(I)I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_21

    .line 212
    const-string v3, "evdo 0"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 213
    :cond_21
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, v2}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getNetworkType(I)I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_22

    .line 214
    const-string v3, "evdo a"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 215
    :cond_22
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, v2}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getNetworkType(I)I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_23

    .line 216
    const-string v3, "evdo b"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 217
    :cond_23
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, v2}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getNetworkType(I)I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_24

    .line 218
    const-string v3, "1xrtt"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 219
    :cond_24
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, v2}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getNetworkType(I)I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_25

    .line 220
    const-string v3, "iden"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 221
    :cond_25
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, v2}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getNetworkType(I)I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_26

    .line 222
    const-string v3, "lte"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 223
    :cond_26
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, v2}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getNetworkType(I)I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_27

    .line 224
    const-string v3, "ehrpd"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 225
    :cond_27
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {v3, v2}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;->getNetworkType(I)I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_28

    .line 226
    const-string v3, "hspap"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 228
    :cond_28
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :goto_d
    return-object v0

    .line 92
    .end local v2    # "mSubId":I
    :cond_29
    :goto_e
    return-object v3
.end method

.method private showDevice()V
    .locals 8

    .line 255
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->getKeyList()Ljava/util/List;

    move-result-object v0

    .line 256
    .local v0, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 258
    .local v1, "resultList0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->phoneCount:I

    if-ge v2, v3, :cond_3

    .line 259
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 260
    .local v3, "tv":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 261
    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 263
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 264
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090158

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 263
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 266
    invoke-direct {p0, v2}, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->getResultList(I)Ljava/util/List;

    move-result-object v1

    .line 267
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    const/16 v5, 0xe

    if-ge v4, v5, :cond_2

    .line 268
    const-string v5, "\n"

    if-eqz v1, :cond_1

    .line 269
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 271
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 267
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 273
    .end local v4    # "j":I
    :cond_2
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    .end local v3    # "tv":Landroid/widget/TextView;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 275
    .end local v2    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f090156

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->setTitle(I)V

    .line 44
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 45
    const v1, 0x7f05008f

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->container:Landroid/widget/LinearLayout;

    .line 46
    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->setTitle(I)V

    .line 47
    new-instance v0, Lcom/sprd/validationtools/nonpublic/SubscriptionManagerProxy;

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sprd/validationtools/nonpublic/SubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mSubscriptionManagerProxy:Lcom/sprd/validationtools/nonpublic/SubscriptionManagerProxy;

    .line 48
    new-instance v0, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelephonyManagerProxy:Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;

    .line 49
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 50
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->phoneCount:I

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->phoneCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIMCardTestActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->showDevice()V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimReadyCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mSimReadyCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget v0, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->phoneCount:I

    iget v1, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mSimReadyCount:I

    const-wide/16 v2, 0x3e8

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity$2;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity$2;-><init>(Lcom/sprd/validationtools/itemstest/telephony/SIMCardTestActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    :goto_0
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->removeButton()V

    .line 80
    return-void
.end method
