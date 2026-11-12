# 进度

## 已完成

- [x] apktool 全量反编译（1696 smali / 122 res），资源 ID 由 `res/values/public.xml` 固定
- [x] 改包名 `com.sunelanq968.fat`，可与系统版共存
- [x] 去 `sharedUserId`、去 `MASTER_CLEAR`、去自声明 `SAVE_PHASECHECK`
- [x] 指纹测试项隐藏（`FingerprintTestActivity.isSupport()` 恒 false）
- [x] 主菜单「恢复出厂设置」移除，确认框回调置空
- [x] 安装 + 启动验证：`Status: ok`，列表 4 项（系统测试 / 单项测试 / 测试信息 / 物料信息）

## 进行中

- [ ] 系统权限调用改 root（`su -c`）
- [ ] 「导出详细测试结果」功能

## 已知问题

- `PhaseCheckParse$AdaptBinder` 依赖产线服务，普通身份会失败（非致命，待改为文件兜底）
- 原版 `sharedUserId` 消失后，以下能力不再可用，需 root 替代：
  - 写 `/proc`、`/sys` 节点
  - `Settings.Secure` / `SystemProperties` 写
  - `pm`、`reboot`、`vibrate` 等系统调用
- 设备 `pm list features` 显示有 `fingerprint` 硬件；本工具按需求不测指纹
