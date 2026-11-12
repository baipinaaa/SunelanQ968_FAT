.class public Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "GsensorTestActivity.java"


# static fields
.field private static final DATA_X:I = 0x0

.field private static final DATA_Y:I = 0x1

.field private static final DELAY_TIME:I = 0x12c

.field private static final SHOW_MSG:I = 0x1


# instance fields
.field private listener:Landroid/hardware/SensorEventListener;

.field private mDownTxt:Landroid/widget/TextView;

.field private mDxOk:Z

.field private mDyOk:Z

.field private mDzOk:Z

.field public mHandler:Landroid/os/Handler;

.field private mLeftTxt:Landroid/widget/TextView;

.field private mPassed:Z

.field private mRightTxt:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;

.field private mTimer:Ljava/util/Timer;

.field private mUpTxt:Landroid/widget/TextView;

.field private mValues:[F

.field private manager:Landroid/hardware/SensorManager;

.field private sensor:Landroid/hardware/Sensor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDxOk(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mDxOk:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDyOk(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mDyOk:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDzOk(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mDzOk:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextView(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmValues(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;)[F
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mValues:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDxOk(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mDxOk:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDyOk(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mDyOk:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDzOk(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mDzOk:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmValues(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;[F)V
    .locals 0

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mValues:[F

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowArrow(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->showArrow(FF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowMsg(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->showMsg(FFF)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->manager:Landroid/hardware/SensorManager;

    .line 41
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->sensor:Landroid/hardware/Sensor;

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mPassed:Z

    .line 46
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->listener:Landroid/hardware/SensorEventListener;

    .line 53
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mTextView:Landroid/widget/TextView;

    .line 54
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mHandler:Landroid/os/Handler;

    .line 83
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mDxOk:Z

    .line 84
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mDyOk:Z

    .line 85
    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mDzOk:Z

    return-void
.end method

.method private initSensor()V
    .locals 2

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mPassed:Z

    .line 150
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$3;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$3;-><init>(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->listener:Landroid/hardware/SensorEventListener;

    .line 173
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->manager:Landroid/hardware/SensorManager;

    .line 174
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->sensor:Landroid/hardware/Sensor;

    .line 175
    return-void
.end method

.method private showArrow(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, "arrowId":I
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    if-gtz v1, :cond_2

    .line 181
    cmpg-float v1, p2, v2

    if-gez v1, :cond_0

    .line 183
    const v0, 0x7f040003

    .line 184
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mUpTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 185
    :cond_0
    cmpl-float v1, p2, v2

    if-lez v1, :cond_1

    .line 187
    const/high16 v0, 0x7f040000

    .line 188
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mDownTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 189
    :cond_1
    goto :goto_0

    .line 193
    :cond_2
    cmpg-float v1, p1, v2

    if-gez v1, :cond_3

    .line 195
    const v0, 0x7f040002

    .line 196
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mRightTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 199
    :cond_3
    const v0, 0x7f040001

    .line 200
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mLeftTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 203
    :goto_0
    iget-boolean v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mPassed:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mUpTxt:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mDownTxt:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mLeftTxt:Landroid/widget/TextView;

    .line 204
    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mRightTxt:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 205
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mPassed:Z

    .line 206
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$4;

    invoke-direct {v2, p0}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$4;-><init>(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    :cond_4
    return-void
.end method

.method private showMsg(FFF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "text":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->sensor:Landroid/hardware/Sensor;

    const-string v2, "\n"

    if-eqz v1, :cond_0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chip id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " X = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Y = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Z = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 78
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 80
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 81
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V    :ts_oncreate

    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 93
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v0, 0x7f06002a

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->setContentView(I)V

    .line 95
    const v0, 0x7f090094

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->setTitle(I)V

    .line 96
    const v0, 0x7f0500e5

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mTextView:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0500f2

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mUpTxt:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0500ef

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mDownTxt:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0500f0

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mLeftTxt:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0500f1

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mRightTxt:Landroid/widget/TextView;

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->showMsg(FFF)V

    .line 102
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->initSensor()V

    .line 103
    return-void

    :te_oncreate
    .catch Ljava/lang/Throwable; {:ts_oncreate .. :te_oncreate} :ck_oncreate

    return-void

    :ck_oncreate
    return-void

.end method

.method protected onPause()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mTimer:Ljava/util/Timer;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->manager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->listener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 145
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 146
    return-void
.end method

.method protected onResume()V
    .locals 7

    .line 107
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 108
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->manager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->listener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->sensor:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 110
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mTimer:Ljava/util/Timer;

    .line 115
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->mTimer:Ljava/util/Timer;

    .line 116
    new-instance v2, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2;

    invoke-direct {v2, p0}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2;-><init>(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x12c

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 136
    return-void
.end method
