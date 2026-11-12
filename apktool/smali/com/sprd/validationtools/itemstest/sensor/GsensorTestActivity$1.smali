.class Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$1;
.super Landroid/os/Handler;
.source "GsensorTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    .line 54
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 58
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 59
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->-$$Nest$fgetmTextView(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;->-$$Nest$fgetmTextView(Lcom/sprd/validationtools/itemstest/sensor/GsensorTestActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
