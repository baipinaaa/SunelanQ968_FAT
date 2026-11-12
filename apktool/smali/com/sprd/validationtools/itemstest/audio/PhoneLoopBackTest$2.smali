.class Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$2;
.super Ljava/lang/Object;
.source "PhoneLoopBackTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    .line 107
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$2;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest$2;->this$0:Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;->-$$Nest$mswitchLoopback(Lcom/sprd/validationtools/itemstest/audio/PhoneLoopBackTest;I)V

    .line 110
    return-void
.end method
