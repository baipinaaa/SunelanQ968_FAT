.class Lcom/sprd/validationtools/itemstest/sensor/GSensorCalibrationActivity$SensorCalibrationThread;
.super Ljava/lang/Thread;
.source "GSensorCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/sensor/GSensorCalibrationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorCalibrationThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sensor/GSensorCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/GSensorCalibrationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sensor/GSensorCalibrationActivity;

    .line 80
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/GSensorCalibrationActivity$SensorCalibrationThread;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GSensorCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GSensorCalibrationActivity$SensorCalibrationThread;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/GSensorCalibrationActivity;->-$$Nest$msensorCalibration(Lcom/sprd/validationtools/itemstest/sensor/GSensorCalibrationActivity;)V

    .line 83
    return-void
.end method
