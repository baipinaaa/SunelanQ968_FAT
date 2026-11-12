.class public Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;
.super Lcom/sprd/validationtools/BaseActivity;
.source "ColorTemperatureTestActivty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorTemperatureTestActivty"

.field private static final tcs3430_als_ir1:Ljava/lang/String; = "/sys/devices/virtual/input/input5/tcs3430_als_ir1"

.field private static final tcs3430_als_x:Ljava/lang/String; = "/sys/devices/virtual/input/input5/tcs3430_als_x"

.field private static final tcs3430_als_y:Ljava/lang/String; = "/sys/devices/virtual/input/input5/tcs3430_als_y"

.field private static final tcs3430_als_z:Ljava/lang/String; = "/sys/devices/virtual/input/input5/tcs3430_als_z"

.field private static final tcs3430_calibration_file:Ljava/lang/String; = "/mnt/vendor/productinfo/tcs3430_calibration.txt"

.field private static final tcs3430_calibration_golden_file:Ljava/lang/String; = "/mnt/vendor/productinfo/tcs3430_calibration_golden.txt"


# instance fields
.field private g_mtcs3430_als_ir1:I

.field private g_mtcs3430_als_x:I

.field private g_mtcs3430_als_y:I

.field private g_mtcs3430_als_z:I

.field private mButtonStart:Landroid/widget/Button;

.field private mColorTemperatureAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mGoldenTitleView:Landroid/widget/TextView;

.field private mGoldenirDataView:Landroid/widget/TextView;

.field private mGoldenxDataView:Landroid/widget/TextView;

.field private mGoldenyDataView:Landroid/widget/TextView;

.field private mGoldenzDataView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mUnitTitleView:Landroid/widget/TextView;

.field private mUnitirDataView:Landroid/widget/TextView;

.field private mUnitxDataView:Landroid/widget/TextView;

.field private mUnityDataView:Landroid/widget/TextView;

.field private mUnitzDataView:Landroid/widget/TextView;

.field private mtcs3430_als_ir1:I

.field private mtcs3430_als_x:I

.field private mtcs3430_als_y:I

.field private mtcs3430_als_z:I


# direct methods
.method static bridge synthetic -$$Nest$fgetg_mtcs3430_als_ir1(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_ir1:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetg_mtcs3430_als_x(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_x:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetg_mtcs3430_als_y(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_y:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetg_mtcs3430_als_z(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_z:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmColorTemperatureAsyncTask(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/os/AsyncTask;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mColorTemperatureAsyncTask:Landroid/os/AsyncTask;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGoldenirDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mGoldenirDataView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGoldenxDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mGoldenxDataView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGoldenyDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mGoldenyDataView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGoldenzDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mGoldenzDataView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnitirDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mUnitirDataView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnitxDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mUnitxDataView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnityDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mUnityDataView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnitzDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mUnitzDataView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmtcs3430_als_ir1(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mtcs3430_als_ir1:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmtcs3430_als_x(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mtcs3430_als_x:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmtcs3430_als_y(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mtcs3430_als_y:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmtcs3430_als_z(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)I
    .locals 0

    iget p0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mtcs3430_als_z:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputg_mtcs3430_als_ir1(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_ir1:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputg_mtcs3430_als_x(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_x:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputg_mtcs3430_als_y(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_y:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputg_mtcs3430_als_z(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;I)V
    .locals 0

    iput p1, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_z:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmColorTemperatureAsyncTask(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;Landroid/os/AsyncTask;)V
    .locals 0

    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mColorTemperatureAsyncTask:Landroid/os/AsyncTask;

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadGoldenDataFromProdNV(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->loadGoldenDataFromProdNV()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreadColorTemperature(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)V
    .locals 0

    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->readColorTemperature()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveColorTemperatureInfo(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->saveColorTemperatureInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowColorTemperatureInfo(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->showColorTemperatureInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/sprd/validationtools/BaseActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mGoldenTitleView:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mGoldenxDataView:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mGoldenyDataView:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mGoldenzDataView:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mGoldenirDataView:Landroid/widget/TextView;

    .line 41
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mUnitTitleView:Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mUnitxDataView:Landroid/widget/TextView;

    .line 43
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mUnityDataView:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mUnitzDataView:Landroid/widget/TextView;

    .line 45
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mUnitirDataView:Landroid/widget/TextView;

    .line 47
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mButtonStart:Landroid/widget/Button;

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mtcs3430_als_x:I

    .line 57
    iput v1, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mtcs3430_als_y:I

    .line 58
    iput v1, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mtcs3430_als_z:I

    .line 59
    iput v1, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mtcs3430_als_ir1:I

    .line 63
    iput v1, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_x:I

    .line 64
    iput v1, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_y:I

    .line 65
    iput v1, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_z:I

    .line 66
    iput v1, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_ir1:I

    .line 68
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mHandler:Landroid/os/Handler;

    .line 279
    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mColorTemperatureAsyncTask:Landroid/os/AsyncTask;

    return-void
.end method

.method private initView()V
    .locals 2

    .line 344
    const v0, 0x7f050053

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mGoldenTitleView:Landroid/widget/TextView;

    .line 345
    const v0, 0x7f050104

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mGoldenxDataView:Landroid/widget/TextView;

    .line 346
    const v0, 0x7f050106

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mGoldenyDataView:Landroid/widget/TextView;

    .line 347
    const v0, 0x7f050108

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mGoldenzDataView:Landroid/widget/TextView;

    .line 348
    const v0, 0x7f05005a

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mGoldenirDataView:Landroid/widget/TextView;

    .line 350
    const v0, 0x7f0500fa

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mUnitTitleView:Landroid/widget/TextView;

    .line 351
    const v0, 0x7f050105

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mUnitxDataView:Landroid/widget/TextView;

    .line 352
    const v0, 0x7f050107

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mUnityDataView:Landroid/widget/TextView;

    .line 353
    const v0, 0x7f050109

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mUnitzDataView:Landroid/widget/TextView;

    .line 354
    const v0, 0x7f05005b

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mUnitirDataView:Landroid/widget/TextView;

    .line 356
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mUnitTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 357
    const-string v1, "Unit Data"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mGoldenTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 360
    const-string v1, "Golden Data"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :cond_1
    const v0, 0x7f05003f

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mButtonStart:Landroid/widget/Button;

    .line 364
    new-instance v1, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$2;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$2;-><init>(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    return-void
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method private loadGoldenDataFromProdNV()V
    .locals 10

    .line 142
    const-string v0, "ColorTemperatureTestActivty"

    const/4 v1, 0x0

    .line 143
    .local v1, "fIn":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 145
    .local v2, "buffreader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v3, "goldenDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/io/File;

    const-string v5, "/mnt/vendor/productinfo/tcs3430_calibration_golden.txt"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v4, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v5

    .line 148
    new-instance v5, Ljava/io/InputStreamReader;

    .line 149
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 151
    .local v5, "inputreader":Ljava/io/InputStreamReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v6

    .line 152
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 153
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 157
    .local v6, "length":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadGoldenDataFromProdNV length="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    const/4 v8, 0x4

    if-ge v6, v8, :cond_1

    .line 180
    nop

    .line 181
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 183
    nop

    .line 184
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    goto :goto_1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e2":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 159
    .end local v0    # "e2":Ljava/io/IOException;
    :goto_1
    return-void

    .line 161
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v6, :cond_6

    .line 162
    if-nez v8, :cond_2

    .line 163
    :try_start_2
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_x:I

    .line 164
    :cond_2
    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 165
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_y:I

    .line 166
    :cond_3
    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 167
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_z:I

    .line 168
    :cond_4
    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    .line 169
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_ir1:I

    .line 161
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 171
    .end local v8    # "i":I
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadGoldenDataFromProdNV g_mtcs3430_als_x="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_x:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",g_mtcs3430_als_y="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_y:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",g_mtcs3430_als_z="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_z:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",g_mtcs3430_als_ir1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_ir1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    .end local v3    # "goldenDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .end local v6    # "length":I
    .end local v7    # "line":Ljava/lang/String;
    nop

    .line 181
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 183
    nop

    .line 184
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 188
    :cond_7
    :goto_3
    goto :goto_4

    .line 186
    :catch_1
    move-exception v0

    .line 187
    .restart local v0    # "e2":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 189
    .end local v0    # "e2":Ljava/io/IOException;
    goto :goto_4

    .line 179
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 176
    :catch_2
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_8

    .line 181
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 183
    :cond_8
    if-eqz v2, :cond_7

    .line 184
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 190
    :goto_4
    return-void

    .line 180
    :goto_5
    if-eqz v1, :cond_9

    .line 181
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_6

    .line 186
    :catch_3
    move-exception v3

    goto :goto_7

    .line 183
    :cond_9
    :goto_6
    if-eqz v2, :cond_a

    .line 184
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_8

    .line 187
    .local v3, "e2":Ljava/io/IOException;
    :goto_7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 188
    .end local v3    # "e2":Ljava/io/IOException;
    :cond_a
    :goto_8
    nop

    .line 189
    :goto_9
    throw v0
.end method

.method private loadGoldenDataFromResources(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    const-string v0, "ColorTemperatureTestActivty"

    if-nez p1, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 117
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f010002

    .line 118
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "goldenDatas":[Ljava/lang/String;
    array-length v3, v2

    .line 120
    .local v3, "length":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadGoldenDataFromResources length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 122
    return-void

    .line 124
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_6

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",goldenDatas[i]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-nez v4, :cond_2

    .line 127
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_x:I

    .line 128
    :cond_2
    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 129
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_y:I

    .line 130
    :cond_3
    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 131
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_z:I

    .line 132
    :cond_4
    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 133
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->g_mtcs3430_als_ir1:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "goldenDatas":[Ljava/lang/String;
    .end local v3    # "length":I
    .end local v4    # "i":I
    :cond_6
    goto :goto_1

    .line 135
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private readColorTemperature()V
    .locals 2

    .line 334
    const-string v0, "/sys/devices/virtual/input/input5/tcs3430_als_x"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->getIntFromFile(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mtcs3430_als_x:I

    .line 335
    const-string v0, "/sys/devices/virtual/input/input5/tcs3430_als_y"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->getIntFromFile(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mtcs3430_als_y:I

    .line 336
    const-string v0, "/sys/devices/virtual/input/input5/tcs3430_als_z"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->getIntFromFile(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mtcs3430_als_z:I

    .line 337
    const-string v0, "/sys/devices/virtual/input/input5/tcs3430_als_ir1"

    invoke-static {v0}, Lcom/sprd/validationtools/utils/FileUtils;->getIntFromFile(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mtcs3430_als_ir1:I

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readColorTemperature mtcs3430_als_x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mtcs3430_als_x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mtcs3430_als_y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mtcs3430_als_y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mtcs3430_als_z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mtcs3430_als_z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mtcs3430_als_ir1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mtcs3430_als_ir1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorTemperatureTestActivty"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void
.end method

.method private saveColorTemperatureInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "g_mtcs3430_als_x"    # Ljava/lang/String;
    .param p2, "g_mtcs3430_als_y"    # Ljava/lang/String;
    .param p3, "g_mtcs3430_als_z"    # Ljava/lang/String;
    .param p4, "g_mtcs3430_als_ir1"    # Ljava/lang/String;
    .param p5, "mtcs3430_als_x"    # Ljava/lang/String;
    .param p6, "mtcs3430_als_y"    # Ljava/lang/String;
    .param p7, "mtcs3430_als_z"    # Ljava/lang/String;
    .param p8, "mtcs3430_als_ir1"    # Ljava/lang/String;

    .line 197
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 198
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    invoke-virtual {v0, p7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    invoke-virtual {v0, p8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "content":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveColorTemperatureInfo content="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ColorTemperatureTestActivty"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v1, "saveColorTemperatureInfo tcs3430_calibration_file=/mnt/vendor/productinfo/tcs3430_calibration.txt\n"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v1, "/mnt/vendor/productinfo/tcs3430_calibration.txt"

    invoke-static {v1, v2}, Lcom/sprd/validationtools/utils/FileUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method private saveaGoldendataToProdNV(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    const-string v0, "\n"

    const-string v1, "ColorTemperatureTestActivty"

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 73
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f010002

    .line 74
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "goldenDatas":[Ljava/lang/String;
    array-length v4, v3

    .line 76
    .local v4, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveaGoldendataToProdNV length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    const/4 v5, -0x1

    .local v5, "tg_mtcs3430_als_x":I
    const/4 v6, -0x1

    .local v6, "tg_mtcs3430_als_y":I
    const/4 v7, -0x1

    .local v7, "tg_mtcs3430_als_z":I
    const/4 v8, -0x1

    .line 81
    .local v8, "tg_mtcs3430_als_ir1":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v4, :cond_5

    .line 82
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "i="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",goldenDatas[i]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    if-nez v9, :cond_1

    .line 84
    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v5, v10

    .line 85
    :cond_1
    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 86
    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v6, v10

    .line 87
    :cond_2
    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 88
    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v7, v10

    .line 89
    :cond_3
    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    .line 90
    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v8, v10

    .line 81
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 92
    .end local v9    # "i":I
    :cond_5
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 93
    .local v9, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 96
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 102
    .local v10, "content":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "saveaGoldendataToProdNV content="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v0, "saveaGoldendataToProdNV tcs3430_calibration_golden_file=/mnt/vendor/productinfo/tcs3430_calibration_golden.txt\n"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v0, "/mnt/vendor/productinfo/tcs3430_calibration_golden.txt"

    invoke-static {v0, v10}, Lcom/sprd/validationtools/utils/FileUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "goldenDatas":[Ljava/lang/String;
    .end local v4    # "length":I
    .end local v5    # "tg_mtcs3430_als_x":I
    .end local v6    # "tg_mtcs3430_als_y":I
    .end local v7    # "tg_mtcs3430_als_z":I
    .end local v8    # "tg_mtcs3430_als_ir1":I
    .end local v9    # "buffer":Ljava/lang/StringBuffer;
    .end local v10    # "content":Ljava/lang/String;
    goto :goto_1

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private showColorTemperatureInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "g_mtcs3430_als_x"    # Ljava/lang/String;
    .param p2, "g_mtcs3430_als_y"    # Ljava/lang/String;
    .param p3, "g_mtcs3430_als_z"    # Ljava/lang/String;
    .param p4, "g_mtcs3430_als_ir1"    # Ljava/lang/String;
    .param p5, "mtcs3430_als_x"    # Ljava/lang/String;
    .param p6, "mtcs3430_als_y"    # Ljava/lang/String;
    .param p7, "mtcs3430_als_z"    # Ljava/lang/String;
    .param p8, "mtcs3430_als_ir1"    # Ljava/lang/String;

    .line 228
    move-object/from16 v6, p5

    .line 229
    .local v6, "tcs3430_als_x":Ljava/lang/String;
    move-object/from16 v7, p6

    .line 230
    .local v7, "tcs3430_als_y":Ljava/lang/String;
    move-object/from16 v8, p7

    .line 231
    .local v8, "tcs3430_als_z":Ljava/lang/String;
    move-object/from16 v9, p8

    .line 233
    .local v9, "tcs3430_als_ir1":Ljava/lang/String;
    move-object v2, p1

    .line 234
    .local v2, "g_tcs3430_als_x":Ljava/lang/String;
    move-object v3, p2

    .line 235
    .local v3, "g_tcs3430_als_y":Ljava/lang/String;
    move-object/from16 v4, p3

    .line 236
    .local v4, "g_tcs3430_als_z":Ljava/lang/String;
    move-object/from16 v5, p4

    .line 238
    .local v5, "g_tcs3430_als_ir1":Ljava/lang/String;
    move-object v10, p0

    iget-object v11, v10, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->mHandler:Landroid/os/Handler;

    if-eqz v11, :cond_0

    .line 239
    new-instance v12, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;-><init>(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 378
    invoke-super {p0, p1}, Lcom/sprd/validationtools/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 379
    const-string v0, "ColorTemperatureTestActivty"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->setContentView(I)V

    .line 381
    invoke-direct {p0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->initView()V

    .line 382
    return-void
.end method
