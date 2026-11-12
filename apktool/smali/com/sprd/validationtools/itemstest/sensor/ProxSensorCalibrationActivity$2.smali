.class Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$2;
.super Ljava/lang/Object;
.source "ProxSensorCalibrationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    .line 119
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->-$$Nest$fgetmAutoButton(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->-$$Nest$fgetmManualButton(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->-$$Nest$fgetmTestTips(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->-$$Nest$mshowTipsDialog(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;I)V

    .line 125
    return-void
.end method
