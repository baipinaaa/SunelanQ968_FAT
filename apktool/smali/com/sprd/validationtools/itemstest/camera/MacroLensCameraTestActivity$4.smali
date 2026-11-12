.class Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$4;
.super Ljava/lang/Object;
.source "MacroLensCameraTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    .line 125
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;->-$$Nest$mcaptureStillPicture(Lcom/sprd/validationtools/itemstest/camera/MacroLensCameraTestActivity;)V

    .line 129
    return-void
.end method
