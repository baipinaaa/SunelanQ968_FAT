# -*- coding: utf-8 -*-
"""drop the 'reset (factory reset)' entry from the main list; keep 4 items."""
import io
p = r'G:/AIWORK/SunelanQ968/_stock/apk/apktool/smali/com/sprd/validationtools/ValidationToolsMainActivity.smali'
s = io.open(p, encoding='utf-8').read()
CLS = 'Lcom/sprd/validationtools/ValidationToolsMainActivity;'
log = []

# --- branch A (isSupportCameraCaliVeri()==true): 6 items -> 4 (drop camera_cali_verify + reset) ---
blkA = (
"    const v3, 0x7f090032\n\n"
"    .line 93\n"
"    invoke-virtual {p0, v3}, " + CLS + "->getString(I)Ljava/lang/String;\n\n"
"    move-result-object v3\n\n"
"    aput-object v3, v0, v2\n\n"
"    .line 94\n"
"    invoke-virtual {p0, v1}, " + CLS + "->getString(I)Ljava/lang/String;\n\n"
"    move-result-object v1\n\n"
"    aput-object v1, v0, v9\n"
)
if blkA in s:
    s = s.replace(blkA, '', 1)
    assert '    const/4 v0, 0x6\n\n    new-array v0, v0, [Ljava/lang/String;' in s
    s = s.replace('    const/4 v0, 0x6\n\n    new-array v0, v0, [Ljava/lang/String;',
                  '    const/4 v0, 0x4\n\n    new-array v0, v0, [Ljava/lang/String;', 1)
    log.append('branch A: 6 -> 4 items (dropped camera_cali_verify + reset)')

# --- branch B (default, 5 items -> 4, drop reset at index 4) ---
blkB = (
"    .line 102\n"
"    invoke-virtual {p0, v1}, " + CLS + "->getString(I)Ljava/lang/String;\n\n"
"    move-result-object v1\n\n"
"    aput-object v1, v0, v2\n"
)
if blkB in s:
    s = s.replace(blkB, '', 1)
    s = s.replace('    new-array v0, v9, [Ljava/lang/String;',
                  '    new-array v0, v2, [Ljava/lang/String;', 1)
    log.append('branch B: 5 -> 4 items (dropped reset)')

io.open(p, 'w', encoding='utf-8', newline='\n').write(s)
print('\n'.join(log) or 'nothing matched')
