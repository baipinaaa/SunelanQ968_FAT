.class Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$4;
.super Ljava/lang/Object;
.source "SpwCameraTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    .line 136
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;->-$$Nest$mcaptureStillPicture(Lcom/sprd/validationtools/itemstest/camera/SpwCameraTestActivity;)V

    .line 140
    return-void
.end method
