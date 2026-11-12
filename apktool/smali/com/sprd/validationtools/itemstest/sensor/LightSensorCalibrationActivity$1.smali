.class Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$1;
.super Ljava/lang/Object;
.source "LightSensorCalibrationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    .line 52
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->-$$Nest$fgetmDisplayText(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->-$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->storeRusult(Z)V

    .line 58
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->finish()V

    .line 60
    :cond_0
    return-void
.end method
