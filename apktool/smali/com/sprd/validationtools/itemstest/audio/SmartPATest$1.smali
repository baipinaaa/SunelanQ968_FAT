.class Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;
.super Landroid/os/Handler;
.source "SmartPATest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/audio/SmartPATest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    .line 33
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x7d0

    const/4 v3, 0x0

    const-string v4, "ohm"

    const-string v5, "SmartPATest"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 38
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMARTPA_CALIBRATION_SUCCESS, mResistance=:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fgetmResistance(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)F

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fgetmRisistanceTV(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fgetmResistance(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fgetmRisistanceTV(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)Landroid/widget/TextView;

    move-result-object v0

    const v4, -0xff0100

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    const-string v4, "SmartPATest Calibration Success!"

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 43
    new-instance v0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1$1;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1$1;-><init>(Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    goto :goto_0

    .line 52
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMARTPA_CALIBRATION_FAIL, mResistance=:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fgetmResistance(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)F

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fgetmRisistanceTV(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fgetmResistance(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fgetmRisistanceTV(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v4, -0x10000

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    const-string v4, "SmartPATest Calibration Fialed!"

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 57
    new-instance v0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1$2;

    invoke-direct {v0, p0}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1$2;-><init>(Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$1;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
