.class Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$3;
.super Ljava/lang/Object;
.source "ProxSensorCalibrationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->showTipsDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

.field final synthetic val$step:I


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    .line 167
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    iput p2, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$3;->val$step:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 171
    iget v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$3;->val$step:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->-$$Nest$fgetmProxHandler(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->-$$Nest$fgetmProxHandler(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;

    move-result-object v1

    const/4 v2, 0x3

    .line 173
    invoke-virtual {v1, v2}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->-$$Nest$fgetmProxHandler(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;->-$$Nest$fgetmProxHandler(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity;)Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;

    move-result-object v1

    const/4 v2, 0x6

    .line 176
    invoke-virtual {v1, v2}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorCalibrationActivity$ProxHandler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    :goto_0
    return-void
.end method
