.class Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler$2;
.super Ljava/lang/Object;
.source "ProxSensorCalibrationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;

    .line 237
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler$2;->this$1:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler$2;->this$1:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->access$000(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler$2;->this$1:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->-$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f090183

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 242
    return-void
.end method
