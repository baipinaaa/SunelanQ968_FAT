.class public Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "TofCalibrationTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TofCalibrationTest"

.field private static final mCrossTakCalibrationFile:Ljava/lang/String; = "/mnt/vendor/vl53l0_xtak_calibration.file"

.field private static final mOffsetCalibrationFile:Ljava/lang/String; = "/mnt/vendor/vl53l0_offset_calibration.file"


# instance fields
.field private mCrossTalkCalibrationJudgeTV:Landroid/widget/TextView;

.field private mCrossTalkCalibrationTV:Landroid/widget/TextView;

.field private mCrossTalkResult:Ljava/lang/String;

.field private mCrossTalkStartBtn:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHasOffsetTested:Z

.field private mHasXTalkTested:Z

.field private mIsCrossTalkTestPass:Z

.field private mIsOffsetTestPass:Z

.field private mOffsetCalibrationJudgeTV:Landroid/widget/TextView;

.field private mOffsetCalibrationTV:Landroid/widget/TextView;

.field private mOffsetResult:Ljava/lang/String;

.field private mOffsetStartBtn:Landroid/widget/Button;

.field private mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

.field private mRefCalibrationTV:Landroid/widget/TextView;

.field private mRefResult:Ljava/lang/String;

.field private mSpadsCalibrationTV:Landroid/widget/TextView;

.field private mSpadsResult:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCrossTalkCalibrationJudgeTV(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mCrossTalkCalibrationJudgeTV:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCrossTalkCalibrationTV(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mCrossTalkCalibrationTV:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCrossTalkResult(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mCrossTalkResult:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasOffsetTested(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mHasOffsetTested:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasXTalkTested(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mHasXTalkTested:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCrossTalkTestPass(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mIsCrossTalkTestPass:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsOffsetTestPass(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mIsOffsetTestPass:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOffsetCalibrationJudgeTV(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mOffsetCalibrationJudgeTV:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOffsetCalibrationTV(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mOffsetCalibrationTV:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOffsetResult(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mOffsetResult:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhaseCheckParse(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Lcom/sprd/validationtools/PhaseCheckParse;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRefCalibrationTV(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mRefCalibrationTV:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRefResult(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mRefResult:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpadsCalibrationTV(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mSpadsCalibrationTV:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpadsResult(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mSpadsResult:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsCrossTalkTestPass(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mIsCrossTalkTestPass:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsOffsetTestPass(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mIsOffsetTestPass:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mSpadsCalibrationTV:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mRefCalibrationTV:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mOffsetCalibrationTV:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mCrossTalkCalibrationTV:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mOffsetCalibrationJudgeTV:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mCrossTalkCalibrationJudgeTV:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mOffsetStartBtn:Landroid/widget/Button;

    .line 40
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mCrossTalkStartBtn:Landroid/widget/Button;

    .line 41
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mHandler:Landroid/os/Handler;

    .line 43
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mSpadsResult:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mRefResult:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mOffsetResult:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mCrossTalkResult:Ljava/lang/String;

    .line 48
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mIsOffsetTestPass:Z

    .line 49
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mIsCrossTalkTestPass:Z

    .line 50
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mHasOffsetTested:Z

    .line 51
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mHasXTalkTested:Z

    .line 53
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 291
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public executeCrossTalkCalibration()V
    .locals 4

    .line 144
    const-string v0, "TofCalibrationTest"

    const-string v1, "executeCrossTalkCalibration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mHasXTalkTested:Z

    .line 146
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$5;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$5;-><init>(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$6;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$6;-><init>(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    return-void
.end method

.method public executeOffsetCalibration()V
    .locals 4

    .line 93
    const-string v0, "TofCalibrationTest"

    const-string v1, "executeOffsetCalibration run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mHasOffsetTested:Z

    .line 95
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$3;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$3;-><init>(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 106
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 108
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;-><init>(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    return-void
.end method

.method public judgeCrossTalkCalibrationPass()Z
    .locals 6

    .line 251
    const-string v0, "TofCalibrationTest"

    const-string v1, "judgeCrossTalkCalibrationPass"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mCrossTalkResult:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 253
    return v1

    .line 255
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 256
    .local v0, "crossTalkValue":I
    int-to-double v2, v0

    const-wide/high16 v4, 0x40f0000000000000L    # 65536.0

    div-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 257
    .local v2, "judgeValue":I
    if-ltz v2, :cond_1

    const/16 v3, 0x2bc

    if-gt v2, v3, :cond_1

    .line 258
    const/4 v1, 0x1

    return v1

    .line 260
    :cond_1
    return v1
.end method

.method public judgeOffsetCalibrationPass()Z
    .locals 5

    .line 224
    const-string v0, "TofCalibrationTest"

    const-string v1, "judgeOffsetCalibrationPass"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mOffsetResult:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 226
    return v2

    .line 228
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 229
    .local v1, "offsetValue":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offsetValue=:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/16 v0, -0x4e20

    if-lt v1, v0, :cond_1

    const v0, 0xea60

    if-gt v1, v0, :cond_1

    .line 231
    const/4 v0, 0x1

    return v0

    .line 233
    :cond_1
    return v2
.end method

.method public judgeTofTestFail()V
    .locals 2

    .line 199
    const-string v0, "TofCalibrationTest"

    const-string v1, "judgeTofTestFail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v0, "Tof Tested Failed!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 202
    return-void
.end method

.method public judgeTofTestPass()V
    .locals 2

    .line 193
    const-string v0, "TofCalibrationTest"

    const-string v1, "executeTofTestPass"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v0, "Tof Tested Pass!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 196
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const-string v0, "TofCalibrationTest"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->setContentView(I)V

    .line 61
    const v0, 0x7f050090

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mSpadsCalibrationTV:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f050082

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mRefCalibrationTV:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f050073

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mOffsetCalibrationTV:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f050042

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mCrossTalkCalibrationTV:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f050072

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mOffsetCalibrationJudgeTV:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f050041

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mCrossTalkCalibrationJudgeTV:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f050074

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mOffsetStartBtn:Landroid/widget/Button;

    .line 69
    const v0, 0x7f050043

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mCrossTalkStartBtn:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mOffsetStartBtn:Landroid/widget/Button;

    new-instance v1, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$1;-><init>(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mCrossTalkStartBtn:Landroid/widget/Button;

    new-instance v1, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$2;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$2;-><init>(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mOffsetCalibrationJudgeTV:Landroid/widget/TextView;

    const-string v1, "Not Test"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mCrossTalkCalibrationJudgeTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    .line 90
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method public onDestroy()V
    .locals 0

    .line 206
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 207
    return-void
.end method

.method public readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;

    .line 265
    const-string v0, "TofCalibrationTest"

    const-string v1, "readFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/16 v1, 0x400

    new-array v2, v1, [C

    .line 267
    .local v2, "buffer":[C
    const/4 v3, 0x0

    .line 268
    .local v3, "file":Ljava/io/FileReader;
    const/4 v4, 0x0

    .line 270
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 271
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v1

    .line 272
    .local v1, "len":I
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2, v5, v1}, Ljava/lang/String;-><init>([CII)V

    move-object v4, v6

    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    .end local v1    # "len":I
    nop

    .line 279
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    const/4 v3, 0x0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_0

    .line 279
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 280
    const/4 v0, 0x0

    move-object v3, v0

    .end local v3    # "file":Ljava/io/FileReader;
    .local v0, "file":Ljava/io/FileReader;
    goto :goto_0

    .line 282
    .end local v0    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    :catch_1
    move-exception v0

    .line 283
    .local v0, "io":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 285
    .end local v0    # "io":Ljava/io/IOException;
    goto :goto_1

    .line 284
    :cond_0
    :goto_0
    nop

    .line 286
    :goto_1
    return-object v4

    .line 278
    :goto_2
    if-eqz v3, :cond_1

    .line 279
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 280
    const/4 v3, 0x0

    goto :goto_3

    .line 282
    :catch_2
    move-exception v1

    .line 283
    .local v1, "io":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 284
    .end local v1    # "io":Ljava/io/IOException;
    :cond_1
    :goto_3
    nop

    .line 285
    :goto_4
    throw v0
.end method

.method public setCrossTalkCalibrationParams(Ljava/lang/String;)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .line 238
    const-string v0, "TofCalibrationTest"

    const-string v1, "setCrossTalkCalibrationParams"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0, p1}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "paramValue":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "paramValue=:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 242
    const-string v2, "Read CrossTalk Calibration Information Failed!"

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 243
    return-void

    .line 246
    :cond_0
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "params":[Ljava/lang/String;
    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mCrossTalkResult:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setOffsetCalibrationParams(Ljava/lang/String;)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .line 210
    const-string v0, "TofCalibrationTest"

    const-string v1, "setOffsetCalibrationParams"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0, p1}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "paramsValue":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 213
    const-string v2, "Read Offset Calibration Information Failed!"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 214
    return-void

    .line 217
    :cond_0
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "params":[Ljava/lang/String;
    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mOffsetResult:Ljava/lang/String;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mRefResult:Ljava/lang/String;

    .line 220
    const/4 v1, 0x3

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->mSpadsResult:Ljava/lang/String;

    .line 221
    return-void
.end method
