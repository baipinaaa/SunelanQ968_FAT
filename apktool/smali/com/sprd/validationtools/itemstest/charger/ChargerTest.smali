.class public Lcom/sprd/validationtools/itemstest/charger/ChargerTest;
.super Lcom/sprd/validationtools/BaseActivity;
.source "ChargerTest.java"


# static fields
.field private static final ENG_BATTERY_CURRENT:Ljava/lang/String; = "/sys/class/power_supply/battery/current_now"

.field private static final ENG_CHARGER_VOLTAGE:Ljava/lang/String; = "/sys/class/power_supply/sc27xx-fgu/constant_charge_voltage"

.field private static final ENG_REAL_BATTERY_TEMPERATURE:Ljava/lang/String; = "sys/class/power_supply/battery/temp"

.field private static final PLUGGED:Ljava/lang/String; = "plugged"

.field private static final STATUS:Ljava/lang/String; = "status"

.field private static final TAG:Ljava/lang/String; = "ChargerTest"

.field private static final TEST_RESULT_FAIL:Ljava/lang/String; = "fail"

.field private static final TEST_RESULT_SUCCESS:Ljava/lang/String; = "success"

.field private static final VOLTAGE:Ljava/lang/String; = "voltage"


# instance fields
.field mAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryCurrentTextView:Landroid/widget/TextView;

.field private mBatteryTemperature:F

.field private mBatteryVoltageTextView:Landroid/widget/TextView;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mChargerVoltage:F

.field private mChargerVoltageTextView:Landroid/widget/TextView;

.field private mCompleteTest:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIsPlugUSB:Z

.field private mPluggedTextView:Landroid/widget/TextView;

.field private mRetryNum:I

.field private mStatusTextView:Landroid/widget/TextView;

.field private mTemperatureTextView:Landroid/widget/TextView;

.field private mTestResultTextView:Landroid/widget/TextView;

.field private mUpdate:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBatteryCurrentTextView(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mBatteryCurrentTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryTemperature(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)F
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mBatteryTemperature:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryVoltageTextView(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mBatteryVoltageTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChargerVoltage(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)F
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mChargerVoltage:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCompleteTest(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mCompleteTest:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPlugUSB(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mIsPlugUSB:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPluggedTextView(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mPluggedTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetryNum(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mRetryNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusTextView(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mStatusTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTemperatureTextView(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mTemperatureTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTestResultTextView(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mTestResultTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdate(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mUpdate:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBatteryTemperature(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;F)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mBatteryTemperature:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsPlugUSB(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mIsPlugUSB:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRetryNum(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mRetryNum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDataFromNode(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;Ljava/lang/String;)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->getDataFromNode(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetInputCurrentNewStep(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->getInputCurrentNewStep()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitView(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->initView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreadFile(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mIsPlugUSB:Z

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mAsyncTask:Landroid/os/AsyncTask;

    .line 52
    iput v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mRetryNum:I

    .line 55
    new-instance v0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$1;-><init>(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mUpdate:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$2;-><init>(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mCompleteTest:Ljava/lang/Runnable;

    .line 277
    new-instance v0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$6;-><init>(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getDataFromNode(Ljava/lang/String;)F
    .locals 8
    .param p1, "nodeString"    # Ljava/lang/String;

    .line 228
    const-string v0, "getDataFromNode fail , nodeString is:"

    const-string v1, "ChargerTest"

    const/16 v2, 0x400

    new-array v3, v2, [C

    .line 231
    .local v3, "buffer":[C
    const/high16 v4, -0x3d380000    # -100.0f

    .line 232
    .local v4, "data":F
    const/4 v5, 0x0

    .line 234
    .local v5, "file":Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 235
    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v2}, Ljava/io/FileReader;->read([CII)I

    move-result v2

    .line 236
    .local v2, "len":I
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3, v6, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v6

    .line 243
    .end local v2    # "len":I
    nop

    .line 244
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    const/4 v5, 0x0

    goto :goto_2

    .line 247
    :catch_0
    move-exception v2

    .line 248
    .local v2, "io":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 242
    .end local v2    # "io":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 239
    :catch_1
    move-exception v2

    .line 240
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    if-eqz v5, :cond_0

    .line 244
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 247
    :catch_2
    move-exception v2

    .line 248
    .local v2, "io":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 237
    .end local v2    # "io":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 238
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 243
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_0

    .line 244
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 245
    :goto_0
    const/4 v0, 0x0

    move-object v5, v0

    .end local v5    # "file":Ljava/io/FileReader;
    .local v0, "file":Ljava/io/FileReader;
    goto :goto_2

    .line 247
    .end local v0    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    :catch_4
    move-exception v2

    .line 248
    .local v2, "io":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v2    # "io":Ljava/io/IOException;
    goto :goto_3

    .line 249
    :cond_0
    :goto_2
    nop

    .line 251
    :goto_3
    return v4

    .line 243
    :goto_4
    if-eqz v5, :cond_1

    .line 244
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 245
    const/4 v5, 0x0

    goto :goto_5

    .line 247
    :catch_5
    move-exception v6

    .line 248
    .local v6, "io":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 249
    .end local v6    # "io":Ljava/io/IOException;
    :cond_1
    :goto_5
    nop

    .line 250
    :goto_6
    throw v2
.end method

.method private getInputCurrentNewStep()Ljava/lang/String;
    .locals 11

    .line 152
    const-string v0, "/sys/class/power_supply/battery/current_now"

    const-string v1, "]"

    const-string v2, "ChargerTest"

    const-string v3, ""

    .line 153
    .local v3, "result":Ljava/lang/String;
    const-string v4, ""

    .line 155
    .local v4, "inputCurrent":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$3;

    invoke-direct {v6, p0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$3;-><init>(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsPlugUSB="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mIsPlugUSB:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-boolean v5, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mIsPlugUSB:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "fail"

    if-nez v5, :cond_0

    .line 164
    move-object v0, v6

    .line 165
    .end local v3    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    return-object v0

    .line 168
    .end local v0    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->stopCharge()V

    .line 169
    const-wide/16 v7, 0x7d0

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 170
    const/4 v5, 0x0

    .line 171
    .local v5, "c1":I
    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    div-int/lit16 v9, v9, 0x3e8

    move v5, v9

    .line 172
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getInputCurrentNewStep inputCurrent c1=["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v9, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$4;

    invoke-direct {v10, p0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$4;-><init>(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->startCharge()V

    .line 182
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 183
    const/4 v7, 0x0

    .line 184
    .local v7, "c2":I
    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 185
    .end local v7    # "c2":I
    .local v0, "c2":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getInputCurrentNewStep inputCurrent c2=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sub-int v7, v0, v5

    .line 187
    .local v7, "i1":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getInputCurrentNewStep inputCurrent i1=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getInputCurrentNewStep inputCurrent mChargerVoltage=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mChargerVoltage:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    const-string v1, "success"

    const/16 v8, 0xc8

    if-lt v7, v8, :cond_1

    .line 191
    move-object v3, v1

    .end local v3    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 192
    .end local v1    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    :cond_1
    const/16 v9, 0x64

    if-le v7, v9, :cond_2

    if-ge v7, v8, :cond_2

    :try_start_2
    iget v8, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mChargerVoltage:F

    const v9, 0x45802000    # 4100.0f

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    .line 194
    move-object v3, v1

    .end local v3    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 196
    .end local v1    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    :cond_2
    move-object v1, v6

    move-object v3, v1

    .line 198
    :goto_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$5;

    invoke-direct {v6, p0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest$5;-><init>(Lcom/sprd/validationtools/itemstest/charger/ChargerTest;)V

    invoke-virtual {v1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 208
    nop

    .end local v0    # "c2":I
    .end local v5    # "c1":I
    .end local v7    # "i1":I
    goto :goto_1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "getInputCurrentNewStep fail"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v3
.end method

.method private initView()V
    .locals 4

    .line 213
    const-string v0, "/sys/class/power_supply/sc27xx-fgu/constant_charge_voltage"

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->getDataFromNode(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mChargerVoltage:F

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initView mChargerVoltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mChargerVoltage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChargerTest"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mChargerVoltage:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mIsPlugUSB:Z

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mChargerVoltageTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mChargerVoltage:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mChargerVoltageTextView:Landroid/widget/TextView;

    const-string v1, "n/a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :goto_0
    const-string v0, "sys/class/power_supply/battery/temp"

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->getDataFromNode(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mBatteryTemperature:F

    .line 224
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mTemperatureTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mBatteryTemperature:F

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u2103"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    return-void
.end method

.method private readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .line 255
    const-string v0, "read file close fail"

    const-string v1, "ChargerTest"

    const/16 v2, 0x400

    new-array v3, v2, [C

    .line 256
    .local v3, "buffer":[C
    const-string v4, ""

    .line 257
    .local v4, "fileData":Ljava/lang/String;
    const/4 v5, 0x0

    .line 259
    .local v5, "file":Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 260
    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v2}, Ljava/io/FileReader;->read([CII)I

    move-result v2

    .line 261
    .local v2, "len":I
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3, v6, v2}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v7

    .line 266
    .end local v2    # "len":I
    nop

    .line 267
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 268
    const/4 v5, 0x0

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 262
    :catch_0
    move-exception v2

    .line 263
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_0

    .line 267
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 268
    const/4 v0, 0x0

    move-object v5, v0

    .end local v5    # "file":Ljava/io/FileReader;
    .local v0, "file":Ljava/io/FileReader;
    goto :goto_0

    .line 270
    .end local v0    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .line 271
    .local v2, "io":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v2    # "io":Ljava/io/IOException;
    goto :goto_1

    .line 272
    :cond_0
    :goto_0
    nop

    .line 274
    :goto_1
    return-object v4

    .line 266
    :goto_2
    if-eqz v5, :cond_1

    .line 267
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 268
    const/4 v5, 0x0

    goto :goto_3

    .line 270
    :catch_2
    move-exception v6

    .line 271
    .local v6, "io":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 272
    .end local v6    # "io":Ljava/io/IOException;
    :cond_1
    :goto_3
    nop

    .line 273
    :goto_4
    throw v2
.end method

.method private startCharge()V
    .locals 3

    .line 360
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/PhaseCheckParse;->writeChargeSwitch(I)Z

    move-result v0

    .line 361
    .local v0, "res":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCharge res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChargerTest"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void
.end method

.method private stopCharge()V
    .locals 3

    .line 355
    invoke-static {}, Lcom/sprd/validationtools/PhaseCheckParse;->getInstance()Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/PhaseCheckParse;->writeChargeSwitch(I)Z

    move-result v0

    .line 356
    .local v0, "res":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCharge res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChargerTest"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 112
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->removeButton()V

    .line 114
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sprd/validationtools/BaseActivity;->createButton(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 118
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->setTitle(I)V

    .line 119
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->setContentView(I)V

    .line 120
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mHandler:Landroid/os/Handler;

    .line 122
    const v0, 0x7f050095

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mStatusTextView:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f05007a

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mPluggedTextView:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f05001f

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mBatteryCurrentTextView:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f05001e

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mBatteryVoltageTextView:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f05003b

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mChargerVoltageTextView:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f050022

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mTemperatureTextView:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0500b3

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mTestResultTextView:Landroid/widget/TextView;

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 346
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mCompleteTest:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 348
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 349
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 351
    :cond_0
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 352
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 147
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 148
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 136
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 138
    const-string v0, "/sys/class/power_supply/battery/current_now"

    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 139
    .local v0, "batteryCurrent":I
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mBatteryCurrentTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ma"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const-string v1, "sys/class/power_supply/battery/temp"

    invoke-direct {p0, v1}, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->getDataFromNode(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mBatteryTemperature:F

    .line 141
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mTemperatureTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mBatteryTemperature:F

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u2103"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/charger/ChargerTest;->mUpdate:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    return-void
.end method
