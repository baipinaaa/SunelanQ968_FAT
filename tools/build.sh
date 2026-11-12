#!/bin/sh
# Build the FAT apk from apktool/ and sign it.
#   APKTOOL  : path to apktool.jar (default /e/a/apktool.jar)
#   SIGNER   : path to uber-apk-signer.jar
#   KS/ALIAS/KS_PASS/KS_KEY_PASS : local keystore (NOT committed)
set -e
cd "$(dirname "$0")/.."

APKTOOL="${APKTOOL:-/e/a/apktool.jar}"
SIGNER="${SIGNER:-../_stock/tools/uber-apk-signer.jar}"
KS="${KS:-../_stock/apk/dev.jks}"
ALIAS="${ALIAS:-devkey}"
if [ -z "$KS_PASS" ] && [ -f ../_stock/apk/ks.pass ]; then
	KS_PASS="$(cat ../_stock/apk/ks.pass)"
fi
KS_KEY_PASS="${KS_KEY_PASS:-$KS_PASS}"
[ -n "$KS_PASS" ] || { echo "set KS_PASS (or ../_stock/apk/ks.pass)"; exit 1; }

mkdir -p dist
echo "== apktool build =="
java -jar "$APKTOOL" b -o dist/fat-unsigned.apk apktool

echo "== sign =="
java -jar "$SIGNER" --apks dist/fat-unsigned.apk \
	--ks "$KS" --ksAlias "$ALIAS" --ksPass "$KS_PASS" --ksKeyPass "$KS_KEY_PASS" \
	-o dist

echo "== done =="
ls -la dist/*signed*.apk
