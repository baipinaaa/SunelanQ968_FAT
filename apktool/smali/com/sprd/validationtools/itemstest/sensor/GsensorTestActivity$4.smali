.class Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$4;
.super Ljava/lang/Object;
.source "GsensorTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->showArrow(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    .line 206
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$4;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$4;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    const v1, 0x7f090183

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 211
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$4;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->storeRusult(Z)V

    .line 212
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$4;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->finish()V

    .line 213
    return-void
.end method
