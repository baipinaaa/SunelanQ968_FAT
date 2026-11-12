.class Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$6$1;
.super Ljava/lang/Object;
.source "TofCalibrationTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$6;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$6;

    .line 177
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$6$1;->this$1:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$6$1;->this$1:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$6;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->-$$Nest$fgetmIsOffsetTestPass(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$6$1;->this$1:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$6;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->-$$Nest$fgetmIsCrossTalkTestPass(Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$6$1;->this$1:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$6;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->judgeTofTestPass()V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$6$1;->this$1:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$6;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$6;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->judgeTofTestFail()V

    .line 185
    :goto_0
    return-void
.end method
