#!/system/bin/sh
# KernelSU / Magisk installer script for the netspeed module.

ui_print "- 状态栏网速 · 流量统计"
ui_print "- 安装目录: $MODPATH"

if [ ! -f "$MODPATH/files/netspeed.apk" ]; then
  abort "! 缺少 files/netspeed.apk，模块包不完整"
fi

if [ ! -f "$MODPATH/webroot/index.html" ]; then
  ui_print "! 缺少 webroot/index.html（WebUI 将不可用）"
fi

set_perm_recursive "$MODPATH" 0 0 0755 0644
set_perm "$MODPATH/service.sh" 0 0 0755
set_perm "$MODPATH/customize.sh" 0 0 0755
set_perm "$MODPATH/files/netspeed.apk" 0 0 0644

ui_print "- 重启后在 LSPosed 中启用「状态栏网速·流量统计」"
ui_print "  并确认作用域已勾选 SystemUI"
ui_print "- 完成后重启一次（或重启 SystemUI）即可看到网速"
