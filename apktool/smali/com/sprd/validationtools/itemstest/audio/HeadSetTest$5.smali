.class Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$5;
.super Ljava/lang/Thread;
.source "HeadSetTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;->rollbackMmiAudio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    .line 283
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/HeadSetTest$5;->this$0:Lcom/sprd/validationtools/itemstest/audio/HeadSetTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 285
    const-string v0, "AT+SPVLOOP=0,2,8,2,3,0"

    const-string v1, "atchannel0"

    invoke-static {v0, v1}, Lcom/sprd/validationtools/utils/IATUtils;->sendATCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "result":Ljava/lang/String;
    const-string v1, "HeadSetTest"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method
