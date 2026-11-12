.class public Lcom/sprd/validationtools/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/BaseActivity$AutoTestWriteResultHandler;
    }
.end annotation


# static fields
.field public static final MISCDATA_USERSETION_OFFSET_AGING:I = 0xc002c

.field public static final MISCDATA_USERSETION_OFFSET_BASE:I = 0xc0000

.field public static final MISCDATA_USERSETION_OFFSET_RING_TUNE:I = 0xc004a

.field public static final STATION_AGING_VALUE:Ljava/lang/String; = "AGING"

.field public static final STATION_MMIT_VALUE:Ljava/lang/String; = "MMI"

.field public static final SUPPORT_WRITE_ITEM_STATION:Z = false

.field public static final SUPPORT_WRITE_STATION:Z = true

.field private static final TAG:Ljava/lang/String; = "BaseActivity"

.field private static final TEXT_SIZE:I = 0x1e

.field private static final WRITE_ITEM_RESULT:I = 0x0

.field private static final WRITE_RESULT_FLAG:I = 0x1

.field private static mTestResults:[I

.field public static shouldCanceled:Z


# instance fields
.field protected canPass:Z

.field private mAutoTestArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sprd/validationtools/modules/TestItem;",
            ">;"
        }
    .end annotation
.end field

.field public mAutoTestWriteResultHandler:Landroid/os/Handler;

.field private mAutoTestWriteResultHandlerThread:Landroid/os/HandlerThread;

.field private mCurrentID:I

.field private mEngSqlite:Lcom/sprd/validationtools/sqlite/EngSqlite;

.field protected mFailButton:Landroid/widget/Button;

.field protected mPassButton:Landroid/widget/Button;

.field private mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

.field private mTestClassName:Ljava/lang/String;

.field private mTestClikPass:Z

.field private mTestname:Ljava/lang/String;

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected time:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentID(Lcom/sprd/validationtools/BaseActivity;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/BaseActivity;->mCurrentID:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartNextTest(Lcom/sprd/validationtools/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;->startNextTest()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmTestResults()[I
    .locals 1

    sget-object v0, Lcom/sprd/validationtools/BaseActivity;->mTestResults:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sprd/validationtools/BaseActivity;->shouldCanceled:Z

    .line 289
    const/16 v0, 0x40

    new-array v0, v0, [I

    sput-object v0, Lcom/sprd/validationtools/BaseActivity;->mTestResults:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mTestname:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mTestClassName:Ljava/lang/String;

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sprd/validationtools/BaseActivity;->canPass:Z

    .line 54
    iput-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    .line 63
    iput-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mAutoTestArray:Ljava/util/ArrayList;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprd/validationtools/BaseActivity;->mCurrentID:I

    .line 242
    iput-boolean v0, p0, Lcom/sprd/validationtools/BaseActivity;->mTestClikPass:Z

    return-void
.end method

.method private getCurrentTestIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "currentTestName"    # Ljava/lang/String;

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "autoTestCurrentID":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sprd/validationtools/BaseActivity;->mAutoTestArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 307
    iget-object v2, p0, Lcom/sprd/validationtools/BaseActivity;->mAutoTestArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprd/validationtools/modules/TestItem;

    invoke-virtual {v2}, Lcom/sprd/validationtools/modules/TestItem;->getTestClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    move v0, v1

    .line 306
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private isAutoTestAllPass()Z
    .locals 3

    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/sprd/validationtools/BaseActivity;->mTestResults:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 352
    aget v1, v1, v0

    const/16 v2, 0x102

    if-ne v1, v2, :cond_0

    .line 353
    const/4 v1, 0x0

    return v1

    .line 351
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private startNextTest()V
    .locals 5

    .line 323
    iget v0, p0, Lcom/sprd/validationtools/BaseActivity;->mCurrentID:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sprd/validationtools/BaseActivity;->mCurrentID:I

    .line 324
    invoke-virtual {p0}, Lcom/sprd/validationtools/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 325
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAutoTestCurrentNumber"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sprd/validationtools/BaseActivity;->mCurrentID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v2, p0, Lcom/sprd/validationtools/BaseActivity;->mAutoTestArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/sprd/validationtools/BaseActivity;->mCurrentID:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 327
    iget-object v1, p0, Lcom/sprd/validationtools/BaseActivity;->mAutoTestArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sprd/validationtools/BaseActivity;->mCurrentID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/validationtools/modules/TestItem;

    invoke-virtual {v1}, Lcom/sprd/validationtools/modules/TestItem;->getTestClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprd/validationtools/Const;->getSupportInfo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 328
    .local v1, "isSupport":Z
    if-eqz v1, :cond_0

    .line 329
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 330
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 331
    iget-object v3, p0, Lcom/sprd/validationtools/BaseActivity;->mAutoTestArray:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sprd/validationtools/BaseActivity;->mCurrentID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprd/validationtools/modules/TestItem;

    invoke-virtual {v3}, Lcom/sprd/validationtools/modules/TestItem;->getTestClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    iget-object v3, p0, Lcom/sprd/validationtools/BaseActivity;->mAutoTestArray:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sprd/validationtools/BaseActivity;->mCurrentID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprd/validationtools/modules/TestItem;

    invoke-virtual {v3}, Lcom/sprd/validationtools/modules/TestItem;->getTestName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "testname"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    iget v3, p0, Lcom/sprd/validationtools/BaseActivity;->mCurrentID:I

    const-string v4, "testindex"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 335
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 336
    :cond_0
    iget-object v2, p0, Lcom/sprd/validationtools/BaseActivity;->mAutoTestArray:Ljava/util/ArrayList;

    iget v3, p0, Lcom/sprd/validationtools/BaseActivity;->mCurrentID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprd/validationtools/modules/TestItem;

    invoke-virtual {v2}, Lcom/sprd/validationtools/modules/TestItem;->getTestClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sprd/validationtools/BaseActivity;->mTestClassName:Ljava/lang/String;

    .line 337
    sget-object v2, Lcom/sprd/validationtools/BaseActivity;->mTestResults:[I

    iget v3, p0, Lcom/sprd/validationtools/BaseActivity;->mCurrentID:I

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 338
    iget-object v2, p0, Lcom/sprd/validationtools/BaseActivity;->mAutoTestWriteResultHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 340
    .end local v1    # "isSupport":Z
    :cond_1
    iget-object v2, p0, Lcom/sprd/validationtools/BaseActivity;->mAutoTestArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget v3, p0, Lcom/sprd/validationtools/BaseActivity;->mCurrentID:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v3, v2, :cond_3

    .line 341
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;->isAutoTestAllPass()Z

    move-result v2

    const/16 v3, 0x3f

    if-eqz v2, :cond_2

    .line 342
    sget-object v2, Lcom/sprd/validationtools/BaseActivity;->mTestResults:[I

    aput v1, v2, v3

    goto :goto_0

    .line 344
    :cond_2
    sget-object v2, Lcom/sprd/validationtools/BaseActivity;->mTestResults:[I

    const/4 v4, 0x2

    aput v4, v2, v3

    .line 346
    :goto_0
    iget-object v2, p0, Lcom/sprd/validationtools/BaseActivity;->mAutoTestWriteResultHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 340
    :cond_3
    :goto_1
    nop

    .line 348
    :goto_2
    return-void
.end method

.method private storePhaseCheck()V
    .locals 3

    .line 226
    const-string v0, "MMI"

    .line 227
    .local v0, "station":Ljava/lang/String;
    iget-object v1, p0, Lcom/sprd/validationtools/BaseActivity;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    if-nez v1, :cond_0

    .line 228
    return-void

    .line 230
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storePhaseCheck: fail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/BaseActivity;->mEngSqlite:Lcom/sprd/validationtools/sqlite/EngSqlite;

    .line 231
    invoke-virtual {v2}, Lcom/sprd/validationtools/sqlite/EngSqlite;->queryFailCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", NotTest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/BaseActivity;->mEngSqlite:Lcom/sprd/validationtools/sqlite/EngSqlite;

    .line 232
    invoke-virtual {v2}, Lcom/sprd/validationtools/sqlite/EngSqlite;->queryNotTestCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    const-string v2, "BaseActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/sprd/validationtools/BaseActivity;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    invoke-virtual {v1, v0}, Lcom/sprd/validationtools/PhaseCheckParse;->writeStationTested(Ljava/lang/String;)Z

    .line 234
    iget-object v1, p0, Lcom/sprd/validationtools/BaseActivity;->mEngSqlite:Lcom/sprd/validationtools/sqlite/EngSqlite;

    invoke-virtual {v1}, Lcom/sprd/validationtools/sqlite/EngSqlite;->queryFailCount()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sprd/validationtools/BaseActivity;->mEngSqlite:Lcom/sprd/validationtools/sqlite/EngSqlite;

    .line 235
    invoke-virtual {v1}, Lcom/sprd/validationtools/sqlite/EngSqlite;->queryNotTestCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/sprd/validationtools/BaseActivity;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    invoke-virtual {v1, v0}, Lcom/sprd/validationtools/PhaseCheckParse;->writeStationPass(Ljava/lang/String;)Z

    goto :goto_0

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/sprd/validationtools/BaseActivity;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    invoke-virtual {v1, v0}, Lcom/sprd/validationtools/PhaseCheckParse;->writeStationFail(Ljava/lang/String;)Z

    .line 240
    :goto_0
    return-void
.end method


# virtual methods
.method public createButton(Z)V
    .locals 8
    .param p1, "isPassButton"    # Z

    .line 168
    invoke-virtual {p0}, Lcom/sprd/validationtools/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 170
    .local v0, "buttonSize":I
    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    .line 171
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sprd/validationtools/BaseActivity;->mPassButton:Landroid/widget/Button;

    .line 172
    const v4, 0x7f090183

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 173
    iget-object v3, p0, Lcom/sprd/validationtools/BaseActivity;->mPassButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 174
    iget-object v2, p0, Lcom/sprd/validationtools/BaseActivity;->mPassButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 175
    iget-object v1, p0, Lcom/sprd/validationtools/BaseActivity;->mPassButton:Landroid/widget/Button;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 176
    iget-object v1, p0, Lcom/sprd/validationtools/BaseActivity;->mPassButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 178
    :cond_0
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sprd/validationtools/BaseActivity;->mFailButton:Landroid/widget/Button;

    .line 179
    const v4, 0x7f090181

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 180
    iget-object v3, p0, Lcom/sprd/validationtools/BaseActivity;->mFailButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 181
    iget-object v2, p0, Lcom/sprd/validationtools/BaseActivity;->mFailButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 182
    iget-object v1, p0, Lcom/sprd/validationtools/BaseActivity;->mFailButton:Landroid/widget/Button;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 183
    iget-object v1, p0, Lcom/sprd/validationtools/BaseActivity;->mFailButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :goto_0
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/4 v5, 0x2

    const/16 v6, 0x300

    const/4 v7, -0x3

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 194
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_1

    const/16 v2, 0x53

    goto :goto_1

    .line 195
    :cond_1
    const/16 v2, 0x55

    :goto_1
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 196
    const/16 v2, 0x28

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 198
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 199
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 200
    iget-object v2, p0, Lcom/sprd/validationtools/BaseActivity;->mWindowManager:Landroid/view/WindowManager;

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/sprd/validationtools/BaseActivity;->mPassButton:Landroid/widget/Button;

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/sprd/validationtools/BaseActivity;->mFailButton:Landroid/widget/Button;

    :goto_2
    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    return-void
.end method

.method public delayMs(I)V
    .locals 2
    .param p1, "millisecond"    # I

    .line 316
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 320
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public finish()V
    .locals 2

    .line 246
    invoke-virtual {p0}, Lcom/sprd/validationtools/BaseActivity;->removeButton()V

    .line 247
    invoke-virtual {p0}, Lcom/sprd/validationtools/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sprd/validationtools/BaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 248
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 249
    return-void
.end method

.method public getHeight(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 128
    nop

    .line 129
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 130
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 131
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 132
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 133
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 134
    .local v3, "height":I
    return v3
.end method

.method public getRealHeight(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 138
    nop

    .line 139
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 140
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 141
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 142
    .local v2, "dm":Landroid/util/DisplayMetrics;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 143
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 147
    :goto_0
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 148
    .local v3, "realHeight":I
    return v3
.end method

.method public hideNavigationBar()V
    .locals 4

    .line 113
    invoke-virtual {p0}, Lcom/sprd/validationtools/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "decorView":Landroid/view/View;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/16 v3, 0xb

    if-le v1, v3, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_0

    .line 115
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 116
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    .line 118
    const/16 v1, 0x1606

    .line 123
    .local v1, "uiOptions":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 125
    .end local v1    # "uiOptions":I
    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 264
    invoke-virtual {p0}, Lcom/sprd/validationtools/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 265
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sprd/validationtools/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 266
    invoke-virtual {p0}, Lcom/sprd/validationtools/BaseActivity;->finish()V

    .line 267
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 271
    iget-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mPassButton:Landroid/widget/Button;

    const-string v1, "onclick"

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 272
    iget-boolean v0, p0, Lcom/sprd/validationtools/BaseActivity;->canPass:Z

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pass.."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/validationtools/BaseActivity;->mTestClikPass:Z

    .line 275
    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/BaseActivity;->storeRusult(Z)V

    .line 276
    invoke-virtual {p0}, Lcom/sprd/validationtools/BaseActivity;->finish()V

    goto :goto_0

    .line 278
    :cond_0
    const v0, 0x7f090045

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mFailButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "false.."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iput-boolean v2, p0, Lcom/sprd/validationtools/BaseActivity;->mTestClikPass:Z

    .line 284
    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/BaseActivity;->storeRusult(Z)V

    .line 285
    invoke-virtual {p0}, Lcom/sprd/validationtools/BaseActivity;->finish()V

    .line 287
    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/sprd/validationtools/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "testname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mTestname:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/sprd/validationtools/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "test_classname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mTestClassName:Ljava/lang/String;

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sprd/validationtools/BaseActivity;->time:J

    .line 99
    invoke-static {p0}, Lcom/sprd/validationtools/sqlite/EngSqlite;->getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/sqlite/EngSqlite;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mEngSqlite:Lcom/sprd/validationtools/sqlite/EngSqlite;

    .line 100
    invoke-virtual {p0}, Lcom/sprd/validationtools/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 101
    invoke-virtual {p0}, Lcom/sprd/validationtools/BaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mWindowManager:Landroid/view/WindowManager;

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/BaseActivity;->createButton(Z)V

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/BaseActivity;->createButton(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/sprd/validationtools/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 105
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 106
    const-string v1, "BaseActivity"

    const-string v2, "onCreate SUPPORT_WRITE_STATION=true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/validationtools/BaseActivity;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    .line 110
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .line 153
    invoke-virtual {p0}, Lcom/sprd/validationtools/BaseActivity;->removeButton()V

    .line 154
    iget-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mTestname:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*********** "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/BaseActivity;->mTestname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sprd/validationtools/BaseActivity;->time:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s ***********"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    const-string v1, "APK_MMI"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mAutoTestWriteResultHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 161
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mAutoTestWriteResultHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 164
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 165
    return-void
.end method

.method protected removeButton()V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mPassButton:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 253
    iget-object v2, p0, Lcom/sprd/validationtools/BaseActivity;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 254
    iput-object v1, p0, Lcom/sprd/validationtools/BaseActivity;->mPassButton:Landroid/widget/Button;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mFailButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 257
    iget-object v2, p0, Lcom/sprd/validationtools/BaseActivity;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 258
    iput-object v1, p0, Lcom/sprd/validationtools/BaseActivity;->mFailButton:Landroid/widget/Button;

    .line 260
    :cond_1
    return-void
.end method

.method public storeAutoTestResult(Z)V
    .locals 3
    .param p1, "isSuccess"    # Z

    .line 295
    if-nez p1, :cond_0

    .line 296
    sget-object v0, Lcom/sprd/validationtools/BaseActivity;->mTestResults:[I

    iget v1, p0, Lcom/sprd/validationtools/BaseActivity;->mCurrentID:I

    const/16 v2, 0x102

    aput v2, v0, v1

    goto :goto_0

    .line 298
    :cond_0
    sget-object v0, Lcom/sprd/validationtools/BaseActivity;->mTestResults:[I

    iget v1, p0, Lcom/sprd/validationtools/BaseActivity;->mCurrentID:I

    const/16 v2, 0x101

    aput v2, v0, v1

    .line 300
    :goto_0
    iget-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mAutoTestWriteResultHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "results["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sprd/validationtools/BaseActivity;->mCurrentID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sprd/validationtools/BaseActivity;->mTestResults:[I

    iget v2, p0, Lcom/sprd/validationtools/BaseActivity;->mCurrentID:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method

.method public storeRusult(Z)V
    .locals 3
    .param p1, "isSuccess"    # Z

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "storeResult classname:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storeResult mTestClassName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sprd/validationtools/BaseActivity;->mTestClassName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mTestClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mTestClassName:Ljava/lang/String;

    .line 209
    :cond_0
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    invoke-static {p0}, Lcom/sprd/validationtools/autommi/modules/AutoTestItemList;->getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItemList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/validationtools/modules/TestItemList;->getAutoTestItemList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mAutoTestArray:Ljava/util/ArrayList;

    .line 211
    iget-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mTestClassName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/BaseActivity;->getCurrentTestIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sprd/validationtools/BaseActivity;->mCurrentID:I

    .line 212
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AutoTestWriteRsult"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mAutoTestWriteResultHandlerThread:Landroid/os/HandlerThread;

    .line 213
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 214
    new-instance v0, Lcom/sprd/validationtools/BaseActivity$AutoTestWriteResultHandler;

    iget-object v1, p0, Lcom/sprd/validationtools/BaseActivity;->mAutoTestWriteResultHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sprd/validationtools/BaseActivity$AutoTestWriteResultHandler;-><init>(Lcom/sprd/validationtools/BaseActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mAutoTestWriteResultHandler:Landroid/os/Handler;

    .line 215
    invoke-virtual {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->storeAutoTestResult(Z)V

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/BaseActivity;->mEngSqlite:Lcom/sprd/validationtools/sqlite/EngSqlite;

    iget-object v2, p0, Lcom/sprd/validationtools/BaseActivity;->mTestClassName:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lcom/sprd/validationtools/sqlite/EngSqlite;->updateDB(Ljava/lang/String;I)V

    .line 218
    const-string v0, "storeRusult SUPPORT_WRITE_STATION=true"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;->storePhaseCheck()V

    .line 223
    :goto_0
    return-void
.end method
