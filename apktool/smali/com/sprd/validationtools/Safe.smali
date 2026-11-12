.class public final Lcom/sprd/validationtools/Safe;
.super Ljava/lang/Object;
.source "Safe.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# public methods
.method public static nz(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public static btAddress(Landroid/bluetooth/BluetoothAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    :try_start_0
    invoke-static {p0}, Lcom/sprd/validationtools/Safe;->btAddress(Landroid/bluetooth/BluetoothAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sprd/validationtools/Safe;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    :goto_0
    const-string v0, "cat /mnt/vendor/btmac.txt 2>/dev/null"

    invoke-static {v0}, Lcom/sprd/validationtools/Sh;->run(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sprd/validationtools/Safe;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deviceId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "tm"    # Landroid/telephony/TelephonyManager;
    .param p1, "slot"    # I

    :try_start_0
    invoke-static {p0, p1}, Lcom/sprd/validationtools/Safe;->deviceId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sprd/validationtools/Safe;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    :goto_0
    const-string v0, "getprop persist.vendor.radio.imei; getprop persist.radio.imei"

    invoke-static {v0}, Lcom/sprd/validationtools/Sh;->run(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sprd/validationtools/Safe;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static meid(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "tm"    # Landroid/telephony/TelephonyManager;
    .param p1, "slot"    # I

    :try_start_0
    invoke-static {p0, p1}, Lcom/sprd/validationtools/Safe;->meid(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sprd/validationtools/Safe;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    :goto_0
    const-string v0, "getprop persist.vendor.radio.meid; getprop persist.radio.meid"

    invoke-static {v0}, Lcom/sprd/validationtools/Sh;->run(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sprd/validationtools/Safe;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static subscriberId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "tm"    # Landroid/telephony/TelephonyManager;
    .param p1, "slot"    # I

    :try_start_0
    invoke-static {p0, p1}, Lcom/sprd/validationtools/Safe;->subscriberId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sprd/validationtools/Safe;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public static simSerial(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "tm"    # Landroid/telephony/TelephonyManager;
    .param p1, "slot"    # I

    :try_start_0
    invoke-static {p0, p1}, Lcom/sprd/validationtools/Safe;->simSerial(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sprd/validationtools/Safe;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public static wifiEnabled(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .param p0, "wm"    # Landroid/net/wifi/WifiManager;

    :try_start_0
    invoke-static {p0}, Lcom/sprd/validationtools/Safe;->wifiEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setWifiEnabled(Landroid/net/wifi/WifiManager;Z)Z
    .locals 1
    .param p0, "wm"    # Landroid/net/wifi/WifiManager;
    .param p1, "on"    # Z

    :try_start_0
    invoke-static {p0, p1}, Lcom/sprd/validationtools/Safe;->setWifiEnabled(Landroid/net/wifi/WifiManager;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
