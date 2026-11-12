.class public Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "GpsTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask;
    }
.end annotation


# static fields
.field public static final EXTRA_SET_FACTORY_SET_GPS_RESULT:Ljava/lang/String; = "EXTRA_SET_FACTORY_SET_GPS_RESULT"

.field private static final GPSSET_CLASS_NAME:Ljava/lang/String; = "com.android.settings.Settings$LocationSettingsActivity"

.field private static final GPSSET_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field public static final GPS_SATELLITE_COUNT_NAME:Ljava/lang/String; = "gpsSatelliteCount"

.field public static final GPS_TEST_FLAG_NAME:Ljava/lang/String; = "gpsTestFlag"

.field public static final INTENT_EXTRA_KEY_GPS_SEARCH_STAR_COUNT:Ljava/lang/String; = "intentExtraGpsSearchStarCount"

.field private static final PROVIDER:Ljava/lang/String; = "gps"

.field private static final RESULT_FAILURE:B = 0x0t

.field private static final RESULT_SUCCESS:B = 0x1t

.field private static final SATELLITE_COUNT_MIN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GpsTestActivity"

.field private static final TIME_LENGTH:I = 0x3e8

.field private static final UPDATE_MIN_TIME:J = 0x3e8L


# instance fields
.field private btnShow:Landroid/widget/Button;

.field private locationListener:Landroid/location/LocationListener;

.field private mGnssStatus:Landroid/location/GnssStatus;

.field private mGnssStatusListener:Landroid/location/GnssStatus$Callback;

.field public mHandler:Landroid/os/Handler;

.field private mR:Ljava/lang/Runnable;

.field private mSatelliteCount:I

.field private mSatelliteInfo:Landroid/widget/TextView;

.field private manager:Landroid/location/LocationManager;

.field private timeCount:I

.field private timer:Ljava/util/Timer;

.field private txtGpsMsg:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgettimeCount(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->timeCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmGnssStatus(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;Landroid/location/GnssStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mGnssStatus:Landroid/location/GnssStatus;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtimeCount(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->timeCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowGpsMsg(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->showGpsMsg()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSatelliteCount(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->showSatelliteCount()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->manager:Landroid/location/LocationManager;

    .line 83
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->locationListener:Landroid/location/LocationListener;

    .line 88
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->txtGpsMsg:Landroid/widget/TextView;

    .line 93
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->btnShow:Landroid/widget/Button;

    .line 98
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->timer:Ljava/util/Timer;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->timeCount:I

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mR:Ljava/lang/Runnable;

    return-void
.end method

.method private cancelTimer()V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->timer:Ljava/util/Timer;

    .line 331
    :cond_0
    return-void
.end method

.method private isGpsEnabled()Z
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->manager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 246
    const/4 v0, 0x0

    return v0

    .line 248
    :cond_0
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 335
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 336
    .local v0, "mgr":Landroid/location/LocationManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 337
    return v1

    .line 339
    :cond_0
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    .line 340
    .local v2, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 341
    return v1

    .line 343
    :cond_1
    const-string v1, "gps"

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private showGpsMsg()V
    .locals 2

    .line 252
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->isGpsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->txtGpsMsg:Landroid/widget/TextView;

    const v1, 0x7f090087

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->txtGpsMsg:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :goto_0
    return-void
.end method

.method private showSatelliteCount()V
    .locals 10

    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, "flag":Z
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mGnssStatus:Landroid/location/GnssStatus;

    if-nez v1, :cond_0

    .line 269
    return-void

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mSatelliteInfo:Landroid/widget/TextView;

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mGnssStatus:Landroid/location/GnssStatus;

    invoke-virtual {v1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v1

    .line 274
    .local v1, "length":I
    const/4 v3, 0x0

    .line 277
    .local v3, "svCount":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GpsTestActivity"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_0
    if-ge v3, v1, :cond_2

    .line 279
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mGnssStatus:Landroid/location/GnssStatus;

    invoke-virtual {v4, v3}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result v4

    .line 280
    .local v4, "svid":I
    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mGnssStatus:Landroid/location/GnssStatus;

    invoke-virtual {v5, v3}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v5

    .line 281
    .local v5, "cn0DbHz":F
    add-int/lit8 v3, v3, 0x1

    .line 282
    float-to-double v6, v5

    const-wide v8, 0x4041800000000000L    # 35.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 283
    const/4 v0, 0x1

    .line 284
    :cond_1
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mSatelliteInfo:Landroid/widget/TextView;

    const-string v7, "id: "

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mSatelliteInfo:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mSatelliteInfo:Landroid/widget/TextView;

    const-string v7, "\nsnr: "

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mSatelliteInfo:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mSatelliteInfo:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 291
    .end local v4    # "svid":I
    .end local v5    # "cn0DbHz":F
    :cond_2
    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    if-eqz v0, :cond_3

    .line 292
    const v2, 0x7f090183

    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 293
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 294
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->storeRusult(Z)V

    .line 295
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->finish()V

    .line 298
    :cond_3
    iget v2, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mSatelliteCount:I

    if-le v1, v2, :cond_4

    .line 299
    iput v1, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mSatelliteCount:I

    .line 302
    :cond_4
    const v2, 0x7f0500e0

    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 303
    .local v2, "txtCount":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mSatelliteCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    return-void
.end method

.method private startTimer()V
    .locals 6

    .line 322
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->timer:Ljava/util/Timer;

    .line 323
    new-instance v1, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask;-><init>(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask-IA;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 324
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 262
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mR:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onClick(Landroid/view/View;)V

    .line 150
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 154
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->removeButton()V

    .line 156
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sprd/validationtools/BaseActivity;->createButton(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 159
    const v0, 0x7f060018

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->setContentView(I)V

    .line 160
    const v0, 0x7f09008e

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->setTitle(I)V

    .line 161
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 162
    const v0, 0x7f0500df

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->txtGpsMsg:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f0500e1

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mSatelliteInfo:Landroid/widget/TextView;

    .line 164
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mR:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mR:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 242
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 178
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->cancelTimer()V

    .line 179
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 180
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 170
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 171
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->startTimer()V

    .line 172
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->showGpsMsg()V

    .line 173
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->showSatelliteCount()V

    .line 174
    return-void
.end method

.method public onStart()V
    .locals 9

    .line 184
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onStart()V

    .line 185
    new-instance v0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$2;-><init>(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->locationListener:Landroid/location/LocationListener;

    .line 201
    const-string v0, "GpsTestActivity"

    const-string v1, "startTest begin!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->manager:Landroid/location/LocationManager;

    .line 203
    const v0, 0x7f090090

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->setTitle(I)V

    .line 204
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 207
    :try_start_0
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->manager:Landroid/location/LocationManager;

    const-string v4, "gps"

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    const v1, 0x7f090088

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$3;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$3;-><init>(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mGnssStatusListener:Landroid/location/GnssStatus$Callback;

    .line 222
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->manager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;)Z

    .line 223
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 227
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 229
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->mGnssStatusListener:Landroid/location/GnssStatus$Callback;

    if-eqz v0, :cond_0

    .line 230
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->manager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    .line 233
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->manager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 235
    :cond_1
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onStop()V

    .line 236
    return-void
.end method
