# -*- coding: utf-8 -*-
import io, re
p = r'G:/AIWORK/SunelanQ968/_stock/apk/apktool/AndroidManifest.xml'
s = io.open(p, encoding='utf-8').read()
log = []
n = s.count('<permission android:name="com.android.permission.SAVE_PHASECHECK"/>')
if n:
    s = re.sub(r'\s*<permission android:name="com\.android\.permission\.SAVE_PHASECHECK"/>', '', s)
    log.append('removed self-declared SAVE_PHASECHECK permission (%d)' % n)
if 'android:permission="com.android.permission.SAVE_PHASECHECK"' in s:
    s = s.replace(' android:permission="com.android.permission.SAVE_PHASECHECK"', '')
    log.append('removed receiver permission guard')
io.open(p, 'w', encoding='utf-8', newline='\n').write(s)
print('\n'.join(log) or 'nothing to do')
