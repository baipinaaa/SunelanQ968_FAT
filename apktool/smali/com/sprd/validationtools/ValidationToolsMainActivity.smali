.class public Lcom/sprd/validationtools/ValidationToolsMainActivity;
.super Landroid/app/Activity;
.source "ValidationToolsMainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final ACTION_CAMERA_CALI_VERUFY:Ljava/lang/String; = "com.sprd.cameracalibration.START_CAMERACALIBRATION"

.field private static final CAMERA_CALI_VERIFY:I = 0x3

.field public static final EXTRA_GET_PHASECHECK:Ljava/lang/String; = "phasecheck_result"

.field private static final FULL_TEST:I = 0x0

.field public static final FULL_TEST_USED_TIME:Ljava/lang/String; = "fulltest_used_time"

.field public static final IS_SYSTEM_TESTED:Ljava/lang/String; = "is_system_tested"

.field private static final MATERIAL_INFO:I = 0x5

.field private static final RESET:I = 0x4

.field private static final SUPPORT_CAMERA_FEATURE:Z = true

.field private static final TAG:Ljava/lang/String; = "ValidationToolsMainActivity"

.field private static final TEST_INFO:I = 0x2

.field private static final UNIT_TEST:I = 0x1

.field public static final WIPE_EXTERNAL_STORAGE:Ljava/lang/String; = "android.intent.extra.WIPE_EXTERNAL_STORAGE"


# instance fields
.field private mArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBgTest:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sprd/validationtools/background/BackgroundTest;",
            ">;"
        }
    .end annotation
.end field

.field private mFullTestArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sprd/validationtools/modules/TestItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFullTestCur:I

.field private mFullTestUsedtime:J

.field private mIsTested:Z

.field private mListItemString:[Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mUserId:I

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mFullTestArray:Ljava/util/ArrayList;

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mFullTestCur:I

    .line 65
    iput-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mBgTest:Ljava/util/ArrayList;

    .line 67
    iput-boolean v1, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mIsTested:Z

    .line 70
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->time:J

    .line 73
    iput-wide v1, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mFullTestUsedtime:J

    .line 74
    iput-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    .line 80
    iput-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    return-void
.end method

.method private addFailedBgTestToTestlist()V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mBgTest:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/validationtools/background/BackgroundTest;

    .line 220
    .local v1, "bgTest":Lcom/sprd/validationtools/background/BackgroundTest;
    invoke-interface {v1}, Lcom/sprd/validationtools/background/BackgroundTest;->getResult()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sprd/validationtools/background/BackgroundTest;->getTestItem(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItem;

    move-result-object v2

    .line 222
    .local v2, "item":Lcom/sprd/validationtools/modules/TestItem;
    iget-object v3, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mFullTestArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v1    # "bgTest":Lcom/sprd/validationtools/background/BackgroundTest;
    .end local v2    # "item":Lcom/sprd/validationtools/modules/TestItem;
    :cond_0
    goto :goto_0

    .line 225
    :cond_1
    return-void
.end method

.method private fullTest()V
    .locals 9

    .line 177
    iget-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mFullTestArray:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mFullTestCur:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mFullTestArray:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mFullTestCur:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprd/validationtools/modules/TestItem;

    invoke-virtual {v3}, Lcom/sprd/validationtools/modules/TestItem;->getTestClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object v3, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mFullTestArray:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mFullTestCur:I

    .line 181
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprd/validationtools/modules/TestItem;

    invoke-virtual {v3}, Lcom/sprd/validationtools/modules/TestItem;->getTestName()Ljava/lang/String;

    move-result-object v3

    .line 180
    const-string v4, "testname"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget v3, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mFullTestCur:I

    const-string v4, "testindex"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v0, v2}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 185
    iget v2, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mFullTestCur:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mFullTestCur:I

    .line 186
    .end local v0    # "intent":Landroid/content/Intent;
    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mBgTest:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mFullTestArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 187
    invoke-static {p0}, Lcom/sprd/validationtools/sqlite/EngSqlite;->getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/sqlite/EngSqlite;

    move-result-object v0

    .line 188
    .local v0, "engSqlite":Lcom/sprd/validationtools/sqlite/EngSqlite;
    invoke-direct {p0}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->addFailedBgTestToTestlist()V

    .line 189
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 190
    .local v3, "buffer":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    iget-object v4, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mBgTest:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sprd/validationtools/background/BackgroundTest;

    .line 192
    .local v6, "bgTest":Lcom/sprd/validationtools/background/BackgroundTest;
    invoke-interface {v6}, Lcom/sprd/validationtools/background/BackgroundTest;->stopTest()V

    .line 193
    invoke-virtual {p0}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/sprd/validationtools/background/BackgroundTest;->getTestItem(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sprd/validationtools/modules/TestItem;->getTestClassName()Ljava/lang/String;

    move-result-object v7

    .line 194
    invoke-interface {v6}, Lcom/sprd/validationtools/background/BackgroundTest;->getResult()I

    move-result v8

    if-ne v8, v1, :cond_1

    move v8, v1

    goto :goto_1

    .line 195
    :cond_1
    move v8, v2

    .line 193
    :goto_1
    invoke-virtual {v0, v7, v8}, Lcom/sprd/validationtools/sqlite/EngSqlite;->updateDB(Ljava/lang/String;I)V

    .line 196
    invoke-interface {v6}, Lcom/sprd/validationtools/background/BackgroundTest;->getResultStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    .end local v6    # "bgTest":Lcom/sprd/validationtools/background/BackgroundTest;
    goto :goto_0

    .line 201
    :cond_2
    invoke-direct {p0}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->storePhaseCheck()V

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/sprd/validationtools/background/BackgroundTestActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bgtestresult"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, v1, v2}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 207
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mBgTest:Ljava/util/ArrayList;

    .line 208
    .end local v0    # "engSqlite":Lcom/sprd/validationtools/sqlite/EngSqlite;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    goto :goto_2

    .line 209
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->time:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mFullTestUsedtime:J

    .line 210
    invoke-virtual {p0}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->saveFullTestUsedTime()V

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sprd/validationtools/itemstest/TestResultActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    iget-wide v1, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mFullTestUsedtime:J

    const-string v3, "start_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 216
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_2
    return-void
.end method

.method private launcherCameraCaliVerify()V
    .locals 5

    .line 321
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 322
    .local v0, "mNumberOfCameras":I
    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "camera num is 0!"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 324
    return-void

    .line 327
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse;->getPhaseCheck()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "phasecheck":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sprd.cameracalibration.START_CAMERACALIBRATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "phasecheck_result"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    invoke-virtual {p0, v3}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v2    # "phasecheck":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 331
    :catch_0
    move-exception v2

    .line 332
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.sprd.cameracalibration not found!"

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 333
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 336
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method private startBackgroundTest()V
    .locals 2

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mBgTest:Ljava/util/ArrayList;

    .line 229
    new-instance v1, Lcom/sprd/validationtools/background/BackgroundBtTest;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/background/BackgroundBtTest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mBgTest:Ljava/util/ArrayList;

    new-instance v1, Lcom/sprd/validationtools/background/BackgroundWifiTest;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/background/BackgroundWifiTest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mBgTest:Ljava/util/ArrayList;

    new-instance v1, Lcom/sprd/validationtools/background/BackgroundGpsTest;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/background/BackgroundGpsTest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mBgTest:Ljava/util/ArrayList;

    new-instance v1, Lcom/sprd/validationtools/background/BackgroundSimTest;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/background/BackgroundSimTest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mBgTest:Ljava/util/ArrayList;

    new-instance v1, Lcom/sprd/validationtools/background/BackgroundSdTest;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/background/BackgroundSdTest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mBgTest:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/validationtools/background/BackgroundTest;

    .line 235
    .local v1, "bgTest":Lcom/sprd/validationtools/background/BackgroundTest;
    invoke-interface {v1}, Lcom/sprd/validationtools/background/BackgroundTest;->startTest()V

    .line 236
    .end local v1    # "bgTest":Lcom/sprd/validationtools/background/BackgroundTest;
    goto :goto_0

    .line 237
    :cond_0
    return-void
.end method

.method private startValidationToolsService(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "startService"    # Z

    .line 143
    if-nez p1, :cond_0

    return-void

    .line 144
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sprd/validationtools/ValidationToolsService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_1

    .line 146
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 149
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 152
    :goto_0
    return-void
.end method

.method private storePhaseCheck()V
    .locals 5

    .line 156
    :try_start_0
    const-string v0, "MMI"

    .line 157
    .local v0, "station":Ljava/lang/String;
    iget-object v1, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    if-nez v1, :cond_0

    .line 158
    return-void

    .line 160
    :cond_0
    invoke-static {p0}, Lcom/sprd/validationtools/sqlite/EngSqlite;->getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/sqlite/EngSqlite;

    move-result-object v1

    .line 161
    .local v1, "engSqlite":Lcom/sprd/validationtools/sqlite/EngSqlite;
    if-nez v1, :cond_1

    .line 162
    return-void

    .line 164
    :cond_1
    const-string v2, "ValidationToolsMainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storePhaseCheck: fail = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sprd/validationtools/sqlite/EngSqlite;->queryFailCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NotTest = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sprd/validationtools/sqlite/EngSqlite;->queryNotTestCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    invoke-virtual {v2, v0}, Lcom/sprd/validationtools/PhaseCheckParse;->writeStationTested(Ljava/lang/String;)Z

    .line 166
    invoke-virtual {v1}, Lcom/sprd/validationtools/sqlite/EngSqlite;->queryFailCount()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/sprd/validationtools/sqlite/EngSqlite;->queryNotTestCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    invoke-virtual {v2, v0}, Lcom/sprd/validationtools/PhaseCheckParse;->writeStationPass(Ljava/lang/String;)Z

    goto :goto_0

    .line 169
    :cond_2
    iget-object v2, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    invoke-virtual {v2, v0}, Lcom/sprd/validationtools/PhaseCheckParse;->writeStationFail(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0    # "station":Ljava/lang/String;
    .end local v1    # "engSqlite":Lcom/sprd/validationtools/sqlite/EngSqlite;
    :goto_0
    goto :goto_1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    .line 174
    .end local v0    # "e":Landroid/database/SQLException;
    :goto_1
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 137
    if-nez p2, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->fullTest()V

    .line 140
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 311
    iget v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mUserId:I

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->finish()V

    .line 313
    return-void

    .line 315
    :cond_0
    const-string v0, "ro.bootmode"

    invoke-static {v0}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "engtest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 318
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 84
    const-string v0, "ValidationToolsMainActivity"

    const-string v1, "oncreate start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->setContentView(I)V

    .line 87
    invoke-static {}, Lcom/sprd/validationtools/Const;->isSupportCameraCaliVeri()Z

    move-result v0

    const v1, 0x7f090135

    const/4 v2, 0x4

    const v3, 0x7f0900d6

    const/4 v4, 0x3

    const v5, 0x7f090175

    const/4 v6, 0x2

    const v7, 0x7f0900a9

    const v8, 0x7f090082

    const/4 v9, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 89
    invoke-virtual {p0, v8}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v11

    .line 90
    invoke-virtual {p0, v7}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v10

    .line 91
    invoke-virtual {p0, v5}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v6

    .line 92
    invoke-virtual {p0, v3}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4


    const v1, 0x7f0901b2

    .line 103
    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mListItemString:[Ljava/lang/String;

    goto :goto_0

    .line 97
    :cond_0
    new-array v0, v9, [Ljava/lang/String;

    .line 98
    invoke-virtual {p0, v8}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v11

    .line 99
    invoke-virtual {p0, v7}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v10

    .line 100
    invoke-virtual {p0, v5}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v6

    .line 101
    invoke-virtual {p0, v3}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4


    const v1, 0x7f0901b2

    .line 103
    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mListItemString:[Ljava/lang/String;

    .line 105
    :goto_0
    const v0, 0x7f050014

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mListView:Landroid/widget/ListView;

    .line 106
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f060038

    iget-object v2, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mListItemString:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 109
    iget-object v1, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    iget-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 112
    const-string v1, "is_system_tested"

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mIsTested:Z

    .line 113
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mUserId:I

    .line 114
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    .line 115
    invoke-virtual {p0}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 116
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 117
    invoke-static {}, Lcom/sprd/validationtools/utils/ValidationToolsUtils;->parsePCBAConf()V

    .line 118
    invoke-direct {p0, p0, v10}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->startValidationToolsService(Landroid/content/Context;Z)V

    .line 119
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->startValidationToolsService(Landroid/content/Context;Z)V

    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 134
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 258
    iget v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mUserId:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0900de

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 260
    return-void

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ValidationToolsMainActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_6

    .line 265
    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    .local v0, "clickItem":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clickItem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const v2, 0x7f090082

    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->time:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->time:J

    .line 270
    invoke-virtual {p0}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sprd/validationtools/modules/FullTestItemList;->getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItemList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprd/validationtools/modules/TestItemList;->getTestItemList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mFullTestArray:Ljava/util/ArrayList;

    .line 271
    const/4 v2, 0x0

    iput v2, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mFullTestCur:I

    .line 272
    iput-boolean v1, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mIsTested:Z

    .line 273
    invoke-direct {p0}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->startBackgroundTest()V

    .line 274
    invoke-direct {p0}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->fullTest()V

    goto/16 :goto_0

    .line 276
    :cond_1
    const v1, 0x7f0900a9

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sprd/validationtools/itemstest/ListItemTestActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 279
    .end local v1    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    :cond_2
    const v1, 0x7f090175

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 280
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sprd/validationtools/testinfo/TestInfoMainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mIsTested:Z

    const-string v3, "is_system_tested"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 283
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    :cond_3
    const v1, 0x7f0900d6

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 284
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 286
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    :cond_4
    const v1, 0x7f090032

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 287
    invoke-direct {p0}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->launcherCameraCaliVerify()V

    goto :goto_0

    .line 288
    :cond_5
    const v1, 0x7f0901b2

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 289
    invoke-static {p0}, Lcom/sprd/validationtools/ExportHelper;->export(Landroid/content/Context;)V

    goto :goto_0

    .line 307
    .end local v0    # "clickItem":Ljava/lang/String;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_6
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 123
    iget v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mUserId:I

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/sprd/validationtools/ValidationToolsMainActivity;->saveTestInfo()V

    .line 126
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 127
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 253
    return-void
.end method

.method public saveFullTestUsedTime()V
    .locals 4

    .line 246
    iget-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 247
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-wide v1, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mFullTestUsedtime:J

    const-string v3, "fulltest_used_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 248
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 249
    return-void
.end method

.method public saveTestInfo()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 241
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-boolean v1, p0, Lcom/sprd/validationtools/ValidationToolsMainActivity;->mIsTested:Z

    const-string v2, "is_system_tested"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 242
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 243
    return-void
.end method
