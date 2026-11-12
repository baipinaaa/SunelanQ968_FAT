.class Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity$SensorCalibrationThread;
.super Ljava/lang/Thread;
.source "MSensorCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorCalibrationThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;

    .line 80
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity$SensorCalibrationThread;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity$SensorCalibrationThread;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->-$$Nest$msensorCalibration(Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;)V

    .line 83
    return-void
.end method
