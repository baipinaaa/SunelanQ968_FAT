.class Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$4;
.super Ljava/lang/Object;
.source "FrontSecondaryCameraTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 140
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;->-$$Nest$mcaptureStillPicture(Lcom/sprd/validationtools/itemstest/camera/FrontSecondaryCameraTestActivity;)V

    .line 144
    return-void
.end method
