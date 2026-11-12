.class Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2$1;
.super Ljava/lang/Object;
.source "GsensorTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2;

    .line 119
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2$1;->this$1:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2$1;->this$1:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->-$$Nest$fgetmValues(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;)[F

    move-result-object v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2$1;->this$1:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->-$$Nest$fgetmValues(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 123
    .local v0, "x":F
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2$1;->this$1:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->-$$Nest$fgetmValues(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;)[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 124
    .local v1, "y":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 127
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 128
    const/4 v1, 0x0

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2$1;->this$1:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    invoke-static {v2, v0, v1}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->-$$Nest$mshowArrow(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;FF)V

    .line 132
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_2
    return-void
.end method
