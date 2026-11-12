.class Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$1;
.super Ljava/lang/Object;
.source "MagneticTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    .line 61
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetxPass(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Z

    move-result v0

    const-string v1, "MagneticTestActivity"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetyPass(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetzPass(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    const-string v0, "mFailRunnable test fail finish!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090181

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-virtual {v0, v2}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->storeRusult(Z)V

    .line 71
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->finish()V

    .line 72
    return-void

    .line 64
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFailRunnable already success xPass="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetxPass(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",yPass="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetyPass(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",zPass="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;->-$$Nest$fgetzPass(Lcom/sprd/validationtools/itemstest/sensor/MagneticTestActivity;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method
