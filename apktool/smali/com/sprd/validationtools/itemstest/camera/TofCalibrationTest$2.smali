.class Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$2;
.super Ljava/lang/Object;
.source "TofCalibrationTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->onCreate(Landroid/os/Bundle;)V
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

    .line 79
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$2;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$2;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    const-string v1, "Cross-talk Calibration is Testing, Please Wait!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest$2;->this$0:Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/camera/TofCalibrationTest;->executeCrossTalkCalibration()V

    .line 84
    return-void
.end method
