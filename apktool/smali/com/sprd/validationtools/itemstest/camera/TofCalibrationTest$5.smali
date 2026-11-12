.class Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$5;
.super Ljava/lang/Object;
.source "TofCalibrationTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->executeCrossTalkCalibration()V
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

    .line 146
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$5;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 149
    const-string v0, "TofCalibrationTest"

    const-string v1, "executeCrossTalkCalibration thread run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$5;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->-$$Nest$fgetmPhaseCheckParse(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Lcom/sprd/validationtools/PhaseCheckParse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sprd/validationtools/PhaseCheckParse;->executeXtalkCalibration()I

    move-result v1

    .line 151
    .local v1, "xtalkResult":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 152
    const-string v2, "execute_xtalk_calibration success!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_0
    const-string v2, "execute_xtalk_calibration failsed!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void
.end method
