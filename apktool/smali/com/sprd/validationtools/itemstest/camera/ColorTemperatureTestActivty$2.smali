.class Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$2;
.super Ljava/lang/Object;
.source "ColorTemperatureTestActivty.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    .line 364
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$2;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 369
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$2;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    new-instance v1, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$2;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-direct {v1, v2}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$ColorTemperatureAsyncTask;-><init>(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)V

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fputmColorTemperatureAsyncTask(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;Landroid/os/AsyncTask;)V

    .line 370
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty$2;->this$0:Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;->-$$Nest$fgetmColorTemperatureAsyncTask(Lcom/sprd/validationtools/itemstest/camera/ColorTemperatureTestActivty;)Landroid/os/AsyncTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 372
    return-void
.end method
