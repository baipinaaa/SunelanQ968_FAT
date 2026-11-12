.class Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask;
.super Ljava/util/TimerTask;
.source "GpsTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerCountTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;


# direct methods
.method private constructor <init>(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask;->this$0:Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask;-><init>(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask;->this$0:Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;

    new-instance v1, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask$1;

    invoke-direct {v1, p0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask$1;-><init>(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask;)V

    invoke-virtual {v0, v1}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 317
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$TimerCountTask;->this$0:Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->-$$Nest$fgettimeCount(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->-$$Nest$fputtimeCount(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;I)V

    .line 318
    return-void
.end method
