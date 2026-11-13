# FAT_Phone_test

展锐 UMS9620（Sunelan YQ5 / Q968）工厂测试工具的重建实现。

**不含任何从原 APK 反编译出来的代码**：所有 smali 由 `_stock/apk/gen_ui.py` 与
`_stock/apk/gen_checks.py` 生成，判定数据直接读内核 `/proc`、`/sys`、`getprop`，
必要时走 `su`。与原版的关系只有「功能对应」，没有代码搬运。

## 包名

`com.sprd.validationtools.fat`

原版是 `com.sprd.validationtools`，位于 `/system_ext/app/ValidationTools/ValidationTools.apk`，
带平台签名且无法 `pm uninstall`（`DELETE_FAILED_INTERNAL_ERROR`）。签名不同无法覆盖安装，
因此本工程用 `.fat` 后缀共存。若要真正用原包名，只能把系统那个 APK 用 Magisk
overlay 替换掉再重启。

## 结构

```
apktool/AndroidManifest.xml          6 个 Activity，全部 exported=false（MainActivity 除外）
apktool/smali/com/sprd/validationtools/
    MainActivity.smali               5 项主菜单
    ItemListActivity.smali           22 项单项测试列表（对应原版 FILTER_CLASS_NAMES_YQ）
    FatTestActivity.smali            单项测试容器：显示采集结果 + 通过/失败
    TestInfoActivity.smali           测试信息（CPU / 内存 / 型号 / 平台）
    MaterialInfoActivity.smali       物料信息（cmdline / /mnt/vendor / MAC 文件）
    ExportActivity.smali             导出测试结果到 /sdcard/Download/FAT_<时间>/
    FatAdapter.smali                 纯代码 ListView 适配器（不依赖 layout 资源）
    FatUtil.smali                    sh/read/prop/save/result/toast
    FatChecks.smali                  22 项采集命令 + hardware/material/export
```

## 22 个测试项（与原版顺序一致）

| # | 项目 | 采集方式 |
|---|---|---|
| 1 | 版本信息 | `uname -a` / `/proc/version` / `getprop ro.build.*` |
| 2 | 屏幕颜色 | 人工确认 |
| 3 | 单点触控 | 人工确认 |
| 4 | 多点触控 | 人工确认 |
| 5 | 振动 | 人工确认 |
| 6 | 听筒 | 人工确认 |
| 7 | 语音回环 | 人工确认 |
| 8 | 电话 | `gsm.sim.state` / `gsm.network.type` / 运营商 |
| 9 | 前相机 | `/dev/video*` |
| 10 | 后相机 | `/dev/video*` |
| 11 | 按键 | 人工确认 |
| 12 | 充电器 | `/sys/class/power_supply/battery/{status,current_now,voltage_now,capacity}` |
| 13 | FM | `/dev/fm*` `/sys/class/misc/fm/max_freq` |
| 14 | SoundTrigger | `/dev/snd/*` |
| 15 | 蓝牙 | `/sys/class/bluetooth/hci0/address` |
| 16 | WIFI | `/sys/class/net/wlan0/{address,operstate,carrier}` |
| 17 | GPS | `/dev/gnss*` |
| 18 | SD卡 | `/storage` + `mount` |
| 19 | SIM卡 | `gsm.sim.state` / `gsm.operator.numeric` |
| 20 | 手电筒 | `/sys/class/leds/torch/{max_,}brightness` |
| 21 | 按键灯 | `/sys/class/leds/keyboard-backlight/{max_,}brightness` |
| 22 | USB | `/sys/class/udc`、`/sys/bus/usb/devices` |

## 构建

```sh
java -jar /e/a/apktool.jar b -o dist/fat-unsigned.apk apktool
java -jar ../_stock/tools/uber-apk-signer.jar -a dist/fat-unsigned.apk \
     --ks ../_stock/apk/dev.jks --ksAlias devkey \
     --ksPass dev123456 --ksKeyPass dev123456 -o dist
adb install -r dist/fat-aligned-signed.apk
```
