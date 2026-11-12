# -*- coding: utf-8 -*-
"""FAT build step 1: make it installable + drop fingerprint & factory-reset."""
import io, re, sys, os
os.chdir(r'G:/AIWORK/SunelanQ968/_stock/apk/apktool')
def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8', newline='\n').write(s)

NEW_PKG = 'com.sunelanq968.fat'

# ---- 1. manifest ----
m = rd('AndroidManifest.xml')
log = []
if 'android:sharedUserId="android.uid.system"' in m:
    m = m.replace(' android:sharedUserId="android.uid.system"', '')
    log.append('manifest: sharedUserId removed')
if 'package="com.sprd.validationtools"' in m:
    m = m.replace('package="com.sprd.validationtools"', 'package="%s"' % NEW_PKG, 1)
    log.append('manifest: package -> %s' % NEW_PKG)
line = '    <uses-permission android:name="android.permission.MASTER_CLEAR"/>\n'
if line in m:
    m = m.replace(line, '')
    log.append('manifest: MASTER_CLEAR permission removed')
wr('AndroidManifest.xml', m)

# ---- 2. fingerprint item hidden ----
p = 'smali/com/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity.smali'
s = rd(p)
new = """.method public static isSupport(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method"""
s2 = re.sub(r'\.method public static isSupport\(Landroid/content/Context;\)Z[\s\S]*?\.end method', new, s, count=1)
assert s2 != s, 'isSupport patch failed'
wr(p, s2); log.append('fingerprint: isSupport -> false')

# ---- 3. factory reset button becomes a no-op ----
p = 'smali/com/sprd/validationtools/ValidationToolsMainActivity$1.smali'
s = rd(p)
new = """.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method"""
s2 = re.sub(r'\.method public onClick\(Landroid/content/DialogInterface;I\)V[\s\S]*?\.end method', new, s, count=1)
assert s2 != s, 'onClick patch failed'
wr(p, s2); log.append('factory reset: onClick -> no-op')

print('\n'.join(log))
