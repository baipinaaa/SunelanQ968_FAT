.class public Lcom/sprd/validationtools/FatChecks;
.super Ljava/lang/Object;
.source "FatChecks.java"


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    const-string v0, "\u7248\u672c\u4fe1\u606f"
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_l0

    const-string v0, "uname -a; echo; cat /proc/version; echo; getprop ro.build.display.id; getprop ro.build.fingerprint; getprop ro.boot.hardware"

    return-object v0

    :cond_l0
    const-string v0, "\u7535\u8bdd"
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_l1

    const-string v0, "getprop gsm.sim.state; getprop ril.sim.operator.alpha; getprop gsm.network.type; getprop gsm.operator.alpha"

    return-object v0

    :cond_l1
    const-string v0, "\u524d\u76f8\u673a"
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_l2

    const-string v0, "ls -d /dev/video* 2>/dev/null; getprop persist.sys.camera.front"

    return-object v0

    :cond_l2
    const-string v0, "\u540e\u76f8\u673a"
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_l3

    const-string v0, "ls -d /dev/video* 2>/dev/null; getprop persist.sys.camera.back"

    return-object v0

    :cond_l3
    const-string v0, "\u5145\u7535\u5668"
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_l4

    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "cat /sys/class/power_supply/battery/status; cat /sys/class/power_supply/battery/current_now; cat /sys/class/power_supply/battery/voltage_now; cat /sys/class/power_supply/battery/ca"
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "pacity; cat /sys/class/power_supply/usb/online"
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0

    return-object v0

    :cond_l4
    const-string v0, "FM"
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_l5

    const-string v0, "ls /dev/fm* /dev/radio* 2>/dev/null; cat /sys/class/misc/fm/max_freq 2>/dev/null"

    return-object v0

    :cond_l5
    const-string v0, "SoundTrigger"
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_l6

    const-string v0, "ls /dev/snd/ 2>/dev/null | head -20"

    return-object v0

    :cond_l6
    const-string v0, "\u84dd\u7259"
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_l7

    const-string v0, "cat /sys/class/bluetooth/hci0/address 2>/dev/null; getprop persist.vendor.bt.bdaddr"

    return-object v0

    :cond_l7
    const-string v0, "WIFI"
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_l8

    const-string v0, "cat /sys/class/net/wlan0/address; cat /sys/class/net/wlan0/operstate; cat /sys/class/net/wlan0/carrier 2>/dev/null"

    return-object v0

    :cond_l8
    const-string v0, "GPS"
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_l9

    const-string v0, "ls /dev/gnss* 2>/dev/null; getprop persist.vendor.gnss.config"

    return-object v0

    :cond_l9
    const-string v0, "SD\u5361"
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_l10

    const-string v0, "ls /storage; mount | grep -i mmc"

    return-object v0

    :cond_l10
    const-string v0, "SIM\u5361"
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_l11

    const-string v0, "getprop gsm.sim.state; getprop gsm.operator.numeric; getprop gsm.sim.operator.numeric"

    return-object v0

    :cond_l11
    const-string v0, "\u624b\u7535\u7b52"
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_l12

    const-string v0, "cat /sys/class/leds/torch/max_brightness 2>/dev/null; cat /sys/class/leds/torch/brightness 2>/dev/null"

    return-object v0

    :cond_l12
    const-string v0, "\u6309\u952e\u706f"
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_l13

    const-string v0, "cat /sys/class/leds/keyboard-backlight/max_brightness 2>/dev/null; cat /sys/class/leds/keyboard-backlight/brightness 2>/dev/null"

    return-object v0

    :cond_l13
    const-string v0, "USB"
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_l14

    const-string v0, "ls /sys/class/udc 2>/dev/null; ls /sys/bus/usb/devices 2>/dev/null"

    return-object v0

    :cond_l14
    const/4 v0, 0x0

    return-object v0
.end method

.method public static describe(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lcom/sprd/validationtools/FatChecks;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string v2, "\u8bf7\u4eba\u5de5\u786e\u8ba4\u540e\u9009\u62e9 \u901a\u8fc7 / \u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/sprd/validationtools/FatUtil;->sh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hardware(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "uname -a; echo; cat /proc/cpuinfo | grep -E \"^(processor|model name|Hardware|CPU part)\"; echo; cat /proc/meminfo | head -3; echo; getprop ro.product.model; getprop ro.boot.hardware; getprop ro.board.platform"

    invoke-static {v0}, Lcom/sprd/validationtools/FatUtil;->sh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static material(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "cat /proc/cmdline; echo; ls /mnt/vendor 2>/dev/null; echo; cat /mnt/vendor/btmac.txt 2>/dev/null; cat /mnt/vendor/wifimac.txt 2>/dev/null"

    invoke-static {v0}, Lcom/sprd/validationtools/FatUtil;->sh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static export(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "D=/sdcard/Download/FAT_$(date +%Y%m%d_%H%M%S); mkdir -p $D; cp -f /data/data/com.sprd.validationtools.fat/shared_prefs/*.xml $D/ 2>/dev/null; getprop > $D/getprop.txt 2>&1; cat /proc/version > $D/kernel.txt 2>&1; uname -a >> $D/kernel.txt 2>&1; id >> $D/kernel.txt 2>&1; getenforce >> $D/kernel.txt 2>&1; echo $D"

    invoke-static {v0}, Lcom/sprd/validationtools/FatUtil;->sh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u5bfc\u51fa\u5230\uff1a\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
