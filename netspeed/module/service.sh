#!/system/bin/sh
# Installs / updates the Xposed helper APK once the system is booted.
# LSPosed activation itself is a manual step (enable module + SystemUI scope).

MODDIR=${0%/*}
APK="$MODDIR/files/netspeed.apk"
PKG=com.sunelan.netspeed
LOG=/data/local/tmp/netspeed_module.log

log() {
  echo "$(date '+%m-%d %H:%M:%S') $*" >> "$LOG"
}

if [ ! -f "$APK" ]; then
  log "APK missing: $APK"
  exit 0
fi

i=0
while [ "$(getprop sys.boot_completed)" != "1" ] && [ $i -lt 150 ]; do
  sleep 2
  i=$((i + 1))
done
sleep 5

CURRENT=$(pm path $PKG 2>/dev/null | head -1 | sed 's/^package://')
if [ -z "$CURRENT" ]; then
  log "installing $PKG"
  pm install -r "$APK" >> "$LOG" 2>&1
  CURRENT=$(pm path $PKG 2>/dev/null | head -1 | sed 's/^package://')
  log "installed: $CURRENT"
else
  if [ -f "$CURRENT" ]; then
    WANT=$(md5sum "$APK" | cut -d' ' -f1)
    HAVE=$(md5sum "$CURRENT" | cut -d' ' -f1)
    if [ "$WANT" != "$HAVE" ]; then
      log "updating $PKG ($HAVE -> $WANT)"
      pm install -r "$APK" >> "$LOG" 2>&1
    fi
  fi
fi

# Make sure the stats file is readable by the WebUI (root) even before first collection.
STATS_DIR=/data/user/0/com.android.systemui/files
if [ -d "$STATS_DIR" ]; then
  chmod 755 "$STATS_DIR" 2>/dev/null
fi

log "done (apk=$APK codePath=$CURRENT)"
