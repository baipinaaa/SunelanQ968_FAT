.class Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$2;
.super Ljava/lang/Object;
.source "LightSensorCalibrationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 75
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->-$$Nest$fgetmDisplayText(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->-$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->-$$Nest$mstartSensorCalibration(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)V

    .line 81
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;->-$$Nest$fgetstartCalibration(Lcom/sprd/validationtools/itemstest/sensor/LightSensorCalibrationActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    return-void
.end method
