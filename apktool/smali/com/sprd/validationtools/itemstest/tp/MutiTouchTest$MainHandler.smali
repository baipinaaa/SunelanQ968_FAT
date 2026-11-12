.class Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MainHandler;
.super Landroid/os/Handler;
.source "MutiTouchTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;


# direct methods
.method private constructor <init>(Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MainHandler;->this$0:Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MainHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MainHandler;-><init>(Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MainHandler;->this$0:Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->-$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f090183

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 121
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MainHandler;->this$0:Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->storeRusult(Z)V

    .line 122
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$MainHandler;->this$0:Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->finish()V

    .line 124
    :cond_0
    return-void
.end method
