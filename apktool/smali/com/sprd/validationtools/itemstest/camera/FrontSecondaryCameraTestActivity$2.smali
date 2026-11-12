.class Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$2;
.super Ljava/lang/Object;
.source "FrontSecondaryCameraTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;

    .line 90
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;->storeRusult(Z)V

    .line 93
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;->finish()V

    .line 94
    return-void
.end method
