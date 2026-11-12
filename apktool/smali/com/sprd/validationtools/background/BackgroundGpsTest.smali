.class public Lcom/sprd/validationtools/background/BackgroundGpsTest;
.super Ljava/lang/Object;
.source "BackgroundGpsTest.java"

# interfaces
.implements Lcom/sprd/validationtools/background/BackgroundTest;


# static fields
.field private static final SATELLITE_COUNT_MIN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BackgroundGpsTest"

.field private static final TEST_CLASS_NAME:Ljava/lang/String;

.field private static final UPDATE_MIN_TIME:J = 0x3e8L


# instance fields
.field private locationListener:Landroid/location/LocationListener;

.field private mContext:Landroid/content/Context;

.field private mGnssStatus:Landroid/location/GnssStatus;

.field private mGnssStatusListener:Landroid/location/GnssStatus$Callback;

.field private manager:Landroid/location/LocationManager;

.field private testResult:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmGnssStatus(Lcom/sprd/validationtools/background/BackgroundGpsTest;)Landroid/location/GnssStatus;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->mGnssStatus:Landroid/location/GnssStatus;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmGnssStatus(Lcom/sprd/validationtools/background/BackgroundGpsTest;Landroid/location/GnssStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->mGnssStatus:Landroid/location/GnssStatus;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtestResult(Lcom/sprd/validationtools/background/BackgroundGpsTest;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->testResult:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->TEST_CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->locationListener:Landroid/location/LocationListener;

    .line 25
    iput-object v0, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->manager:Landroid/location/LocationManager;

    .line 28
    const/4 v1, -0x1

    iput v1, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->testResult:I

    .line 31
    iput-object v0, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->mContext:Landroid/content/Context;

    .line 36
    iput-object p1, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->testResult:I

    return v0
.end method

.method public getResultStr()Ljava/lang/String;
    .locals 3

    .line 117
    const-string v0, "GPS:"

    .line 118
    .local v0, "btResult":Ljava/lang/String;
    iget v1, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->testResult:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PASS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0
.end method

.method public getTestItem(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItem;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 134
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprd/validationtools/modules/UnitTestItemList;->getInstance(Landroid/content/Context;)Lcom/sprd/validationtools/modules/TestItemList;

    move-result-object v0

    sget-object v1, Lcom/sprd/validationtools/background/BackgroundGpsTest;->TEST_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/modules/TestItemList;->getTestItemByClassName(Ljava/lang/String;)Lcom/sprd/validationtools/modules/TestItem;

    move-result-object v0

    return-object v0
.end method

.method public getTestItemIdx()I
    .locals 1

    .line 129
    const/4 v0, -0x1

    return v0
.end method

.method public startTest()V
    .locals 8

    .line 41
    new-instance v0, Lcom/sprd/validationtools/background/BackgroundGpsTest$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/background/BackgroundGpsTest$1;-><init>(Lcom/sprd/validationtools/background/BackgroundGpsTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->locationListener:Landroid/location/LocationListener;

    .line 58
    new-instance v0, Lcom/sprd/validationtools/background/BackgroundGpsTest$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/background/BackgroundGpsTest$2;-><init>(Lcom/sprd/validationtools/background/BackgroundGpsTest;)V

    iput-object v0, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->mGnssStatusListener:Landroid/location/GnssStatus$Callback;

    .line 83
    const-string v0, "BackgroundGpsTest"

    const-string v1, "startTest begin!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->mContext:Landroid/content/Context;

    .line 85
    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->manager:Landroid/location/LocationManager;

    .line 86
    iget-object v1, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 86
    const-string v2, "gps"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 90
    :try_start_0
    const-string v1, "startTest requestLocationUpdates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v2, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->manager:Landroid/location/LocationManager;

    const-string v3, "gps"

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 93
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->manager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->mGnssStatusListener:Landroid/location/GnssStatus$Callback;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public stopTest()V
    .locals 2

    .line 101
    const-string v0, "BackgroundGpsTest"

    const-string v1, "stopTest!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->mGnssStatusListener:Landroid/location/GnssStatus$Callback;

    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->manager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    .line 106
    iget-object v1, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest;->manager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 108
    :cond_1
    return-void
.end method
