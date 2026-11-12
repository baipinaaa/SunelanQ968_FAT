.class Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$1;
.super Landroid/os/Handler;
.source "MutiTouchTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;

    .line 42
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$1;->this$0:Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest$1;->this$0:Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;->-$$Nest$mstopTest(Lcom/sprd/validationtools/itemstest/tp/MutiTouchTest;)V

    .line 48
    nop

    .line 52
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
