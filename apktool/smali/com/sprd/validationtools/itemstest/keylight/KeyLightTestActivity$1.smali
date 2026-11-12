.class Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity$1;
.super Ljava/lang/Object;
.source "KeyLightTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;

    .line 46
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;->-$$Nest$mturnOnFlash(Lcom/sprd/validationtools/itemstest/keylight/KeyLightTestActivity;)V

    .line 50
    return-void
.end method
