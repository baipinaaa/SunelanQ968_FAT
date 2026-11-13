# 审计报告

## 已还原（功能可用）

- 主菜单 5 项：系统测试 / 单项测试 / 测试信息 / 物料信息 / 导出测试结果
- 单项测试列表 22 项，顺序与原版 `FILTER_CLASS_NAMES_YQ` 完全一致
- 单项测试页：显示采集结果 + 「通过 / 失败」，结果落 `SharedPreferences("fat_result")`
- 测试信息页：`uname -a`、`/proc/cpuinfo`（processor/model name/Hardware/CPU part）、
  `/proc/meminfo` 前三行、`ro.product.model`、`ro.boot.hardware`、`ro.board.platform`
- 物料信息页：`/proc/cmdline`、`/mnt/vendor` 目录、`btmac.txt`、`wifimac.txt`
- 导出：`/sdcard/Download/FAT_<YYYYmmdd_HHMMSS>/`，内含 `shared_prefs/*.xml`、
  `getprop.txt`、`kernel.txt`（uname / id / getenforce）
- 非 root 可用：`sh` 先走 `sh -c`，为空才回落 `su -c`
- 真机验证（`C65GA202401048747`）：`am start -W` Status ok、5 项菜单与 22 项列表
  文本与预期一致、「版本信息」页正确显示内核串与指纹

## 人工确认项（6 项，符合原版交互形态）

屏幕颜色、单点触控、多点触控、振动、听筒、语音回环、按键 —— 页面上给出判定提示，
由操作员点「通过 / 失败」。原版这些项也是等人操作后再判定。

## 与原版的已知差异

1. 包名 `com.sprd.validationtools.fat`（原版 `com.sprd.validationtools` 由系统
   `/system_ext/app/ValidationTools/ValidationTools.apk` 占用且不可卸载）
2. 不含「恢复出厂设置」（用户要求删）与「指纹测试」（用户要求删）
3. 系统测试的自动跑测流程尚未实现（当前进入的是同一份 22 项列表）
4. 传感器校准（acc/gyro/light/magnetic/pressure/proximity 写 `sensor_hub/calibrator_cmd`
   并落盘 `/mnt/vendor/productinfo/sensor_calibration_data/`）尚未实现
5. RF 校准、AT 通道类项目（原版依赖系统签名与 `atchannel0`）未实现
6. 相机项只检查设备节点，未做原版那样的取流预览自检
