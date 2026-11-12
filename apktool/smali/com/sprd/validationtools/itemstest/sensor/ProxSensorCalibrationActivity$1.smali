.class Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$1;
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

    .line 109
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->-$$Nest$fgetmAutoButton(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->-$$Nest$fgetmManualButton(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->-$$Nest$fgetmTestTips(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->-$$Nest$fgetmTestTips(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    invoke-virtual {v2}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090113

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->-$$Nest$fgetmProxHandler(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->-$$Nest$fgetmProxHandler(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    return-void
.end method
