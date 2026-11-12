.class Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1$1;
.super Ljava/lang/Object;
.source "RFCALITest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1;

    .line 103
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1;->this$0:Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;

    iget-object v1, p0, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1$1;->this$1:Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1;

    iget-object v1, v1, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest$1;->this$0:Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;

    invoke-static {v1}, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;->-$$Nest$fgetstr(Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;->-$$Nest$mshowCaliStr(Lcom/sprd/validationtools/itemstest/sysinfo/RFCALITest;Ljava/lang/String;)V

    .line 106
    return-void
.end method
