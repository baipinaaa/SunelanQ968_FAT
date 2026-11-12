.class public Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;
.super Lcom/sprd/validationtools/BaseActivity;
.source "CompassTestActivity.java"


# static fields
.field private static final FULL_DEGREES:F = 360.0f


# instance fields
.field private mBackground:Landroid/graphics/Bitmap;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mMListener:Landroid/hardware/SensorEventListener;

.field private mMSensor:Landroid/hardware/Sensor;

.field private mManager:Landroid/hardware/SensorManager;

.field private mOListener:Landroid/hardware/SensorEventListener;

.field private mOSensor:Landroid/hardware/Sensor;

.field private mPointer:Landroid/graphics/Bitmap;


# direct methods
.method static bridge synthetic -$$Nest$mdraw(Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->draw(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowInfo(Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->showInfo(FFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowOrien(Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->showOrien(F)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    return-void
.end method

.method private draw(F)V
    .locals 7
    .param p1, "value"    # F

    .line 135
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 136
    .local v0, "matrix":Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 137
    .local v1, "paint":Landroid/graphics/Paint;
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mPointer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 138
    .local v2, "width":F
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mPointer:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 139
    .local v4, "height":F
    const/high16 v3, 0x43b40000    # 360.0f

    sub-float/2addr v3, p1

    invoke-virtual {v0, v3, v2, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 141
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mBackground:Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v3, v5, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 142
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mPointer:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v5, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 143
    const v3, 0x7f050075

    invoke-virtual {p0, v3}, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 144
    .local v3, "view":Landroid/view/View;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    return-void
.end method

.method private initDrawer()V
    .locals 4

    .line 111
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f04000c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mBackground:Landroid/graphics/Bitmap;

    .line 112
    invoke-virtual {p0}, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f04000d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mPointer:Landroid/graphics/Bitmap;

    .line 113
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 114
    .local v0, "width":I
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mPointer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 115
    .local v1, "height":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 116
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mCanvas:Landroid/graphics/Canvas;

    .line 117
    return-void
.end method

.method private initSensor()V
    .locals 2

    .line 83
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mManager:Landroid/hardware/SensorManager;

    .line 84
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mOSensor:Landroid/hardware/Sensor;

    .line 85
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity$1;-><init>(Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mOListener:Landroid/hardware/SensorEventListener;

    .line 96
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mMSensor:Landroid/hardware/Sensor;

    .line 97
    new-instance v0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity$2;-><init>(Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;)V

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mMListener:Landroid/hardware/SensorEventListener;

    .line 108
    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method private showInfo(FFF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 120
    const v0, 0x7f0500e8

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    .local v0, "view":Landroid/widget/TextView;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mMSensor:Landroid/hardware/Sensor;

    const-string v2, "\n"

    if-eqz v1, :cond_0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chip id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mMSensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 124
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

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 125
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

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 126
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

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 127
    return-void
.end method

.method private showOrien(F)V
    .locals 3
    .param p1, "x"    # F

    .line 130
    const v0, 0x7f0500e7

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 131
    .local v0, "view":Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0900f0

    invoke-virtual {p0, v2}, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 50
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f060031

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->setContentView(I)V

    .line 52
    const v0, 0x7f0900ee

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->setTitle(I)V

    .line 53
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->initDrawer()V

    .line 54
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->initSensor()V

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->showInfo(FFF)V

    .line 56
    invoke-direct {p0, v0}, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->draw(F)V

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 76
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mPointer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 77
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mCanvas:Landroid/graphics/Canvas;

    .line 79
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onDestroy()V

    .line 80
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mOListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 69
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mMListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 70
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onPause()V

    .line 71
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 61
    invoke-super {p0}, Lcom/sprd/validationtools/BaseActivity;->onResume()V

    .line 62
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mOListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mOSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 63
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mMListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/CompassTestActivity;->mMSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 64
    return-void
.end method
