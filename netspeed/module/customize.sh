#!/system/bin/sh
# KernelSU / Magisk installer script for the netspeed WebUI module.
# The Xposed APK is shipped separately (netspeed-apk artifact) and installed by the user.

ui_print "- 状态栏网速 · 流量统计（WebUI 模块）"
ui_print "- 安装目录: $MODPATH"

if [ ! -f "$MODPATH/webroot/index.html" ]; then
  abort "! 缺少 webroot/index.html，模块包不完整"
fi

set_perm_recursive "$MODPATH" 0 0 0755 0644
set_perm "$MODPATH/customize.sh" 0 0 0755
set_perm "$MODPATH/webroot/index.html" 0 0 0644

ui_print "- 本模块只提供 WebUI，不含 Xposed APK"
ui_print "- 请另行安装 netspeed-apk 并授予 LSPosed 权限"
ui_print "- LSPosed 中启用「状态栏网速·流量统计」并勾选 SystemUI"
ui_print "- 之后重启手机（Xposed 模块必须是整机重启才生效）"
