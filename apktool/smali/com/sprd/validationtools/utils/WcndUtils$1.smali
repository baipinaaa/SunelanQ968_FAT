.class Lcom/sprd/validationtools/utils/WcndUtils$1;
.super Landroid/os/AsyncTask;
.source "WcndUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/utils/WcndUtils;->dumpCPLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sprd/validationtools/utils/WcndUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .line 32
    invoke-static {}, Lcom/sprd/validationtools/utils/WcndUtils;->sendWcndCmdFlushLog()Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/sprd/validationtools/utils/WcndUtils;->sendSlogModemCmdFlushLog()Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method
