.class public Lcom/sprd/validationtools/PhaseCheckParse;
.super Ljava/lang/Object;
.source "PhaseCheckParse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/PhaseCheckParse$Parcel;,
        Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;,
        Lcom/sprd/validationtools/PhaseCheckParse$AdaptParcel;
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x1000

.field private static SOCKET_NAME:Ljava/lang/String; = null

.field private static TAG:Ljava/lang/String; = null

.field private static final TYPE_EXECUTE_AI_TEST:I = 0x1d

.field private static final TYPE_EXECUTE_OFFSET_CALIBRATION:I = 0x17

.field private static final TYPE_EXECUTE_XTALK_CALIBRATION:I = 0x18

.field private static final TYPE_GET_PHASECHECK:I = 0x5

.field private static final TYPE_GET_SN1:I = 0x0

.field private static final TYPE_GET_SN2:I = 0x1

.field private static final TYPE_READ_OFFSET:I = 0x12

.field private static final TYPE_WRITE_CHARGE_SWITCH:I = 0x6

.field private static final TYPE_WRITE_OFFSET:I = 0x11

.field private static final TYPE_WRITE_STATION_FAIL:I = 0x4

.field private static final TYPE_WRITE_STATION_PASS:I = 0x3

.field private static final TYPE_WRITE_STATION_TESTED:I = 0x2

.field private static mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;


# instance fields
.field private binder:Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;


# direct methods
.method static bridge synthetic -$$Nest$sfgetSOCKET_NAME()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sprd/validationtools/PhaseCheckParse;->SOCKET_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "PhaseCheckParse"

    sput-object v0, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/sprd/validationtools/PhaseCheckParse;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    .line 605
    const-string v0, "phasecheck_srv"

    sput-object v0, Lcom/sprd/validationtools/PhaseCheckParse;->SOCKET_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;-><init>(Lcom/sprd/validationtools/PhaseCheckParse;)V

    iput-object v0, p0, Lcom/sprd/validationtools/PhaseCheckParse;->binder:Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;

    .line 53
    sget-object v0, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    const-string v1, "Get The service connect!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method private StationTested(CC)Ljava/lang/String;
    .locals 1
    .param p1, "testSign"    # C
    .param p2, "item"    # C

    .line 66
    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    .line 67
    const-string v0, "PASS"

    return-object v0

    .line 68
    :cond_0
    if-ne p1, v0, :cond_1

    const/16 v0, 0x31

    if-ne p2, v0, :cond_1

    .line 69
    const-string v0, "FAIL"

    return-object v0

    .line 70
    :cond_1
    const-string v0, "UnTested"

    return-object v0
.end method

.method public static getInstance()Lcom/sprd/validationtools/PhaseCheckParse;
    .locals 1

    .line 45
    sget-object v0, Lcom/sprd/validationtools/PhaseCheckParse;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/sprd/validationtools/PhaseCheckParse;

    invoke-direct {v0}, Lcom/sprd/validationtools/PhaseCheckParse;-><init>()V

    sput-object v0, Lcom/sprd/validationtools/PhaseCheckParse;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    .line 48
    :cond_0
    sget-object v0, Lcom/sprd/validationtools/PhaseCheckParse;->mPhaseCheckParse:Lcom/sprd/validationtools/PhaseCheckParse;

    return-object v0
.end method

.method private getStationTest(Ljava/lang/String;)I
    .locals 13
    .param p1, "station_name"    # Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStationTest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, -0x1

    .line 77
    .local v0, "ret":I
    :try_start_0
    new-instance v1, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    .line 78
    .local v1, "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    new-instance v3, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    invoke-direct {v3, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    move-object v2, v3

    .line 79
    .local v2, "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse;->binder:Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v2, v5}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->transact(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;I)V

    .line 80
    sget-object v3, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    const-string v4, "transact SUCESS!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readInt()I

    move-result v3

    .line 82
    .local v3, "testSign":I
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readInt()I

    move-result v4

    .line 83
    .local v4, "item":I
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "stationName":Ljava/lang/String;
    sget-object v6, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stationName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v6, "|"

    invoke-static {v6}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, "str":[Ljava/lang/String;
    const/16 v7, 0x20

    invoke-static {v3, v7}, Lcom/sprd/validationtools/utils/ByteUtils;->intToBinary32(II)Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, "strTestSign":Ljava/lang/String;
    invoke-static {v4, v7}, Lcom/sprd/validationtools/utils/ByteUtils;->intToBinary32(II)Ljava/lang/String;

    move-result-object v7

    .line 88
    .local v7, "strItem":Ljava/lang/String;
    sget-object v9, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "strTestSign = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " strItem = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v6

    if-ge v9, v10, :cond_1

    .line 90
    sget-object v10, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "str =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v6, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    aget-object v10, v6, v9

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 92
    move v0, v9

    .line 93
    goto :goto_1

    .line 89
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 96
    .end local v9    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 97
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1    # "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v2    # "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v3    # "testSign":I
    .end local v4    # "item":I
    .end local v5    # "stationName":Ljava/lang/String;
    .end local v6    # "str":[Ljava/lang/String;
    .end local v7    # "strItem":Ljava/lang/String;
    .end local v8    # "strTestSign":Ljava/lang/String;
    nop

    .line 102
    sget-object v1, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStationTest return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    const/4 v2, -0x1

    return v2
.end method

.method private hasDigit(Ljava/lang/String;)Z
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "flag":Z
    const-string v1, ".*\\d+.*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 59
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 60
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    const/4 v0, 0x1

    .line 62
    :cond_0
    return v0
.end method

.method private logLedLight(I)V
    .locals 2
    .param p1, "code"    # I

    .line 582
    packed-switch p1, :pswitch_data_0

    .line 593
    sget-object v0, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    const-string v1, "Unknow light!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 590
    :pswitch_0
    sget-object v0, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    const-string v1, "Green light!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    goto :goto_0

    .line 587
    :pswitch_1
    sget-object v0, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    const-string v1, "Blue light!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    goto :goto_0

    .line 584
    :pswitch_2
    sget-object v0, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    const-string v1, "Red light!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    nop

    .line 596
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public executeAITest(I)I
    .locals 7
    .param p1, "ip"    # I

    .line 303
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    .line 304
    .local v1, "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    new-instance v3, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    invoke-direct {v3, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    move-object v2, v3

    .line 305
    .local v2, "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    invoke-virtual {v1, p1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->writeInt(I)V

    .line 306
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse;->binder:Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;

    const/16 v4, 0x1d

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->transact(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;I)V

    .line 307
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readInt()I

    move-result v3

    .line 308
    .local v3, "retValue":I
    sget-object v4, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "executeAITest data=:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SUCESS!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {v1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 310
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    return v3

    .line 312
    .end local v1    # "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v2    # "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v3    # "retValue":I
    :catch_0
    move-exception v1

    .line 313
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    const-string v3, "Exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 316
    .end local v1    # "ex":Ljava/lang/Exception;
    return v0
.end method

.method public executeOffsetCalibration()I
    .locals 7

    .line 267
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    .line 268
    .local v1, "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    new-instance v3, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    invoke-direct {v3, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    move-object v2, v3

    .line 269
    .local v2, "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse;->binder:Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;

    const/16 v4, 0x17

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->transact(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;I)V

    .line 270
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readInt()I

    move-result v3

    .line 271
    .local v3, "retValue":I
    sget-object v4, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "executeOffsetCalibration data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SUCESS!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {v1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 274
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    return v3

    .line 276
    .end local v1    # "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v2    # "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v3    # "retValue":I
    :catch_0
    move-exception v1

    .line 277
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    const-string v3, "Exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    .end local v1    # "ex":Ljava/lang/Exception;
    return v0
.end method

.method public executeXtalkCalibration()I
    .locals 7

    .line 285
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    .line 286
    .local v1, "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    new-instance v3, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    invoke-direct {v3, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    move-object v2, v3

    .line 287
    .local v2, "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse;->binder:Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;

    const/16 v4, 0x18

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->transact(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;I)V

    .line 288
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readInt()I

    move-result v3

    .line 289
    .local v3, "retValue":I
    sget-object v4, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "executeOffsetCalibration data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SUCESS!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 292
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    return v3

    .line 294
    .end local v1    # "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v2    # "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v3    # "retValue":I
    :catch_0
    move-exception v1

    .line 295
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    const-string v3, "Exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    .end local v1    # "ex":Ljava/lang/Exception;
    return v0
.end method

.method public getChargeChargingstatus(I)Ljava/lang/String;
    .locals 6
    .param p1, "type"    # I

    .line 393
    const/4 v0, 0x0

    .line 395
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    .line 396
    .local v1, "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    new-instance v3, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    invoke-direct {v3, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    move-object v2, v3

    .line 397
    .local v2, "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse;->binder:Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v1, v2, v4}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->transact(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;I)V

    .line 398
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 399
    sget-object v3, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get getChargeChargingstatus retValue is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {v1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v1    # "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v2    # "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    goto :goto_0

    .line 401
    :catch_0
    move-exception v1

    .line 402
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get phasecheck fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    const-string v1, "0"

    return-object v1

    .line 408
    :cond_0
    return-object v0
.end method

.method public getPhaseCheck()Ljava/lang/String;
    .locals 17

    .line 412
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 414
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    .line 415
    .local v0, "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    new-instance v4, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    invoke-direct {v4, v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    move-object v3, v4

    .line 416
    .local v3, "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    iget-object v4, v1, Lcom/sprd/validationtools/PhaseCheckParse;->binder:Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->transact(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;I)V

    .line 417
    sget-object v4, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    const-string v5, "transact SUCESS!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readInt()I

    move-result v4

    .line 419
    .local v4, "testSign":I
    invoke-virtual {v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readInt()I

    move-result v5

    .line 420
    .local v5, "item":I
    invoke-virtual {v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 421
    .local v6, "stationName":Ljava/lang/String;
    sget-object v7, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "stationName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v7, "|"

    invoke-static {v7}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 425
    .local v7, "str":[Ljava/lang/String;
    const/16 v8, 0x20

    invoke-static {v4, v8}, Lcom/sprd/validationtools/utils/ByteUtils;->intToBinary32(II)Ljava/lang/String;

    move-result-object v9

    .line 426
    .local v9, "strTestSign":Ljava/lang/String;
    invoke-static {v5, v8}, Lcom/sprd/validationtools/utils/ByteUtils;->intToBinary32(II)Ljava/lang/String;

    move-result-object v8

    .line 427
    .local v8, "strItem":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    .line 428
    .local v10, "charSign":[C
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    .line 429
    .local v11, "charItem":[C
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 430
    .local v12, "sb":Ljava/lang/StringBuffer;
    sget-object v13, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "strTestSign = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " strItem = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    array-length v14, v7

    if-ge v13, v14, :cond_1

    .line 432
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v7, v13

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v10

    sub-int/2addr v15, v13

    add-int/lit8 v15, v15, -0x1

    aget-char v15, v10, v15
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v16, v2

    .end local v2    # "result":Ljava/lang/String;
    .local v16, "result":Ljava/lang/String;
    :try_start_1
    array-length v2, v11

    sub-int/2addr v2, v13

    add-int/lit8 v2, v2, -0x1

    aget-char v2, v11, v2

    .line 434
    invoke-direct {v1, v15, v2}, Lcom/sprd/validationtools/PhaseCheckParse;->StationTested(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    array-length v2, v7

    add-int/lit8 v2, v2, -0x1

    if-ge v13, v2, :cond_0

    .line 437
    const-string v2, "\n"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    :cond_0
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v16

    goto :goto_0

    .end local v16    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_1
    move-object/from16 v16, v2

    .line 440
    .end local v2    # "result":Ljava/lang/String;
    .end local v13    # "i":I
    .restart local v16    # "result":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 441
    .end local v16    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v0}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 442
    invoke-virtual {v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 446
    .end local v0    # "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v3    # "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v4    # "testSign":I
    .end local v5    # "item":I
    .end local v6    # "stationName":Ljava/lang/String;
    .end local v7    # "str":[Ljava/lang/String;
    .end local v8    # "strItem":Ljava/lang/String;
    .end local v9    # "strTestSign":Ljava/lang/String;
    .end local v10    # "charSign":[C
    .end local v11    # "charItem":[C
    .end local v12    # "sb":Ljava/lang/StringBuffer;
    goto :goto_2

    .line 443
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v2    # "result":Ljava/lang/String;
    .restart local v16    # "result":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_1

    .end local v16    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v16, v2

    .line 444
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    sget-object v3, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get phasecheck fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 447
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-object v2
.end method

.method public getPhaseCheckStationPass(I)Z
    .locals 16
    .param p1, "station"    # I

    move/from16 v1, p1

    .line 497
    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhaseCheckStationPass station="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    if-gez v1, :cond_0

    .line 499
    return v2

    .line 501
    :cond_0
    new-instance v0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    .line 502
    .local v0, "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    new-instance v4, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    invoke-direct {v4, v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v4

    .line 503
    .local v3, "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    move-object/from16 v4, p0

    :try_start_1
    iget-object v5, v4, Lcom/sprd/validationtools/PhaseCheckParse;->binder:Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v0, v3, v2}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->transact(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;I)V

    .line 505
    invoke-virtual {v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readInt()I

    move-result v5

    .line 506
    .local v5, "testSign":I
    invoke-virtual {v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readInt()I

    move-result v6

    .line 507
    .local v6, "item":I
    invoke-virtual {v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 508
    .local v7, "stationName":Ljava/lang/String;
    const-string v8, "|"

    invoke-static {v8}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 511
    .local v8, "str":[Ljava/lang/String;
    const/16 v9, 0x20

    invoke-static {v5, v9}, Lcom/sprd/validationtools/utils/ByteUtils;->intToBinary32(II)Ljava/lang/String;

    move-result-object v10

    .line 512
    .local v10, "strTestSign":Ljava/lang/String;
    invoke-static {v6, v9}, Lcom/sprd/validationtools/utils/ByteUtils;->intToBinary32(II)Ljava/lang/String;

    move-result-object v9

    .line 513
    .local v9, "strItem":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    .line 514
    .local v11, "charSign":[C
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    .line 516
    .local v12, "charItem":[C
    sget-object v13, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getPhaseCheckStationPass strTestSign = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " strItem = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    sget-object v13, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getPhaseCheckStationPass str.length="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v8

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    sget-object v13, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getPhaseCheckStationPass stationName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    array-length v13, v11

    if-lt v1, v13, :cond_1

    .line 520
    invoke-virtual {v0}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 521
    invoke-virtual {v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 522
    return v2

    .line 524
    :cond_1
    array-length v13, v11

    sub-int/2addr v13, v1

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    .line 525
    .local v13, "stationIndex":I
    array-length v15, v12

    sub-int/2addr v15, v1

    sub-int/2addr v15, v14

    .line 526
    .local v15, "charItemIndex":I
    sget-object v2, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPhaseCheckStationPass stationIndex = "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    sget-object v1, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPhaseCheckStationPass charItemIndex = "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    sget-object v1, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPhaseCheckStationPass charSign[stationIndex] = "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v14, v11, v13

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    sget-object v1, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPhaseCheckStationPass charItem[stationIndex] = "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v14, v12, v15

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    aget-char v1, v11, v13

    const/16 v2, 0x30

    if-ne v1, v2, :cond_2

    aget-char v1, v12, v15

    if-ne v1, v2, :cond_2

    .line 531
    sget-object v1, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    const-string v2, "getPhaseCheckStationPass station pass!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {v0}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 533
    invoke-virtual {v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 534
    const/4 v1, 0x1

    return v1

    .line 536
    :cond_2
    invoke-virtual {v0}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 537
    invoke-virtual {v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 540
    .end local v0    # "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v3    # "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v5    # "testSign":I
    .end local v6    # "item":I
    .end local v7    # "stationName":Ljava/lang/String;
    .end local v8    # "str":[Ljava/lang/String;
    .end local v9    # "strItem":Ljava/lang/String;
    .end local v10    # "strTestSign":Ljava/lang/String;
    .end local v11    # "charSign":[C
    .end local v12    # "charItem":[C
    .end local v13    # "stationIndex":I
    .end local v15    # "charItemIndex":I
    goto :goto_1

    .line 538
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v4, p0

    .line 539
    .local v0, "ex":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 541
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method public getPhaseCheckStationTested(I)Z
    .locals 16
    .param p1, "station"    # I

    move/from16 v1, p1

    .line 452
    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhaseCheckStationTested station="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    if-gez v1, :cond_0

    .line 454
    return v2

    .line 456
    :cond_0
    new-instance v0, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    .line 457
    .local v0, "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    new-instance v4, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    invoke-direct {v4, v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v4

    .line 458
    .local v3, "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    move-object/from16 v4, p0

    :try_start_1
    iget-object v5, v4, Lcom/sprd/validationtools/PhaseCheckParse;->binder:Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v0, v3, v2}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->transact(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;I)V

    .line 460
    invoke-virtual {v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readInt()I

    move-result v5

    .line 461
    .local v5, "testSign":I
    invoke-virtual {v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readInt()I

    move-result v6

    .line 462
    .local v6, "item":I
    invoke-virtual {v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 463
    .local v7, "stationName":Ljava/lang/String;
    const-string v8, "|"

    invoke-static {v8}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 466
    .local v8, "str":[Ljava/lang/String;
    const/16 v9, 0x20

    invoke-static {v5, v9}, Lcom/sprd/validationtools/utils/ByteUtils;->intToBinary32(II)Ljava/lang/String;

    move-result-object v10

    .line 467
    .local v10, "strTestSign":Ljava/lang/String;
    invoke-static {v6, v9}, Lcom/sprd/validationtools/utils/ByteUtils;->intToBinary32(II)Ljava/lang/String;

    move-result-object v9

    .line 468
    .local v9, "strItem":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    .line 470
    .local v11, "charSign":[C
    sget-object v12, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPhaseCheckStationTested strTestSign = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " strItem = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    sget-object v12, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPhaseCheckStationTested str.length="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    sget-object v12, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPhaseCheckStationTested stationName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    array-length v12, v8

    if-lt v1, v12, :cond_1

    .line 474
    invoke-virtual {v0}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 475
    invoke-virtual {v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 476
    return v2

    .line 478
    :cond_1
    array-length v12, v11

    sub-int/2addr v12, v1

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    .line 479
    .local v12, "stationIndex":I
    sget-object v14, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhaseCheckStationPass stationIndex = "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    sget-object v2, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getPhaseCheckStationPass charSign[stationIndex] = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-char v15, v11, v12

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    aget-char v2, v11, v12

    const/16 v14, 0x30

    if-ne v2, v14, :cond_2

    .line 482
    sget-object v2, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    const-string v14, "getPhaseCheckStationTested station tested!"

    invoke-static {v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {v0}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 484
    invoke-virtual {v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 485
    return v13

    .line 487
    :cond_2
    invoke-virtual {v0}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 488
    invoke-virtual {v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 491
    .end local v0    # "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v3    # "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v5    # "testSign":I
    .end local v6    # "item":I
    .end local v7    # "stationName":Ljava/lang/String;
    .end local v8    # "str":[Ljava/lang/String;
    .end local v9    # "strItem":Ljava/lang/String;
    .end local v10    # "strTestSign":Ljava/lang/String;
    .end local v11    # "charSign":[C
    .end local v12    # "stationIndex":I
    goto :goto_1

    .line 489
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v4, p0

    .line 490
    .local v0, "ex":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 492
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    const/4 v2, 0x0

    return v2
.end method

.method public getSn()Ljava/lang/String;
    .locals 8

    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    .line 110
    .local v1, "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    new-instance v3, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    invoke-direct {v3, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    move-object v2, v3

    .line 112
    .local v2, "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse;->binder:Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1, v2, v4}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->transact(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;I)V

    .line 113
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "sn1":Ljava/lang/String;
    iget-object v5, p0, Lcom/sprd/validationtools/PhaseCheckParse;->binder:Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v1, v2, v4}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->transact(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;I)V

    .line 116
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "sn2":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x18

    if-le v6, v7, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 118
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 120
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 121
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 122
    sget-object v4, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sn1 contains sn2 ,SN1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n SN2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SN1:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 129
    sget-object v4, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SN1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SN2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 131
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1    # "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v2    # "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v3    # "sn1":Ljava/lang/String;
    .end local v5    # "sn2":Ljava/lang/String;
    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get SN fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getSn2()Ljava/lang/String;
    .locals 8

    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    .line 144
    .local v1, "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    new-instance v3, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    invoke-direct {v3, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    move-object v2, v3

    .line 146
    .local v2, "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse;->binder:Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1, v2, v4}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->transact(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;I)V

    .line 147
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "sn1":Ljava/lang/String;
    iget-object v5, p0, Lcom/sprd/validationtools/PhaseCheckParse;->binder:Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v1, v2, v4}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->transact(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;I)V

    .line 150
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "sn2":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x18

    if-le v6, v7, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 152
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 154
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 155
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 156
    sget-object v4, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sn1 contains sn2 ,SN1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n SN2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CU REF:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 163
    sget-object v4, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SN1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SN2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 165
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1    # "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v2    # "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v3    # "sn1":Ljava/lang/String;
    .end local v5    # "sn2":Ljava/lang/String;
    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get CU fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getSnByIndex(I)Ljava/lang/String;
    .locals 8
    .param p1, "index"    # I

    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, "result":Ljava/lang/String;
    move v1, p1

    .line 179
    .local v1, "type_sn":I
    :try_start_0
    new-instance v2, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    .line 180
    .local v2, "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    new-instance v4, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    invoke-direct {v4, v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    move-object v3, v4

    .line 182
    .local v3, "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    sget-object v4, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSnByIndex type_sn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v4, ""

    .line 184
    .local v4, "sn":Ljava/lang/String;
    iget-object v5, p0, Lcom/sprd/validationtools/PhaseCheckParse;->binder:Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v2, v3, v6}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->transact(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;I)V

    .line 185
    invoke-virtual {v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 187
    sget-object v5, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SN"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    move-object v0, v4

    .line 189
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 190
    invoke-virtual {v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v1    # "type_sn":I
    .end local v2    # "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v3    # "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v4    # "sn":Ljava/lang/String;
    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get SN fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public isStationPass(Ljava/lang/String;)Z
    .locals 5
    .param p1, "stat"    # Ljava/lang/String;

    .line 554
    invoke-direct {p0, p1}, Lcom/sprd/validationtools/PhaseCheckParse;->getStationTest(Ljava/lang/String;)I

    move-result v0

    .line 555
    .local v0, "station":I
    sget-object v1, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isStationPass station = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 557
    const/4 v1, 0x0

    return v1

    .line 559
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/PhaseCheckParse;->getPhaseCheckStationPass(I)Z

    move-result v1

    .line 560
    .local v1, "result":Z
    sget-object v2, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isStationPass result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return v1
.end method

.method public isStationTest(Ljava/lang/String;)Z
    .locals 5
    .param p1, "stat"    # Ljava/lang/String;

    .line 544
    invoke-direct {p0, p1}, Lcom/sprd/validationtools/PhaseCheckParse;->getStationTest(Ljava/lang/String;)I

    move-result v0

    .line 545
    .local v0, "station":I
    sget-object v1, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isStationTest station = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 547
    const/4 v1, 0x0

    return v1

    .line 549
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/PhaseCheckParse;->getPhaseCheckStationTested(I)Z

    move-result v1

    .line 550
    .local v1, "result":Z
    sget-object v2, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isStationTest result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return v1
.end method

.method public readMiscdataOffsetByteArray(II)[B
    .locals 6
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 346
    const/4 v0, 0x0

    if-gtz p2, :cond_0

    .line 347
    sget-object v1, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    const-string v2, "Wrong count"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-object v0

    .line 350
    :cond_0
    new-array v1, p2, [B

    .line 352
    .local v1, "value":[B
    :try_start_0
    new-instance v2, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    invoke-direct {v2, v0}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    .line 353
    .local v2, "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    new-instance v3, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    invoke-direct {v3, v0}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    move-object v0, v3

    .line 355
    .local v0, "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    invoke-virtual {v2, p1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->writeInt(I)V

    .line 357
    invoke-virtual {v2, p2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->writeInt(I)V

    .line 358
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse;->binder:Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v0, v5}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->transact(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;I)V

    .line 359
    invoke-virtual {v0}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readInt()I

    .line 360
    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->readByteArray([B)V

    .line 361
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 362
    invoke-virtual {v0}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v0    # "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v2    # "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 368
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public writeChargeSwitch(I)Z
    .locals 5
    .param p1, "value"    # I

    .line 251
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    .line 252
    .local v1, "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    new-instance v3, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    invoke-direct {v3, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    move-object v2, v3

    .line 253
    .local v2, "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    invoke-virtual {v1, p1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->writeInt(I)V

    .line 254
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse;->binder:Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->transact(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;I)V

    .line 255
    invoke-virtual {v1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 256
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    const/4 v0, 0x1

    return v0

    .line 258
    .end local v1    # "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v2    # "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    :catch_0
    move-exception v1

    .line 259
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    const-string v3, "Exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    return v0
.end method

.method public writeLedlightSwitch(II)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "value"    # I

    .line 565
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    .line 566
    .local v1, "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    new-instance v3, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    invoke-direct {v3, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    move-object v2, v3

    .line 567
    .local v2, "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    sget-object v3, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeLedlightSwitch light code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-direct {p0, p1}, Lcom/sprd/validationtools/PhaseCheckParse;->logLedLight(I)V

    .line 570
    invoke-virtual {v1, p2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->writeInt(I)V

    .line 571
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse;->binder:Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;

    invoke-virtual {v3, p1, v1, v2, v0}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->transact(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;I)V

    .line 572
    invoke-virtual {v1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 573
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    const/4 v0, 0x1

    return v0

    .line 575
    .end local v1    # "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v2    # "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    :catch_0
    move-exception v1

    .line 576
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    const-string v3, "Exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 577
    return v0
.end method

.method public writeMiscdataOffsetByteArray(I[B)Z
    .locals 5
    .param p1, "offset"    # I
    .param p2, "value"    # [B

    .line 372
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    array-length v1, p2

    if-gtz v1, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    :try_start_0
    new-instance v1, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    .line 378
    .local v1, "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    new-instance v3, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    invoke-direct {v3, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    move-object v2, v3

    .line 379
    .local v2, "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    invoke-virtual {v1, p1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->writeInt(I)V

    .line 380
    array-length v3, p2

    invoke-virtual {v1, p2, v0, v3}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->writeByteArray([BII)V

    .line 381
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse;->binder:Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;

    const/16 v4, 0x11

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->transact(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;I)V

    .line 382
    invoke-virtual {v1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 383
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    const/4 v0, 0x1

    return v0

    .line 385
    .end local v1    # "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v2    # "reply":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    :catch_0
    move-exception v1

    .line 386
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 388
    return v0

    .line 373
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    sget-object v1, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    const-string v2, "Wrong value"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return v0
.end method

.method public writeStationFail(I)Z
    .locals 5
    .param p1, "station"    # I

    .line 321
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    .line 322
    .local v1, "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    new-instance v3, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    invoke-direct {v3, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    move-object v2, v3

    .line 323
    .local v2, "replay":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    invoke-virtual {v1, p1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->writeInt(I)V

    .line 324
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse;->binder:Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->transact(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;I)V

    .line 325
    invoke-virtual {v1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 326
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    const/4 v0, 0x1

    return v0

    .line 328
    .end local v1    # "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v2    # "replay":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    :catch_0
    move-exception v1

    .line 329
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 331
    return v0
.end method

.method public writeStationFail(Ljava/lang/String;)Z
    .locals 4
    .param p1, "station"    # Ljava/lang/String;

    .line 336
    invoke-direct {p0, p1}, Lcom/sprd/validationtools/PhaseCheckParse;->getStationTest(Ljava/lang/String;)I

    move-result v0

    .line 337
    .local v0, "stat":I
    sget-object v1, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 339
    const/4 v1, 0x0

    return v1

    .line 341
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/PhaseCheckParse;->writeStationFail(I)Z

    move-result v1

    return v1
.end method

.method public writeStationPass(I)Z
    .locals 5
    .param p1, "station"    # I

    .line 226
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    .line 227
    .local v1, "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    new-instance v3, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    invoke-direct {v3, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    move-object v2, v3

    .line 228
    .local v2, "replay":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    invoke-virtual {v1, p1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->writeInt(I)V

    .line 229
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse;->binder:Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->transact(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;I)V

    .line 230
    invoke-virtual {v1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 231
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    const/4 v0, 0x1

    return v0

    .line 233
    .end local v1    # "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v2    # "replay":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    :catch_0
    move-exception v1

    .line 234
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return v0
.end method

.method public writeStationPass(Ljava/lang/String;)Z
    .locals 4
    .param p1, "station"    # Ljava/lang/String;

    .line 240
    invoke-direct {p0, p1}, Lcom/sprd/validationtools/PhaseCheckParse;->getStationTest(Ljava/lang/String;)I

    move-result v0

    .line 241
    .local v0, "stat":I
    sget-object v1, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 243
    const/4 v1, 0x0

    return v1

    .line 245
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/PhaseCheckParse;->writeStationPass(I)Z

    move-result v1

    return v1
.end method

.method public writeStationTested(I)Z
    .locals 5
    .param p1, "station"    # I

    .line 201
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    .line 202
    .local v1, "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    new-instance v3, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;

    invoke-direct {v3, v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;-><init>(Lcom/sprd/validationtools/PhaseCheckParse$Parcel-IA;)V

    move-object v2, v3

    .line 203
    .local v2, "replay":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    invoke-virtual {v1, p1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->writeInt(I)V

    .line 204
    iget-object v3, p0, Lcom/sprd/validationtools/PhaseCheckParse;->binder:Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/sprd/validationtools/PhaseCheckParse$AdaptBinder;->transact(ILcom/sprd/validationtools/PhaseCheckParse$Parcel;Lcom/sprd/validationtools/PhaseCheckParse$Parcel;I)V

    .line 205
    invoke-virtual {v1}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V

    .line 206
    invoke-virtual {v2}, Lcom/sprd/validationtools/PhaseCheckParse$Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    const/4 v0, 0x1

    return v0

    .line 208
    .end local v1    # "data":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    .end local v2    # "replay":Lcom/sprd/validationtools/PhaseCheckParse$Parcel;
    :catch_0
    move-exception v1

    .line 209
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v0
.end method

.method public writeStationTested(Ljava/lang/String;)Z
    .locals 4
    .param p1, "station"    # Ljava/lang/String;

    .line 215
    invoke-direct {p0, p1}, Lcom/sprd/validationtools/PhaseCheckParse;->getStationTest(Ljava/lang/String;)I

    move-result v0

    .line 216
    .local v0, "stat":I
    sget-object v1, Lcom/sprd/validationtools/PhaseCheckParse;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 218
    const/4 v1, 0x0

    return v1

    .line 220
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/PhaseCheckParse;->writeStationTested(I)Z

    move-result v1

    return v1
.end method
