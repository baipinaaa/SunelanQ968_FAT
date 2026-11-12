.class Lcom/sprd/validationtools/background/BackgroundGpsTest$2;
.super Landroid/location/GnssStatus$Callback;
.source "BackgroundGpsTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/background/BackgroundGpsTest;->startTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/background/BackgroundGpsTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/background/BackgroundGpsTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/background/BackgroundGpsTest;

    .line 58
    iput-object p1, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest$2;->this$0:Lcom/sprd/validationtools/background/BackgroundGpsTest;

    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 8
    .param p1, "status"    # Landroid/location/GnssStatus;

    .line 62
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest$2;->this$0:Lcom/sprd/validationtools/background/BackgroundGpsTest;

    invoke-static {v0, p1}, Lcom/sprd/validationtools/background/BackgroundGpsTest;->-$$Nest$fputmGnssStatus(Lcom/sprd/validationtools/background/BackgroundGpsTest;Landroid/location/GnssStatus;)V

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "flag":Z
    iget-object v1, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest$2;->this$0:Lcom/sprd/validationtools/background/BackgroundGpsTest;

    invoke-static {v1}, Lcom/sprd/validationtools/background/BackgroundGpsTest;->-$$Nest$fgetmGnssStatus(Lcom/sprd/validationtools/background/BackgroundGpsTest;)Landroid/location/GnssStatus;

    move-result-object v1

    if-nez v1, :cond_0

    .line 65
    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest$2;->this$0:Lcom/sprd/validationtools/background/BackgroundGpsTest;

    invoke-static {v1}, Lcom/sprd/validationtools/background/BackgroundGpsTest;->-$$Nest$fgetmGnssStatus(Lcom/sprd/validationtools/background/BackgroundGpsTest;)Landroid/location/GnssStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v1

    .line 68
    .local v1, "length":I
    const/4 v2, 0x0

    .line 70
    .local v2, "svCount":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackgroundGpsTest"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    :goto_0
    if-ge v2, v1, :cond_2

    .line 72
    iget-object v3, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest$2;->this$0:Lcom/sprd/validationtools/background/BackgroundGpsTest;

    invoke-static {v3}, Lcom/sprd/validationtools/background/BackgroundGpsTest;->-$$Nest$fgetmGnssStatus(Lcom/sprd/validationtools/background/BackgroundGpsTest;)Landroid/location/GnssStatus;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v3

    .line 73
    .local v3, "cn0DbHz":F
    add-int/lit8 v2, v2, 0x1

    .line 74
    float-to-double v4, v3

    const-wide v6, 0x4041800000000000L    # 35.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    .line 77
    .end local v3    # "cn0DbHz":F
    :cond_2
    const/4 v3, 0x4

    if-lt v1, v3, :cond_3

    if-eqz v0, :cond_3

    .line 78
    iget-object v3, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest$2;->this$0:Lcom/sprd/validationtools/background/BackgroundGpsTest;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sprd/validationtools/background/BackgroundGpsTest;->-$$Nest$fputtestResult(Lcom/sprd/validationtools/background/BackgroundGpsTest;I)V

    .line 79
    iget-object v3, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest$2;->this$0:Lcom/sprd/validationtools/background/BackgroundGpsTest;

    invoke-virtual {v3}, Lcom/sprd/validationtools/background/BackgroundGpsTest;->stopTest()V

    .line 81
    :cond_3
    return-void
.end method
