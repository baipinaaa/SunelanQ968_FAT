.class public Lcom/sprd/validationtools/testinfo/TestInfoQRCode;
.super Ljava/lang/Object;
.source "TestInfoQRCode.java"


# static fields
.field private static final CAMERA_SENSOR:Ljava/lang/String; = "/sys/devices/virtual/misc/sprd_sensor/camera_sensor_name"

.field private static final GSENSOR:Ljava/lang/String; = "sys/module/sprd_phinfo/parameters/SPRD_GsensorInfo"

.field private static final LCD_ID_NEW:Ljava/lang/String; = "/sys/class/display/panel0/name"

.field private static final LCD_ID_OLD:Ljava/lang/String; = "/sys/devices/platform/soc/soc:ap-ahb/20800000.dispc/lcd_name"

.field private static final LSENSOR:Ljava/lang/String; = "sys/module/sprd_phinfo/parameters/SPRD_LsensorInfo"

.field private static final SENSOR_VERSION:Ljava/lang/String; = "/sys/class/sprd_sensorhub/sensor_hub/sensor_info"

.field private static final SUPPORT_MATERIAL_INFO:Z = false

.field private static final TAG:Ljava/lang/String; = "TestInfoQRCode"

.field private static final TEXT_FAIL:Ljava/lang/String; = "FAIL"

.field private static final TEXT_PASS:Ljava/lang/String; = "PASS"

.field private static final TP_CHIP_ID:Ljava/lang/String; = "/sys/touchscreen/chip_id"

.field private static final TP_FIRMWARE_VERSION:Ljava/lang/String; = "/sys/touchscreen/firmware_version"


# instance fields
.field private mPrefs:Landroid/content/SharedPreferences;

.field private mTestItemsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sprd/validationtools/modules/TestItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/testinfo/TestInfoQRCode;->mTestItemsArray:Ljava/util/ArrayList;

    return-void
.end method

.method private getCameraID()Ljava/lang/String;
    .locals 2

    .line 176
    const-string v0, "/sys/devices/virtual/misc/sprd_sensor/camera_sensor_name"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const-string v1, "vendor.cam.sensor.info"

    invoke-static {v1}, Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    return-object v0

    .line 181
    :cond_0
    return-object v0
.end method

.method private getGsensorID()Ljava/lang/String;
    .locals 1

    .line 189
    const-string v0, "sys/module/sprd_phinfo/parameters/SPRD_GsensorInfo"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLcdID()Ljava/lang/String;
    .locals 2

    .line 170
    const-string v0, "/sys/devices/platform/soc/soc:ap-ahb/20800000.dispc/lcd_name"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->fileIsExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    const-string v0, "/sys/class/display/panel0/name"

    :goto_0
    nop

    .line 172
    .local v0, "lcdId":Ljava/lang/String;
    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getLsensorID()Ljava/lang/String;
    .locals 1

    .line 185
    const-string v0, "sys/module/sprd_phinfo/parameters/SPRD_LsensorInfo"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTpID()Ljava/lang/String;
    .locals 1

    .line 193
    const-string v0, "/sys/touchscreen/chip_id"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTpVersion()Ljava/lang/String;
    .locals 1

    .line 197
    const-string v0, "/sys/touchscreen/firmware_version"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getTestInfoQRCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 34
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "\n"

    const-string v3, "unknown"

    const-string v4, ""

    :try_start_0
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v5

    .line 54
    .local v5, "mCheckParse":Lcom/sprd/validationtools/PhaseCheckParse;
    invoke-static/range {p1 .. p1}, Lcom/sprd/validationtools/sqlite/EngSqlite;->getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/sqlite/EngSqlite;

    move-result-object v6

    .line 55
    .local v6, "mEngSqlite":Lcom/sprd/validationtools/sqlite/EngSqlite;
    iget-object v7, v1, Lcom/sprd/validationtools/testinfo/TestInfoQRCode;->mTestItemsArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 56
    invoke-static/range {p1 .. p1}, Lcom/sprd/validationtools/modules/UnitTestItemList;->getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItemList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sprd/validationtools/modules/TestItemList;->getTestItemList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sprd/validationtools/sqlite/EngSqlite;->queryData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v1, Lcom/sprd/validationtools/testinfo/TestInfoQRCode;->mTestItemsArray:Ljava/util/ArrayList;

    .line 57
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, v1, Lcom/sprd/validationtools/testinfo/TestInfoQRCode;->mPrefs:Landroid/content/SharedPreferences;

    .line 59
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .local v7, "root":Lorg/json/JSONObject;
    move-object v8, v4

    .local v8, "sn1":Ljava/lang/String;
    move-object v9, v4

    .local v9, "sn2":Ljava/lang/String;
    move-object v10, v4

    .local v10, "imei1":Ljava/lang/String;
    move-object v11, v4

    .local v11, "imei2":Ljava/lang/String;
    move-object v12, v4

    .local v12, "mElapsedTime":Ljava/lang/String;
    move-object v13, v4

    .local v13, "mTestResult":Ljava/lang/String;
    move-object v14, v4

    .local v14, "mErrCode":Ljava/lang/String;
    move-object v15, v4

    .local v15, "mErrType":Ljava/lang/String;
    move-object/from16 v16, v4

    .line 63
    .local v16, "mErrMsg":Ljava/lang/String;
    nop

    .line 64
    .local v4, "uid":Ljava/lang/String;
    move-object/from16 v17, v8

    .end local v8    # "sn1":Ljava/lang/String;
    .local v17, "sn1":Ljava/lang/String;
    const-string v8, "ro.build.display.id"

    invoke-static {v8, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 65
    .local v8, "swVersion":Ljava/lang/String;
    move-object/from16 v18, v9

    .end local v9    # "sn2":Ljava/lang/String;
    .local v18, "sn2":Ljava/lang/String;
    const-string v9, "ro.boot.factory_version"

    invoke-static {v9, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 66
    .local v9, "dataCode":Ljava/lang/String;
    move-object/from16 v19, v10

    .end local v10    # "imei1":Ljava/lang/String;
    .local v19, "imei1":Ljava/lang/String;
    const-string v10, "ro.boot.hardware_boardid"

    invoke-static {v10, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "hwVersion":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/sprd/validationtools/PhaseCheckParse;->getSnByIndex(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v20

    .line 69
    .end local v17    # "sn1":Ljava/lang/String;
    .local v21, "sn1":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lcom/sprd/validationtools/PhaseCheckParse;->getSnByIndex(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v22, v20

    .line 71
    .end local v18    # "sn2":Ljava/lang/String;
    .local v22, "sn2":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-static {v2, v10}, Lcom/sprd/validationtools/utils/ValidationToolsUtils;->getImei(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    .line 72
    .end local v19    # "imei1":Ljava/lang/String;
    .restart local v10    # "imei1":Ljava/lang/String;
    move-object/from16 v17, v5

    const/4 v5, 0x1

    .end local v5    # "mCheckParse":Lcom/sprd/validationtools/PhaseCheckParse;
    .local v17, "mCheckParse":Lcom/sprd/validationtools/PhaseCheckParse;
    invoke-static {v2, v5}, Lcom/sprd/validationtools/utils/ValidationToolsUtils;->getImei(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v5, v19

    .line 74
    .end local v11    # "imei2":Ljava/lang/String;
    .local v5, "imei2":Ljava/lang/String;
    iget-object v11, v1, Lcom/sprd/validationtools/testinfo/TestInfoQRCode;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v11, :cond_0

    .line 75
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/sprd/validationtools/testinfo/TestInfoQRCode;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v19, v12

    .end local v12    # "mElapsedTime":Ljava/lang/String;
    .local v19, "mElapsedTime":Ljava/lang/String;
    const-string v12, "fulltest_used_time"

    move-object/from16 v20, v13

    move-object/from16 v23, v14

    .end local v13    # "mTestResult":Ljava/lang/String;
    .end local v14    # "mErrCode":Ljava/lang/String;
    .local v20, "mTestResult":Ljava/lang/String;
    .local v23, "mErrCode":Ljava/lang/String;
    const-wide/16 v13, 0x0

    invoke-interface {v2, v12, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-wide/16 v24, 0x3e8

    div-long v12, v12, v24

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "s"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    .end local v19    # "mElapsedTime":Ljava/lang/String;
    .restart local v12    # "mElapsedTime":Ljava/lang/String;
    goto :goto_0

    .line 74
    .end local v20    # "mTestResult":Ljava/lang/String;
    .end local v23    # "mErrCode":Ljava/lang/String;
    .restart local v13    # "mTestResult":Ljava/lang/String;
    .restart local v14    # "mErrCode":Ljava/lang/String;
    :cond_0
    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v23, v14

    .line 80
    .end local v13    # "mTestResult":Ljava/lang/String;
    .end local v14    # "mErrCode":Ljava/lang/String;
    .restart local v20    # "mTestResult":Ljava/lang/String;
    .restart local v23    # "mErrCode":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6}, Lcom/sprd/validationtools/sqlite/EngSqlite;->queryFailCount()I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "PASS"

    const-string v13, "FAIL"

    if-nez v2, :cond_1

    .line 81
    :try_start_1
    invoke-virtual {v6}, Lcom/sprd/validationtools/sqlite/EngSqlite;->queryNotTestCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 82
    move-object v2, v11

    .end local v20    # "mTestResult":Ljava/lang/String;
    .local v2, "mTestResult":Ljava/lang/String;
    goto :goto_1

    .line 84
    .end local v2    # "mTestResult":Ljava/lang/String;
    .restart local v20    # "mTestResult":Ljava/lang/String;
    :cond_1
    move-object v2, v13

    .line 87
    .end local v20    # "mTestResult":Ljava/lang/String;
    .restart local v2    # "mTestResult":Ljava/lang/String;
    :goto_1
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 88
    .local v14, "mTestDetail":Lorg/json/JSONArray;
    const/16 v19, 0x0

    .line 89
    .local v19, "code":I
    const/16 v20, 0x0

    .line 90
    .local v20, "findError":Z
    move-object/from16 v24, v6

    .end local v6    # "mEngSqlite":Lcom/sprd/validationtools/sqlite/EngSqlite;
    .local v24, "mEngSqlite":Lcom/sprd/validationtools/sqlite/EngSqlite;
    iget-object v6, v1, Lcom/sprd/validationtools/testinfo/TestInfoQRCode;->mTestItemsArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v15

    move-object/from16 v15, v23

    move-object/from16 v33, v16

    move-object/from16 v16, v11

    move-object/from16 v11, v33

    .end local v16    # "mErrMsg":Ljava/lang/String;
    .end local v23    # "mErrCode":Ljava/lang/String;
    .local v1, "mErrType":Ljava/lang/String;
    .local v11, "mErrMsg":Ljava/lang/String;
    .local v15, "mErrCode":Ljava/lang/String;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v23
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v25, v13

    const-string v13, "TestInfoQRCode"

    if-eqz v23, :cond_5

    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sprd/validationtools/modules/TestItem;

    .line 91
    .local v23, "testItem":Lcom/sprd/validationtools/modules/TestItem;
    new-instance v26, Lorg/json/JSONObject;

    invoke-direct/range {v26 .. v26}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v27, v26

    .line 92
    .local v27, "testItemJSONObject":Lorg/json/JSONObject;
    move-object/from16 v26, v6

    invoke-virtual/range {v23 .. v23}, Lcom/sprd/validationtools/modules/TestItem;->getTestResult()I

    move-result v6

    move-object/from16 v28, v11

    .end local v11    # "mErrMsg":Ljava/lang/String;
    .local v28, "mErrMsg":Ljava/lang/String;
    const/4 v11, 0x2

    if-ne v6, v11, :cond_2

    const-string v6, "UnTest"

    goto :goto_3

    .line 93
    :cond_2
    invoke-virtual/range {v23 .. v23}, Lcom/sprd/validationtools/modules/TestItem;->getTestResult()I

    move-result v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_3

    move-object/from16 v6, v16

    goto :goto_3

    .line 94
    :cond_3
    move-object/from16 v6, v25

    :goto_3
    nop

    .line 95
    .local v6, "result":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v1

    .end local v1    # "mErrType":Ljava/lang/String;
    .local v29, "mErrType":Ljava/lang/String;
    const-string v1, "testItem result = "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual/range {v23 .. v23}, Lcom/sprd/validationtools/modules/TestItem;->getTestName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v11, v27

    .end local v27    # "testItemJSONObject":Lorg/json/JSONObject;
    .local v11, "testItemJSONObject":Lorg/json/JSONObject;
    invoke-virtual {v11, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    invoke-virtual {v14, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v6

    .end local v6    # "result":Ljava/lang/String;
    .local v27, "result":Ljava/lang/String;
    const-string v6, "getTestname = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v23 .. v23}, Lcom/sprd/validationtools/modules/TestItem;->getTestName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    add-int/lit8 v1, v19, 0x1

    .line 101
    .end local v19    # "code":I
    .local v1, "code":I
    invoke-virtual/range {v23 .. v23}, Lcom/sprd/validationtools/modules/TestItem;->getTestResult()I

    move-result v6

    move-object/from16 v30, v11

    const/4 v11, 0x1

    .end local v11    # "testItemJSONObject":Lorg/json/JSONObject;
    .local v30, "testItemJSONObject":Lorg/json/JSONObject;
    if-eq v6, v11, :cond_4

    if-nez v20, :cond_4

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getTestname test code = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual/range {v23 .. v23}, Lcom/sprd/validationtools/modules/TestItem;->getTestClassName()Ljava/lang/String;

    move-result-object v6

    .line 104
    .end local v29    # "mErrType":Ljava/lang/String;
    .local v6, "mErrType":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/sprd/validationtools/modules/TestItem;->getTestName()Ljava/lang/String;

    move-result-object v11

    .line 105
    .end local v28    # "mErrMsg":Ljava/lang/String;
    .local v11, "mErrMsg":Ljava/lang/String;
    move-object/from16 v31, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v14

    .end local v14    # "mTestDetail":Lorg/json/JSONArray;
    .local v32, "mTestDetail":Lorg/json/JSONArray;
    const-string v14, "MMI"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .end local v15    # "mErrCode":Ljava/lang/String;
    .local v0, "mErrCode":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getTestname test mErrCode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",mErrType="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",mErrMsg="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v13, 0x1

    move-object v15, v0

    move/from16 v20, v13

    .end local v20    # "findError":Z
    .local v13, "findError":Z
    goto :goto_4

    .line 101
    .end local v0    # "mErrCode":Ljava/lang/String;
    .end local v6    # "mErrType":Ljava/lang/String;
    .end local v11    # "mErrMsg":Ljava/lang/String;
    .end local v13    # "findError":Z
    .end local v32    # "mTestDetail":Lorg/json/JSONArray;
    .restart local v14    # "mTestDetail":Lorg/json/JSONArray;
    .restart local v15    # "mErrCode":Ljava/lang/String;
    .restart local v20    # "findError":Z
    .restart local v28    # "mErrMsg":Ljava/lang/String;
    .restart local v29    # "mErrType":Ljava/lang/String;
    :cond_4
    move-object/from16 v31, v0

    move-object/from16 v32, v14

    .line 110
    .end local v14    # "mTestDetail":Lorg/json/JSONArray;
    .end local v23    # "testItem":Lcom/sprd/validationtools/modules/TestItem;
    .end local v27    # "result":Ljava/lang/String;
    .end local v30    # "testItemJSONObject":Lorg/json/JSONObject;
    .restart local v32    # "mTestDetail":Lorg/json/JSONArray;
    move-object/from16 v11, v28

    move-object/from16 v6, v29

    .end local v28    # "mErrMsg":Ljava/lang/String;
    .end local v29    # "mErrType":Ljava/lang/String;
    .restart local v6    # "mErrType":Ljava/lang/String;
    .restart local v11    # "mErrMsg":Ljava/lang/String;
    :goto_4
    move/from16 v19, v1

    move-object v1, v6

    move-object/from16 v13, v25

    move-object/from16 v6, v26

    move-object/from16 v0, v31

    move-object/from16 v14, v32

    goto/16 :goto_2

    .line 114
    .end local v6    # "mErrType":Ljava/lang/String;
    .end local v32    # "mTestDetail":Lorg/json/JSONArray;
    .local v1, "mErrType":Ljava/lang/String;
    .restart local v14    # "mTestDetail":Lorg/json/JSONArray;
    .restart local v19    # "code":I
    :cond_5
    move-object/from16 v29, v1

    move-object/from16 v28, v11

    move-object/from16 v32, v14

    .end local v1    # "mErrType":Ljava/lang/String;
    .end local v11    # "mErrMsg":Ljava/lang/String;
    .end local v14    # "mTestDetail":Lorg/json/JSONArray;
    .restart local v28    # "mErrMsg":Ljava/lang/String;
    .restart local v29    # "mErrType":Ljava/lang/String;
    .restart local v32    # "mTestDetail":Lorg/json/JSONArray;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sn1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v21

    .end local v21    # "sn1":Ljava/lang/String;
    .local v1, "sn1":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ",sn2="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v6, v22

    .end local v22    # "sn2":Ljava/lang/String;
    .local v6, "sn2":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "imei1 = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ",imei2 = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ",uid= "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mElapsedTime = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ",mTestResult="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v0, "SWVersion"

    invoke-virtual {v7, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v0, "HWVersion"

    invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v0, "DataCode"

    invoke-virtual {v7, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v0, "SN1"

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v0, "CUREF"

    invoke-virtual {v7, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v0, "IMEI1"

    invoke-virtual {v7, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v0, "IMEI2"

    invoke-virtual {v7, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v0, "UID"

    invoke-virtual {v7, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v0, "ElapsedTime"

    invoke-virtual {v7, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v0, "TestResult"

    invoke-virtual {v7, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v0, "ErrCode"

    invoke-virtual {v7, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v0, "ErrType"

    move-object/from16 v11, v29

    .end local v29    # "mErrType":Ljava/lang/String;
    .local v11, "mErrType":Ljava/lang/String;
    invoke-virtual {v7, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v0, "ErrMsg"

    move-object/from16 v14, v28

    .end local v28    # "mErrMsg":Ljava/lang/String;
    .local v14, "mErrMsg":Ljava/lang/String;
    invoke-virtual {v7, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v0, "TestDetail"

    move-object/from16 v16, v1

    move-object/from16 v1, v32

    .end local v32    # "mTestDetail":Lorg/json/JSONArray;
    .local v1, "mTestDetail":Lorg/json/JSONArray;
    .local v16, "sn1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v1

    .end local v1    # "mTestDetail":Lorg/json/JSONArray;
    .restart local v32    # "mTestDetail":Lorg/json/JSONArray;
    const-string v1, "getTestInfoQRCode:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 163
    .end local v2    # "mTestResult":Ljava/lang/String;
    .end local v3    # "hwVersion":Ljava/lang/String;
    .end local v4    # "uid":Ljava/lang/String;
    .end local v5    # "imei2":Ljava/lang/String;
    .end local v6    # "sn2":Ljava/lang/String;
    .end local v7    # "root":Lorg/json/JSONObject;
    .end local v8    # "swVersion":Ljava/lang/String;
    .end local v9    # "dataCode":Ljava/lang/String;
    .end local v10    # "imei1":Ljava/lang/String;
    .end local v11    # "mErrType":Ljava/lang/String;
    .end local v12    # "mElapsedTime":Ljava/lang/String;
    .end local v14    # "mErrMsg":Ljava/lang/String;
    .end local v15    # "mErrCode":Ljava/lang/String;
    .end local v16    # "sn1":Ljava/lang/String;
    .end local v17    # "mCheckParse":Lcom/sprd/validationtools/PhaseCheckParse;
    .end local v19    # "code":I
    .end local v20    # "findError":Z
    .end local v24    # "mEngSqlite":Lcom/sprd/validationtools/sqlite/EngSqlite;
    .end local v32    # "mTestDetail":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 166
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return-object v0
.end method
