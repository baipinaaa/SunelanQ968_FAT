.class Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity$SensorCalibrationThread;
.super Ljava/lang/Thread;
.source "ASensorCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorCalibrationThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;

    .line 79
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity$SensorCalibrationThread;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity$SensorCalibrationThread;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;->-$$Nest$msensorCalibration(Lcom/sprd/validationtools/itemstest/sensor/ASensorCalibrationActivity;)V

    .line 82
    return-void
.end method
