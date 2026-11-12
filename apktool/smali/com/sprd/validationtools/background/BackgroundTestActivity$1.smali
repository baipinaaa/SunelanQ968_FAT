.class Lcom/sprd/validationtools/background/BackgroundTestActivity$1;
.super Ljava/lang/Object;
.source "BackgroundTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/background/BackgroundTestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/background/BackgroundTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/background/BackgroundTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/background/BackgroundTestActivity;

    .line 29
    iput-object p1, p0, Lcom/sprd/validationtools/background/BackgroundTestActivity$1;->this$0:Lcom/sprd/validationtools/background/BackgroundTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/sprd/validationtools/background/BackgroundTestActivity$1;->this$0:Lcom/sprd/validationtools/background/BackgroundTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/background/BackgroundTestActivity;->finish()V

    .line 34
    return-void
.end method
