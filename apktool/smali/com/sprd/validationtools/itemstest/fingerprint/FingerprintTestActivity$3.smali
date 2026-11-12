.class Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$3;
.super Landroid/os/Handler;
.source "FingerprintTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    .line 163
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 183
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmFingerDetectResult(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    const v2, 0x7f090181

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->storeRusult(Z)V

    .line 188
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->finish()V

    .line 189
    goto :goto_0

    .line 175
    :pswitch_1
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmFingerDetectResult(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09009e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    const v2, 0x7f090183

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 179
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->storeRusult(Z)V

    .line 180
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->finish()V

    .line 181
    goto :goto_0

    .line 171
    :pswitch_2
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmFingerDetectTips(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    goto :goto_0

    .line 167
    :pswitch_3
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmFingerDetectTips(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmContext(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    nop

    .line 192
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
