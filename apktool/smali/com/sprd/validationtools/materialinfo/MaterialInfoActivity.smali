.class public Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;
.super Landroid/app/Activity;
.source "MaterialInfoActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MaterialInfoActivity"

.field private static final initMaterialList:[Ljava/lang/String;


# instance fields
.field emmcNodePath:Ljava/lang/String;

.field private mCamera:Landroid/widget/TextView;

.field private mCameraInfo:Landroid/widget/TextView;

.field private mDisplay:Landroid/widget/TextView;

.field private mDisplayInfo:Landroid/widget/TextView;

.field private mEmmc:Landroid/widget/TextView;

.field private mEmmcInfo:Landroid/widget/TextView;

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTp:Landroid/widget/TextView;

.field private mTpInfo:Landroid/widget/TextView;

.field tp1NodePath:Ljava/lang/String;

.field tp2NodePath:Ljava/lang/String;

.field tpNodePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    const-string v0, "camera"

    const-string v1, "emmc"

    const-string v2, "display"

    const-string v3, "tp1"

    const-string v4, "tp2"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->initMaterialList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const-string v0, "/sys/block/mmcblk0/device/name"

    iput-object v0, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->emmcNodePath:Ljava/lang/String;

    .line 20
    const-string v0, "/sys/class/i2c-adapter/i2c-3/3-0038/name"

    iput-object v0, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->tp1NodePath:Ljava/lang/String;

    .line 21
    const-string v0, "/sys/class/i2c-adapter/i2c-3/3-002e/name"

    iput-object v0, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->tp2NodePath:Ljava/lang/String;

    .line 22
    const-string v0, "/sys/touchscreen/name"

    iput-object v0, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->tpNodePath:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->initMaterialList:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->mKeys:Ljava/util/List;

    return-void
.end method

.method private read(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "nodePath"    # Ljava/lang/String;

    .line 62
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 63
    .local v0, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v1, "contentBuilder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .local v2, "contentMsg":Ljava/lang/String;
    return-object v2

    .line 73
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local v1    # "contentBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "contentMsg":Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 71
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 75
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    nop

    .line 76
    :goto_1
    const-string v0, "unknown"

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f060020

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->setContentView(I)V

    .line 36
    const v0, 0x7f050038

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->mCamera:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f050039

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->mCameraInfo:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->mCamera:Landroid/widget/TextView;

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->mCameraInfo:Landroid/widget/TextView;

    const-string v1, "vendor.cam.sensor.info"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const v0, 0x7f05004a

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->mEmmc:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f05004b

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->mEmmcInfo:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->mEmmc:Landroid/widget/TextView;

    const-string v1, "Emmc"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->mEmmcInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->emmcNodePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const v0, 0x7f050048

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->mDisplay:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f050049

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->mDisplayInfo:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->mDisplay:Landroid/widget/TextView;

    const-string v1, "Display"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->mDisplayInfo:Landroid/widget/TextView;

    const-string v1, "ro.boot.lcd_name"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v0, 0x7f0500c9

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->mTp:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0500ca

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->mTpInfo:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->mTp:Landroid/widget/TextView;

    const-string v1, "Tp"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->mTpInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->tpNodePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sprd/validationtools/materialinfo/MaterialInfoActivity;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 92
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 83
    return-void
.end method
