#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""v9: 普通 app 身份下的第二轮修整
1) Safe 增加 contains / wifiFactoryMac / btEnable / btDisable
2) WifiTestUtil.getMacAddress 的 getFactoryMacAddresses -> Safe(失败走 root 读 wifimac.txt)
3) BtTestUtil 的 enable/disable -> Safe(失败走 svc bluetooth)
4) AudioSystemProxy.<clinit> 包 try-catch(AudioSystem.FORCE_SPEAKER 在 Android 13 不存在)
5) ReceiverTest.doPlay 包 try-catch
6) TestResultActivity$2.run 的 String.contains -> Safe.contains(AT 通道不通时返回 null)
7) TorchActivity / KeyLightTestActivity 的 turnOn/OffFlash 改走 root 写 sysfs
8) itemstest/ 与 testinfo/ 下所有 Activity 的 onCreate 包 try-catch(防崩溃 -> 回主页)
"""
import io
import os
import re
import sys

ROOT = sys.argv[1] if len(sys.argv) > 1 else "apktool"
SM = os.path.join(ROOT, "smali")
PKG = os.path.join(SM, "com", "sprd", "validationtools")
SAFE_REF = "Lcom/sprd/validationtools/Safe;"
SH_REF = "Lcom/sprd/validationtools/Sh;"

EXTRA_SAFE = r'''
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
'''

TORCH_ON = '''.method private turnOnFlash()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, {CLS}->torch_flag:Z

    const-string v0, "echo 255 > {NODE}"

    invoke-static {v0}, {SH}->run(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
'''

TORCH_OFF = '''.method private turnOffFlash()V
    .locals 1

    const-string v0, "echo 0 > {NODE}"

    invoke-static {v0}, {SH}->run(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, {CLS}->torch_flag:Z

    return-void
.end method
'''

BODY_SKIP = (".locals", ".registers", ".param", ".prologue", ".line",
             ".end annotation", ".annotation", ".end param", "")


def wrap_method(text, decl_regex, tag):
    """把匹配 decl_regex 的方法体包 try-catch，catch 里 return-void"""
    m = re.search(decl_regex, text, re.M)
    if not m:
        return text, False
    start = m.end()
    end = text.find(".end method", start)
    if end < 0:
        return text, False
    body = text[start:end]
    lines = body.split("\n")
    ins = 0
    in_annot = False
    for i, ln in enumerate(lines):
        s = ln.strip()
        if s.startswith(".annotation"):
            in_annot = True
            continue
        if in_annot:
            if s.startswith(".end annotation"):
                in_annot = False
                ins = i + 1
            continue
        if s == "" or s.startswith(BODY_SKIP) or s.startswith(".source"):
            continue
        ins = i
        break
    ts = ":ts_%s" % tag
    te = ":te_%s" % tag
    ck = ":ck_%s" % tag
    newlines = lines[:ins] + ["    " + ts] + lines[ins:]
    newbody = "\n".join(newlines)
    tail = ("\n    " + te + "\n"
            "    .catch Ljava/lang/Throwable; {" + ts + " .. " + te + "} :" + ck[1:] + "\n\n"
            "    return-void\n\n"
            "    :" + ck[1:] + "\n"
            "    return-void\n\n")
    return text[:start] + newbody + tail + text[end:], True


def main():
    safe_p = os.path.join(PKG, "Safe.smali")
    t = io.open(safe_p, encoding="utf-8").read()
    if "wifiFactoryMac" not in t:
        t = t.rstrip() + "\n" + EXTRA_SAFE
        io.open(safe_p, "w", encoding="utf-8", newline="\n").write(t)
        print("safe extended")

    # 2) wifi factory mac
    p = os.path.join(PKG, "utils", "WifiTestUtil.smali")
    t = io.open(p, encoding="utf-8").read()
    old = "invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getFactoryMacAddresses()[Ljava/lang/String;"
    if old in t:
        t = t.replace(old, "invoke-static {v1}, %s->wifiFactoryMac(Landroid/net/wifi/WifiManager;)[Ljava/lang/String;" % SAFE_REF)
        io.open(p, "w", encoding="utf-8", newline="\n").write(t)
        print("wifi mac patched")

    # 3) bt enable/disable
    for f in ["utils/BtTestUtil.smali", "utils/BtTestUtil$BlueToothStateReceiver.smali"]:
        p = os.path.join(PKG, f)
        t = io.open(p, encoding="utf-8").read()
        o = t
        t = re.sub(r"invoke-virtual \{([vp]\d+)\}, Landroid/bluetooth/BluetoothAdapter;->enable\(\)Z",
                   lambda m: "invoke-static {%s}, %s->btEnable(Landroid/bluetooth/BluetoothAdapter;)Z" % (m.group(1), SAFE_REF), t)
        t = re.sub(r"invoke-virtual \{([vp]\d+)\}, Landroid/bluetooth/BluetoothAdapter;->disable\(\)Z",
                   lambda m: "invoke-static {%s}, %s->btDisable(Landroid/bluetooth/BluetoothAdapter;)Z" % (m.group(1), SAFE_REF), t)
        if t != o:
            io.open(p, "w", encoding="utf-8", newline="\n").write(t)
            print("bt patched", f)

    # 4) AudioSystemProxy <clinit>
    p = os.path.join(PKG, "nonpublic", "AudioSystemProxy.smali")
    t = io.open(p, encoding="utf-8").read()
    if ":ts_sysdump" not in t and ":ts_clinit" not in t:
        t, ok = wrap_method(t, r"^\.method static constructor <clinit>\(\)V$", "clinit")
        if ok:
            io.open(p, "w", encoding="utf-8", newline="\n").write(t)
            print("clinit wrapped")

    # 5) ReceiverTest.doPlay
    p = os.path.join(PKG, "itemstest", "audio", "ReceiverTest.smali")
    t = io.open(p, encoding="utf-8").read()
    t, ok = wrap_method(t, r"^\.method private doPlay\(\)V$", "doplay")
    if ok:
        io.open(p, "w", encoding="utf-8", newline="\n").write(t)
        print("doPlay wrapped")

    # 6) contains
    p = os.path.join(PKG, "itemstest", "TestResultActivity$2.smali")
    t = io.open(p, encoding="utf-8").read()
    o = t
    t = t.replace("invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z",
                  "invoke-static {v0, v2}, %s->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z" % SAFE_REF)
    if t != o:
        io.open(p, "w", encoding="utf-8", newline="\n").write(t)
        print("contains patched")

    # 7) torch / keylight 改 root
    for rel, cls, node in [
        ("itemstest/torch/TorchActivity.smali",
         "Lcom/sprd/validationtools/itemstest/torch/TorchActivity;", "/sys/class/leds/torch/brightness"),
        ("itemstest/keylight/KeyLightTestActivity.smali",
         "Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;", "/sys/class/leds/keyboard-backlight/brightness"),
    ]:
        p = os.path.join(PKG, rel)
        t = io.open(p, encoding="utf-8").read()
        for name, tpl in (("turnOnFlash", TORCH_ON), ("turnOffFlash", TORCH_OFF)):
            pat = re.compile(r"^\.method private %s\(\)V$" % name, re.M)
            m = pat.search(t)
            if not m:
                print("  !! missing", rel, name)
                continue
            e = t.find(".end method", m.end())
            new = tpl.replace("{CLS}", cls).replace("{NODE}", node).replace("{SH}", SH_REF)
            t = t[:m.start()] + new.rstrip("\n") + "\n" + t[e + len(".end method"):]
        io.open(p, "w", encoding="utf-8", newline="\n").write(t)
        print("torch patched", rel)

    # 8) 批量包 onCreate
    cnt = 0
    for top in ("itemstest", "testinfo"):
        base = os.path.join(PKG, top)
        for dp, dn, fn in os.walk(base):
            for f in fn:
                if not f.endswith(".smali"):
                    continue
                p = os.path.join(dp, f)
                t = io.open(p, encoding="utf-8").read()
                if ":ts_oncreate" in t:
                    continue
                decl = r"^\.method (?:public|protected|private) onCreate\(Landroid/os/Bundle;\)V$"
                if not re.search(decl, t, re.M):
                    continue
                t2, ok = wrap_method(t, decl, "oncreate")
                if ok:
                    io.open(p, "w", encoding="utf-8", newline="\n").write(t2)
                    cnt += 1
    print("onCreate wrapped:", cnt)


if __name__ == "__main__":
    main()
