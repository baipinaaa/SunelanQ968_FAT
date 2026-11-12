# SunelanQ968_FAT

Q968 (UMS9157 / YQ5) 工厂测试工具（FAT, Factory Acceptance Test）。

- 上游：原厂 `工厂测试工具_1.0.apk`，包名 `com.sprd.validationtools`，versionName 1.0
- 方式：**B 路线** —— apktool 全量反编译，保留原版逻辑与资源，只做定点裁剪
- 产物：可直接 sideload 的签名 APK，与系统内置版共存（不同包名）

## 为什么要改包名

原版 `AndroidManifest.xml` 带 `android:sharedUserId="android.uid.system"`，并以平台密钥签名。
换签名装不上，保留 `sharedUserId` 也装不上（系统里已有同 user id 的其它应用），
所以必须：

1. 改包名 `com.sprd.validationtools` → `com.sunelanq968.fat`
2. 去掉 `sharedUserId`
3. 把原先依赖系统权限的动作改走 **root（su -c）**

`res/values/public.xml` 固定了全部 848 个资源 ID，因此改包名后资源引用不会错乱。

## 当前改动

| # | 改动 | 位置 |
|---|---|---|
| 1 | 包名改为 `com.sunelanq968.fat` | `AndroidManifest.xml` |
| 2 | 去掉 `android:sharedUserId="android.uid.system"` | `AndroidManifest.xml` |
| 3 | 去掉 `MASTER_CLEAR` 权限与自声明的 `SAVE_PHASECHECK` 权限 | `AndroidManifest.xml` |
| 4 | 指纹测试项隐藏（`isSupport()` 恒 false） | `smali/.../itemstest/fingerprint/FingerprintTestActivity.smali` |
| 5 | 恢复出厂项从主菜单移除 + 确认框回调置空 | `ValidationToolsMainActivity.smali` / `...$1.smali` |
| 6 | 测试结果导出（开发中） | `docs/PROGRESS.md` |
| 7 | 系统权限调用改 root（开发中） | `docs/PROGRESS.md` |

## 构建

```bash
# 需要 java 与 apktool.jar
APKTOOL=/e/a/apktool.jar ./tools/build.sh
```

`tools/build.sh` 依次：apktool build → zipalign+签名（uber-apk-signer）→ 输出 `dist/fat-signed.apk`。

签名使用仓库外的本地 keystore（见 `tools/build.sh` 注释），**不要把 jks 提交进仓库**。

## 目录

```
apktool/   反编译工程（smali + res + AndroidManifest + apktool.yml）
patches/   一次性 patch 脚本（幂等，记录改动来源）
tools/     构建与签名
docs/      进度、测试项清单、判定规则
```
