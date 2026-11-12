.class Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity$2$1;
.super Ljava/lang/Object;
.source "MSensorCalibrationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity$2;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity$2;

    .line 117
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity$2$1;->this$1:Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity$2$1;->this$1:Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity$2;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;->-$$Nest$mgetResult(Lcom/sprd/validationtools/itemstest/sensor/MSensorCalibrationActivity;)V

    .line 120
    return-void
.end method
