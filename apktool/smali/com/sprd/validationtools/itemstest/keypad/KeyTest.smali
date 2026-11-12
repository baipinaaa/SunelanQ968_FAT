.class public Lcom/sprd/validationtools/itemstest/keypad/KeyTest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "KeyTest.java"


# static fields
.field private static final AVAILABLE_KEYS:[Ljava/lang/String;

.field private static final AVAILABLE_KEYS_OT:[Ljava/lang/String;

.field private static final AVAILABLE_KEYS_YQ:[Ljava/lang/String;

.field private static final AVAILABLE_KEYS_YQ_Q968:[Ljava/lang/String;

.field private static final SYSPROP_PREVENT_POWER_KEY:Ljava/lang/String; = "persist.sys.PreventPowerkey"


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field bBack:Z

.field bEnter:Z

.field bMenu:Z

.field bNoMenuKey:Z

.field bNoSearchKey:Z

.field bNoTrackball:Z

.field bPower:Z

.field bSearch:Z

.field bTestComplete:Z

.field bTrack_Ball_Centre:Z

.field bTrack_Ball_Down:Z

.field bTrack_Ball_Left:Z

.field bTrack_Ball_Right:Z

.field bVol_Down:Z

.field bVol_Up:Z

.field firstPressDown:Z

.field firstPressUp:Z

.field private mCounter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeysMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mPtWakeLock:Landroid/os/PowerManager$WakeLock;

.field private systemtime:J


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 62
    const-string v0, "MENU"

    const-string v1, "UP"

    const-string v2, "BACK"

    const-string v3, "LEFT"

    const-string v4, "OK"

    const-string v5, "RIGHT"

    const-string v6, "CALL"

    const-string v7, "DOWN"

    const-string v8, "POWER"

    const-string v9, "1"

    const-string v10, "2"

    const-string v11, "3"

    const-string v12, "4"

    const-string v13, "5"

    const-string v14, "6"

    const-string v15, "7"

    const-string v16, "8"

    const-string v17, "9"

    const-string v18, "*"

    const-string v19, "0"

    const-string v20, "#"

    const-string v21, "VOLUME_UP"

    const-string v22, "SOS"

    const-string v23, "VOLUME_DOWN"

    filled-new-array/range {v0 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->AVAILABLE_KEYS_OT:[Ljava/lang/String;

    .line 65
    const-string v1, "MENU"

    const-string v2, "UP"

    const-string v3, "BACK"

    const-string v4, "LEFT"

    const-string v5, "OK"

    const-string v6, "RIGHT"

    const-string v7, "CALL"

    const-string v8, "DOWN"

    const-string v9, "POWER"

    const-string v10, "1"

    const-string v11, "2"

    const-string v12, "3"

    const-string v13, "4"

    const-string v14, "5"

    const-string v15, "6"

    const-string v16, "7"

    const-string v17, "8"

    const-string v18, "9"

    const-string v19, "*"

    const-string v20, "0"

    const-string v21, "#"

    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->AVAILABLE_KEYS_YQ:[Ljava/lang/String;

    .line 69
    const-string v2, "MENU"

    const-string v3, "UP"

    const-string v4, "BACK"

    const-string v5, "LEFT"

    const-string v6, "OK"

    const-string v7, "RIGHT"

    const-string v8, "CALL"

    const-string v9, "DOWN"

    const-string v10, "POWER"

    const-string v11, "1"

    const-string v12, "2"

    const-string v13, "3"

    const-string v14, "4"

    const-string v15, "5"

    const-string v16, "6"

    const-string v17, "7"

    const-string v18, "8"

    const-string v19, "9"

    const-string v20, "*"

    const-string v21, "0"

    const-string v22, "#"

    const-string v23, "VOLUME_UP"

    const-string v24, "VOLUME_DOWN"

    filled-new-array/range {v2 .. v24}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->AVAILABLE_KEYS_YQ_Q968:[Ljava/lang/String;

    .line 72
    const-string v3, "ro.product.system.device"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "YQ5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    const-string v0, "ro.product.system.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Q968"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    sput-object v0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->AVAILABLE_KEYS:[Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 27
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 29
    const-string v0, "KeyTest2"

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->DEBUG:Z

    .line 32
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->firstPressDown:Z

    .line 33
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->firstPressUp:Z

    .line 34
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->bVol_Up:Z

    .line 35
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->bEnter:Z

    .line 36
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->bVol_Down:Z

    .line 37
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->bSearch:Z

    .line 38
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->bMenu:Z

    .line 39
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->bBack:Z

    .line 42
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->bTrack_Ball_Left:Z

    .line 43
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->bTrack_Ball_Centre:Z

    .line 44
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->bTrack_Ball_Right:Z

    .line 45
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->bTrack_Ball_Down:Z

    .line 46
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->bPower:Z

    .line 47
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->bTestComplete:Z

    .line 48
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->systemtime:J

    .line 49
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->mPtWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 51
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->bNoTrackball:Z

    .line 52
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->bNoSearchKey:Z

    .line 53
    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->bNoMenuKey:Z

    .line 74
    sget-object v0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->AVAILABLE_KEYS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->mKeys:Ljava/util/List;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->mCounter:Ljava/util/List;

    .line 76
    new-instance v1, Ljava/util/HashMap;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->mKeysMap:Ljava/util/Map;

    return-void
.end method

.method private buildKeyViews()V
    .locals 8

    .line 139
    const v0, 0x7f050058

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    .line 140
    .local v0, "gridLayout":Landroid/widget/GridLayout;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 141
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 142
    .local v2, "tv":Landroid/widget/TextView;
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 143
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 145
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->mKeys:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    div-int/lit8 v4, v1, 0x3

    invoke-static {v4}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v4

    .line 148
    .local v4, "rowSpec":Landroid/widget/GridLayout$Spec;
    rem-int/lit8 v5, v1, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Landroid/widget/GridLayout;->spec(IF)Landroid/widget/GridLayout$Spec;

    move-result-object v5

    .line 150
    .local v5, "columnSpec":Landroid/widget/GridLayout$Spec;
    new-instance v6, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v6, v4, v5}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 152
    .local v6, "layoutParams":Landroid/widget/GridLayout$LayoutParams;
    iput v3, v6, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    .line 153
    const/4 v3, 0x2

    iput v3, v6, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 154
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->mKeysMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->mKeys:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {v0, v2, v6}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    .end local v2    # "tv":Landroid/widget/TextView;
    .end local v4    # "rowSpec":Landroid/widget/GridLayout$Spec;
    .end local v5    # "columnSpec":Landroid/widget/GridLayout$Spec;
    .end local v6    # "layoutParams":Landroid/widget/GridLayout$LayoutParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private handleKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 160
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f020001

    goto :goto_0

    .line 161
    :cond_0
    const/high16 v0, 0x7f020000

    :goto_0
    nop

    .line 162
    .local v0, "color":I
    const/4 v1, 0x0

    .line 164
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    .line 251
    :sswitch_0
    const-string v1, "SOS"

    .line 252
    goto/16 :goto_1

    .line 202
    :sswitch_1
    const-string v1, "APPSWITCH"

    .line 203
    goto/16 :goto_1

    .line 229
    :sswitch_2
    const-string v1, "CONTACTS"

    .line 230
    goto/16 :goto_1

    .line 245
    :sswitch_3
    const-string v1, "MENU"

    .line 246
    goto/16 :goto_1

    .line 239
    :sswitch_4
    const-string v1, "DEL"

    .line 240
    goto/16 :goto_1

    .line 217
    :sswitch_5
    const-string v1, "OK"

    .line 218
    goto :goto_1

    .line 226
    :sswitch_6
    const-string v1, "CAMERA"

    .line 227
    goto :goto_1

    .line 223
    :sswitch_7
    const-string v1, "POWER"

    .line 224
    goto :goto_1

    .line 254
    :sswitch_8
    const-string v1, "VOLUME_DOWN"

    .line 255
    goto :goto_1

    .line 257
    :sswitch_9
    const-string v1, "VOLUME_UP"

    goto :goto_1

    .line 214
    :sswitch_a
    const-string v1, "RIGHT"

    .line 215
    goto :goto_1

    .line 205
    :sswitch_b
    const-string v1, "LEFT"

    .line 206
    goto :goto_1

    .line 211
    :sswitch_c
    const-string v1, "DOWN"

    .line 212
    goto :goto_1

    .line 208
    :sswitch_d
    const-string v1, "UP"

    .line 209
    goto :goto_1

    .line 199
    :sswitch_e
    const-string v1, "#"

    .line 200
    goto :goto_1

    .line 196
    :sswitch_f
    const-string v1, "*"

    .line 197
    goto :goto_1

    .line 190
    :sswitch_10
    const-string v1, "9"

    .line 191
    goto :goto_1

    .line 187
    :sswitch_11
    const-string v1, "8"

    .line 188
    goto :goto_1

    .line 184
    :sswitch_12
    const-string v1, "7"

    .line 185
    goto :goto_1

    .line 181
    :sswitch_13
    const-string v1, "6"

    .line 182
    goto :goto_1

    .line 178
    :sswitch_14
    const-string v1, "5"

    .line 179
    goto :goto_1

    .line 175
    :sswitch_15
    const-string v1, "4"

    .line 176
    goto :goto_1

    .line 172
    :sswitch_16
    const-string v1, "3"

    .line 173
    goto :goto_1

    .line 169
    :sswitch_17
    const-string v1, "2"

    .line 170
    goto :goto_1

    .line 166
    :sswitch_18
    const-string v1, "1"

    .line 167
    goto :goto_1

    .line 193
    :sswitch_19
    const-string v1, "0"

    .line 194
    goto :goto_1

    .line 220
    :sswitch_1a
    const-string v1, "CALL"

    .line 221
    goto :goto_1

    .line 248
    :sswitch_1b
    const-string v1, "BACK"

    .line 249
    goto :goto_1

    .line 242
    :sswitch_1c
    const-string v1, "HOME"

    .line 243
    goto :goto_1

    .line 235
    :sswitch_1d
    const-string v1, "S-RIGHT"

    .line 236
    goto :goto_1

    .line 232
    :sswitch_1e
    const-string v1, "S-LEFT"

    .line 233
    nop

    .line 261
    :goto_1
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->mKeysMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 262
    .local v2, "target":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 263
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 264
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->mCounter:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 265
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->mCounter:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_1
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->mCounter:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 269
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->createButton(Z)V

    .line 271
    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_1c
        0x4 -> :sswitch_1b
        0x5 -> :sswitch_1a
        0x7 -> :sswitch_19
        0x8 -> :sswitch_18
        0x9 -> :sswitch_17
        0xa -> :sswitch_16
        0xb -> :sswitch_15
        0xc -> :sswitch_14
        0xd -> :sswitch_13
        0xe -> :sswitch_12
        0xf -> :sswitch_11
        0x10 -> :sswitch_10
        0x11 -> :sswitch_f
        0x12 -> :sswitch_e
        0x13 -> :sswitch_d
        0x14 -> :sswitch_c
        0x15 -> :sswitch_b
        0x16 -> :sswitch_a
        0x18 -> :sswitch_9
        0x19 -> :sswitch_8
        0x1a -> :sswitch_7
        0x1b -> :sswitch_6
        0x42 -> :sswitch_5
        0x43 -> :sswitch_4
        0x52 -> :sswitch_3
        0xae -> :sswitch_2
        0xbb -> :sswitch_1
        0x134 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 82
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->removeButton()V

    .line 84
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sprd/validationtools/BaseActivity;->createButton(Z)V

    .line 85
    const v1, 0x7f06001d

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->setContentView(I)V

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->systemtime:J

    .line 89
    const v1, 0x7f050062

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    const v1, 0x7f050063

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    const v0, 0x7f050060

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->buildKeyViews()V

    .line 94
    const-string v0, "persist.sys.PreventPowerkey"

    const-string v1, "on"

    invoke-static {v0, v1}, Lcom/sprd/validationtools/Sh;->setProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method protected onDestroy()V
    .locals 2

    .line 118
    const-string v0, "persist.sys.PreventPowerkey"

    const-string v1, "off"

    invoke-static {v0, v1}, Lcom/sprd/validationtools/Sh;->setProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 120
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyTest"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0, p2}, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->handleKeyEvent(Landroid/view/KeyEvent;)V

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 134
    invoke-direct {p0, p2}, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->handleKeyEvent(Landroid/view/KeyEvent;)V

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 3

    .line 100
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onStart()V

    .line 101
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 103
    .local v0, "pm":Landroid/os/PowerManager;
    const/16 v1, 0x1a

    const-string v2, "AutoTests"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->mPtWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 104
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->mPtWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 107
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onStop()V

    .line 112
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->mPtWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTest;->mPtWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 115
    :cond_0
    return-void
.end method
