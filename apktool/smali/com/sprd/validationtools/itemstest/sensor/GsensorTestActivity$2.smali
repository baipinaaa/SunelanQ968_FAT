.class Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2;
.super Ljava/util/TimerTask;
.source "GsensorTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->onResume()V
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

    .line 116
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    new-instance v1, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2$1;-><init>(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method
