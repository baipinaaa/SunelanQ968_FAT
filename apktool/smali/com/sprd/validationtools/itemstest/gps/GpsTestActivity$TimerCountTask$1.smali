.class Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask$1;
.super Ljava/lang/Object;
.source "GpsTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask;

    .line 309
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask$1;->this$1:Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask$1;->this$1:Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask;->this$0:Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;

    const v1, 0x7f0500e3

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 313
    .local v0, "txtTime":Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask$1;->this$1:Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask;

    iget-object v2, v2, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask;->this$0:Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->-$$Nest$fgettimeCount(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    return-void
.end method
