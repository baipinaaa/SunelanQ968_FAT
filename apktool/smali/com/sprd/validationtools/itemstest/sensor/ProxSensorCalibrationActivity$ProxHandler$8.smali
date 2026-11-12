.class Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler$8;
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

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;

    .line 316
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler$8;->this$1:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;

    iput-object p2, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler$8;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler$8;->this$1:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->-$$Nest$fgetmTestTips(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler$8;->val$str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    return-void
.end method
