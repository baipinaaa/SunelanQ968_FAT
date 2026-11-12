.class Lcom/sprd/validationtools/itemstest/rtc/RTCTest$1;
.super Ljava/lang/Object;
.source "RTCTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/rtc/RTCTest;->setTimeText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/rtc/RTCTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/rtc/RTCTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/rtc/RTCTest;

    .line 41
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/rtc/RTCTest$1;->this$0:Lcom/sprd/validationtools/itemstest/rtc/RTCTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/rtc/RTCTest$1;->this$0:Lcom/sprd/validationtools/itemstest/rtc/RTCTest;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/rtc/RTCTest;->mContent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/rtc/RTCTest$1;->this$0:Lcom/sprd/validationtools/itemstest/rtc/RTCTest;

    invoke-virtual {v2}, Lcom/sprd/validationtools/itemstest/rtc/RTCTest;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090139

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/rtc/RTCTest$1;->this$0:Lcom/sprd/validationtools/itemstest/rtc/RTCTest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/rtc/RTCTest;->-$$Nest$mgetTime(Lcom/sprd/validationtools/itemstest/rtc/RTCTest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/rtc/RTCTest$1;->this$0:Lcom/sprd/validationtools/itemstest/rtc/RTCTest;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/rtc/RTCTest;->mContent:Landroid/widget/TextView;

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/rtc/RTCTest$1;->this$0:Lcom/sprd/validationtools/itemstest/rtc/RTCTest;

    iget-wide v2, v2, Lcom/sprd/validationtools/itemstest/rtc/RTCTest;->mTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 46
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/rtc/RTCTest$1;->this$0:Lcom/sprd/validationtools/itemstest/rtc/RTCTest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/rtc/RTCTest;->storeRusult(Z)V

    .line 48
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/rtc/RTCTest$1;->this$0:Lcom/sprd/validationtools/itemstest/rtc/RTCTest;

    invoke-virtual {v0}, Lcom/sprd/validationtools/itemstest/rtc/RTCTest;->finish()V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/rtc/RTCTest$1;->this$0:Lcom/sprd/validationtools/itemstest/rtc/RTCTest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/rtc/RTCTest;->-$$Nest$msetTimeText(Lcom/sprd/validationtools/itemstest/rtc/RTCTest;)V

    .line 54
    :cond_1
    :goto_0
    return-void
.end method
