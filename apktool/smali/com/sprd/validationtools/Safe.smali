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

.method public static contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    return v0

    :catch_c
    const/4 v0, 0x0

    return v0
.end method

.method public static wifiFactoryMac(Landroid/net/wifi/WifiManager;)[Ljava/lang/String;
    .locals 3
    .param p0, "wm"    # Landroid/net/wifi/WifiManager;

    :try_start_m
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    :try_end_m
    .catch Ljava/lang/Throwable; {:try_start_m .. :try_end_m} :catch_m

    goto :goto_m

    :catch_m
    :goto_m
    const-string v0, "cat /mnt/vendor/wifimac.txt 2>/dev/null"

    invoke-static {v0}, Lcom/sprd/validationtools/Sh;->run(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sprd/validationtools/Safe;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "cat /sys/class/net/wlan0/address 2>/dev/null"

    invoke-static {v0}, Lcom/sprd/validationtools/Sh;->run(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sprd/validationtools/Safe;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public static btEnable(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 1
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    :try_start_e
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    return v0

    :catch_e
    const-string v0, "svc bluetooth enable"

    invoke-static {v0}, Lcom/sprd/validationtools/Sh;->run(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public static btDisable(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 1
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    :try_start_d
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    return v0

    :catch_d
    const-string v0, "svc bluetooth disable"

    invoke-static {v0}, Lcom/sprd/validationtools/Sh;->run(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method
