.class Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$3;
.super Ljava/lang/Object;
.source "KeyTestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->showHasCameraDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    .line 215
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 220
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->-$$Nest$fputisHideCamera(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;Z)V

    .line 221
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->-$$Nest$fgetisHideCamera(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;->-$$Nest$mshowKey(Lcom/sprd/validationtools/itemstest/keypad/KeyTestActivity;Z)V

    .line 222
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 223
    return-void
.end method
