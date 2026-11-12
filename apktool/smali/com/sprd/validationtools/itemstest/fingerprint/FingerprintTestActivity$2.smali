.class Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$2;
.super Ljava/lang/Object;
.source "FingerprintTestActivity.java"

# interfaces
.implements Lcom/sprd/validationtools/itemstest/fingerprint/ISprdFingerDetectListener;


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

    .line 122
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on_finger_detected(I)V
    .locals 4
    .param p1, "status"    # I

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ISprdFingerDetectListener fd ret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintTestActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x4

    if-nez p1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    .line 133
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 132
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 134
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 136
    :goto_0
    return-void
.end method
