# 状态栏网速 · 流量统计（KernelSU 模块 + LSPosed 模块）

在状态栏电池左侧显示上下行实时网速（上行在上、下行在下，箭头错位），并提供一个 WebUI
按 APP 统计今日流量。

## 原理

| 部分 | 位置 | 说明 |
|---|---|---|
| 网速视图 | LSPosed 模块，运行在 `com.android.systemui` | hook `com.android.systemui.battery.BatteryMeterView#onAttachedToWindow`，把自绘 View 插到 `system_icons` LinearLayout 里 BatteryMeterView 之前；百分比开关改变电池宽度时自然联动 |
| 速率数据 | `TrafficStats.getTotalRxBytes/getTotalTxBytes` | 每秒采样、EMA 平滑；`<1000 kB/s` 显示 kB/s，否则 MB/s |
| APP 流量 | `NetworkStatsManager.querySummary(TYPE_WIFI/TYPE_MOBILE)` | 每 30 秒写 `netspeed_stats.json` 到 `/data/user/0/com.android.systemui/files/` |
| WebUI | KernelSU 模块 `webroot/index.html` | root 读取上面的 JSON，渲染实时速率 / 今日累计 / 应用排行 |

## 目录

```
netspeed/
├── app/                      Android 模块 APK（libxposed API 101）
│   └── src/main/
│       ├── java/com/sunelan/netspeed/
│       │   ├── NetspeedModule.java    入口，hook BatteryMeterView
│       │   ├── SpeedBar.java          插入 system_icons 容器
│       │   ├── NetSpeedView.java      双行文字 + 错位箭头绘制、速率采样
│       │   └── StatsCollector.java    NetworkStatsManager 按 uid 统计并写 JSON
│       └── resources/META-INF/xposed/ java_init.list / module.prop / scope.list
└── module/                   KernelSU 模块
    ├── module.prop
    ├── customize.sh
    ├── service.sh            开机校验并安装/更新 APK
    └── webroot/index.html    WebUI
```

## 构建

只能通过 GitHub Actions（`.github/workflows/build-netspeed.yml`，手动 `workflow_dispatch`）：

```
Actions → build-netspeed → Run workflow
```

产物：`netspeed-module` artifact（`netspeed-module.zip`）。

## 安装

1. KernelSU 管理器里安装 `netspeed-module.zip`；
2. 重启；
3. LSPosed 里启用「状态栏网速·流量统计」，作用域勾选 **SystemUI**（`staticScope` 会预置）；
4. 重启 SystemUI（或重启手机），状态栏电池左侧出现网速；
5. KernelSU 管理器里打开本模块的 WebUI 查看各 APP 流量。

## 已知限制

- 双行文字在 41px 高的状态栏里字号很小，必要时调 `NetSpeedView` 里的 `9f`（sp）。
- `NetworkStatsManager.querySummary(TYPE_MOBILE, null, ...)` 在部分机型上需要 subscriberId，
  失败会被 catch 并跳过，此时只统计 Wi-Fi。
- WebUI 依赖 KernelSU 的 `ksu.exec`，Magisk 下没有 WebUI。
