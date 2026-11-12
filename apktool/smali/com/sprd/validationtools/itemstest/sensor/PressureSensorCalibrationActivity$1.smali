.class Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$1;
.super Ljava/lang/Object;
.source "PressureSensorCalibrationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    .line 68
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->-$$Nest$fgetmDisplayText(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->-$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090109

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->access$000(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->access$100(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->-$$Nest$fgetmCurrentInputValue(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->-$$Nest$fgetmTipText(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->-$$Nest$mstartSensorCalibration(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)V

    .line 78
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;->-$$Nest$fgetmStartCalibration(Lcom/sprd/validationtools/itemstest/sensor/PressureSensorCalibrationActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 79
    return-void
.end method
