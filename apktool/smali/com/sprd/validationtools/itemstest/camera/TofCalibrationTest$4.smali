.class Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;
.super Ljava/lang/Object;
.source "TofCalibrationTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->executeOffsetCalibration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    .line 108
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 111
    const-string v0, "TofCalibrationTest"

    const-string v1, "executeCrossTalkCalibration run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    const-string v1, "/mnt/vendor/vl53l0_offset_calibration.file"

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->setOffsetCalibrationParams(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->-$$Nest$fgetmSpadsCalibrationTV(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    const v3, 0x7f09015e

    invoke-virtual {v2, v3}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->-$$Nest$fgetmSpadsResult(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->-$$Nest$fgetmRefCalibrationTV(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    const v3, 0x7f090134

    invoke-virtual {v2, v3}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->-$$Nest$fgetmRefResult(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->-$$Nest$fgetmOffsetCalibrationTV(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    const v3, 0x7f0900ed

    invoke-virtual {v2, v3}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->-$$Nest$fgetmOffsetResult(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->judgeOffsetCalibrationPass()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->-$$Nest$fputmIsOffsetTestPass(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;Z)V

    .line 119
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->-$$Nest$fgetmIsOffsetTestPass(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->-$$Nest$fgetmOffsetCalibrationJudgeTV(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Pass"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->-$$Nest$fgetmOffsetCalibrationJudgeTV(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->-$$Nest$fgetmOffsetCalibrationJudgeTV(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Fail"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->-$$Nest$fgetmOffsetCalibrationJudgeTV(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->-$$Nest$fgetmHasOffsetTested(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->-$$Nest$fgetmHasXTalkTested(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4$1;-><init>(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$4;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    :cond_1
    return-void
.end method
