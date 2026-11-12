.class Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;
.super Ljava/lang/Object;
.source "ColorTemperatureTestActivty.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->showColorTemperatureInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

.field final synthetic val$g_tcs3430_als_ir1:Ljava/lang/String;

.field final synthetic val$g_tcs3430_als_x:Ljava/lang/String;

.field final synthetic val$g_tcs3430_als_y:Ljava/lang/String;

.field final synthetic val$g_tcs3430_als_z:Ljava/lang/String;

.field final synthetic val$tcs3430_als_ir1:Ljava/lang/String;

.field final synthetic val$tcs3430_als_x:Ljava/lang/String;

.field final synthetic val$tcs3430_als_y:Ljava/lang/String;

.field final synthetic val$tcs3430_als_z:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    .line 239
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    iput-object p2, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->val$g_tcs3430_als_x:Ljava/lang/String;

    iput-object p3, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->val$g_tcs3430_als_y:Ljava/lang/String;

    iput-object p4, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->val$g_tcs3430_als_z:Ljava/lang/String;

    iput-object p5, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->val$g_tcs3430_als_ir1:Ljava/lang/String;

    iput-object p6, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->val$tcs3430_als_x:Ljava/lang/String;

    iput-object p7, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->val$tcs3430_als_y:Ljava/lang/String;

    iput-object p8, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->val$tcs3430_als_z:Ljava/lang/String;

    iput-object p9, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->val$tcs3430_als_ir1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmGoldenxDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmGoldenxDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "golden_x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->val$g_tcs3430_als_x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmGoldenyDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmGoldenyDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "golden_y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->val$g_tcs3430_als_y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmGoldenzDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmGoldenzDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "golden_z: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->val$g_tcs3430_als_z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmGoldenirDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmGoldenirDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "golden_ir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->val$g_tcs3430_als_ir1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmUnitxDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 263
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmUnitxDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unit_x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->val$tcs3430_als_x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmUnityDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 266
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmUnityDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unit_y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->val$tcs3430_als_y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :cond_5
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmUnitzDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 269
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmUnitzDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unit_z: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->val$tcs3430_als_z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_6
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmUnitirDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 272
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmUnitirDataView(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unit_ir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$1;->val$tcs3430_als_ir1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :cond_7
    return-void
.end method
