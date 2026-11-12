.class Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$1;
.super Ljava/lang/Object;
.source "GpsTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;

    .line 137
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;

    const v1, 0x7f090181

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 141
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;

    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->storeRusult(Z)V

    .line 142
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->finish()V

    .line 143
    return-void
.end method
