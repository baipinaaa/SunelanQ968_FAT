.class Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$2;
.super Ljava/lang/Object;
.source "FrontCameraTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    .line 95
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->storeRusult(Z)V

    .line 98
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/camera/FrontCameraTestActivity;->finish()V

    .line 99
    return-void
.end method
