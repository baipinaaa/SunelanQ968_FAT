# SunelanQ968_NAT

Q968 系统定制相关工程合集。

## 内容

| 目录 | 说明 |
|---|---|
| [`netspeed/`](netspeed/README.md) | 状态栏网速 + 按 APP 流量统计（LSPosed 模块 + KernelSU 模块 + WebUI） |

## 构建

网速模块通过 GitHub Actions 手动触发构建：

```
Actions → build-netspeed → Run workflow
```

产物为 `netspeed-module` artifact（KernelSU 模块 zip，内含 Xposed APK）。
