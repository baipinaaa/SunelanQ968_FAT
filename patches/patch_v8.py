#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""v8: 修普通身份下的崩溃点
1) StorageUtil.getUsbdiskVolumes 的 catch 只接 RemoteException, NoSuchMethodError(Error) 逃逸 -> 任何 Throwable 都返回空列表
2) 新增 Safe.smali: 把 BT MAC / IMEI / MEID / IMSI / ICCID 这类需要特权权限的调用包起来,
   失败时退回 su 读 /mnt/vendor/btmac.txt 或 getprop
3) 批量把 invoke-virtual 换成 invoke-static Safe.xxx (寄存器完全一致, 不需要改动上下文)
"""
import io
import os
import re
import sys

ROOT = sys.argv[1] if len(sys.argv) > 1 else "_stock/apk/apktool"
SM = os.path.join(ROOT, "smali")
PKG = os.path.join(SM, "com", "sprd", "validationtools")

SAFE = r'''.class public final Lcom/sprd/validationtools/Safe;
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
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

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
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

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
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
'''

# (invoke 指令前缀, 原始签名, Safe 方法名, Safe 签名)
REPL = [
    ("invoke-virtual {v%d}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;",
     "btAddress", "Landroid/bluetooth/BluetoothAdapter;"),
    ("invoke-virtual {v%d, v%d}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;",
     "deviceId", "Landroid/telephony/TelephonyManager;I"),
    ("invoke-virtual {v%d, v%d}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;",
     "meid", "Landroid/telephony/TelephonyManager;I"),
    ("invoke-virtual {v%d, v%d}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;",
     "subscriberId", "Landroid/telephony/TelephonyManager;I"),
    ("invoke-virtual {v%d, v%d}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;",
     "simSerial", "Landroid/telephony/TelephonyManager;I"),
]

PAT1 = re.compile(r"invoke-virtual \{([vp]\d+)\}, Landroid/bluetooth/BluetoothAdapter;->getAddress\(\)Ljava/lang/String;")
PAT2 = re.compile(r"invoke-virtual \{([vp]\d+), ([vp]\d+)\}, Landroid/telephony/TelephonyManager;->(getDeviceId|getMeid|getSubscriberId|getSimSerialNumber)\(I\)Ljava/lang/String;")
PAT3 = re.compile(r"invoke-virtual \{([vp]\d+)\}, Landroid/net/wifi/WifiManager;->isWifiEnabled\(\)Z")
PAT4 = re.compile(r"invoke-virtual \{([vp]\d+), ([vp]\d+)\}, Landroid/net/wifi/WifiManager;->setWifiEnabled\(Z\)Z")

MAP = {
    "getDeviceId": ("deviceId", "I"),
    "getMeid": ("meid", "I"),
    "getSubscriberId": ("subscriberId", "I"),
    "getSimSerialNumber": ("simSerial", "I"),
}

SAFE_REF = "Lcom/sprd/validationtools/Safe;"


def patch_storage(p):
    t = io.open(p, encoding="utf-8").read()
    old = (".catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0")
    if old not in t:
        return False
    if ".catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0" in t:
        return False
    t = t.replace(old, old + "\n    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0", 1)
    # catch_0 不再 rethrow，直接返回空列表
    bad = ("""    :catch_0\n"""
           """    move-exception v2\n"""
           """\n"""
           """    .line 102\n"""
           """    .local v2, "e":Landroid/os/RemoteException;\n"""
           """    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;\n"""
           """\n"""
           """    move-result-object v3\n"""
           """\n"""
           """    throw v3\n""")
    if bad in t:
        t = t.replace(bad, "    :catch_0\n    return-object v0\n", 1)
    io.open(p, "w", encoding="utf-8", newline="\n").write(t)
    return True


def main():
    total = {"bt": 0, "tel": 0, "wifi": 0}

    safe_path = os.path.join(PKG, "Safe.smali")
    io.open(safe_path, "w", encoding="utf-8", newline="\n").write(SAFE)
    print("wrote", safe_path)

    su = os.path.join(PKG, "utils", "StorageUtil.smali")
    print("storage patched:", patch_storage(su))

    files = []
    for dp, dn, fn in os.walk(SM):
        for f in fn:
            if f.endswith(".smali"):
                files.append(os.path.join(dp, f))

    for p in files:
        t = io.open(p, encoding="utf-8").read()
        o = t
        t = PAT1.sub(lambda m: "invoke-static {%s}, %s->btAddress(Landroid/bluetooth/BluetoothAdapter;)Ljava/lang/String;" % (m.group(1), SAFE_REF), t)
        if t != o:
            total["bt"] += o.count("BluetoothAdapter;->getAddress")

        def rep_tel(m):
            a, b, name = m.group(1), m.group(2), m.group(3)
            fn, sig = MAP[name]
            return "invoke-static {%s, %s}, %s->%s(Landroid/telephony/TelephonyManager;%s)Ljava/lang/String;" % (a, b, SAFE_REF, fn, sig)

        o2 = t
        t = PAT2.sub(rep_tel, t)
        if t != o2:
            total["tel"] += len(PAT2.findall(o2))
        o3 = t
        t = PAT3.sub(lambda m: "invoke-static {%s}, %s->wifiEnabled(Landroid/net/wifi/WifiManager;)Z" % (m.group(1), SAFE_REF), t)
        t = PAT4.sub(lambda m: "invoke-static {%s, %s}, %s->setWifiEnabled(Landroid/net/wifi/WifiManager;Z)Z" % (m.group(1), m.group(2), SAFE_REF), t)
        if t != o3:
            total["wifi"] += len(PAT3.findall(o3)) + len(PAT4.findall(o3))
        if t != o:
            io.open(p, "w", encoding="utf-8", newline="\n").write(t)

    print("replaced:", total)


if __name__ == "__main__":
    main()
