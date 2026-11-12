.class Lcom/sprd/validationtools/itemstest/backlight/BackLightTest$1;
.super Ljava/lang/Object;
.source "BackLightTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;

    .line 82
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest$1;->this$0:Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest$1;->this$0:Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->-$$Nest$mstartScreenLight(Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;)V

    .line 86
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest$1;->this$0:Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->-$$Nest$fgetmCount(Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->-$$Nest$fputmCount(Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;I)V

    .line 96
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest$1;->this$0:Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->-$$Nest$fgetisShowNavigationBar(Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest$1;->this$0:Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->access$000(Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest$1;->this$0:Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->access$100(Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest$1;->this$0:Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;->-$$Nest$msetBackground(Lcom/sprd/validationtools/itemstest/backlight/BackLightTest;)V

    .line 101
    return-void
.end method
