.class Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity$1;
.super Ljava/lang/Object;
.source "ProxSensorNoiseTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;

    .line 83
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;->-$$Nest$mcheckLightSensorNoise(Lcom/sprd/validationtools/itemstest/sensor/ProxSensorNoiseTestActivity;F)V

    .line 88
    return-void
.end method
