.class Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;
.super Ljava/lang/Object;
.source "FingerprintTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->initSensor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    .line 54
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 59
    const-string v0, "FingerprintTestActivity"

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x4

    :try_start_0
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    new-instance v5, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;

    invoke-direct {v5}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestImpl;-><init>()V

    iput-object v5, v4, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->theTestImpl:Lcom/sprd/validationtools/itemstest/fingerprint/IFactoryTestImpl;

    .line 60
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    iget-object v4, v4, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->theTestImpl:Lcom/sprd/validationtools/itemstest/fingerprint/IFactoryTestImpl;

    invoke-interface {v4}, Lcom/sprd/validationtools/itemstest/fingerprint/IFactoryTestImpl;->factory_init()I

    move-result v4

    .line 61
    .local v4, "ret":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "factory_init = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v5, 0x2

    if-nez v4, :cond_4

    .line 64
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v7}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x1

    .line 65
    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 64
    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 66
    invoke-static {}, Lcom/sprd/validationtools/Const;->isAutoTestMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 69
    :cond_0
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    iget-object v6, v6, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->theTestImpl:Lcom/sprd/validationtools/itemstest/fingerprint/IFactoryTestImpl;

    invoke-interface {v6}, Lcom/sprd/validationtools/itemstest/fingerprint/IFactoryTestImpl;->spi_test()I

    move-result v6

    move v4, v6

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "spi_test = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 73
    const-string v6, "spi_test fail!!"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v6

    .line 75
    invoke-virtual {v6, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 74
    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 77
    return-void

    .line 80
    :cond_1
    iget-object v7, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    iget-object v7, v7, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->theTestImpl:Lcom/sprd/validationtools/itemstest/fingerprint/IFactoryTestImpl;

    invoke-interface {v7}, Lcom/sprd/validationtools/itemstest/fingerprint/IFactoryTestImpl;->interrupt_test()I

    move-result v7

    move v4, v7

    .line 81
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "interrupt_test = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-ne v4, v6, :cond_2

    .line 83
    const-string v6, "interrupt_test fail!!"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v6

    .line 85
    invoke-virtual {v6, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 84
    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 86
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 87
    return-void

    .line 90
    :cond_2
    iget-object v7, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    iget-object v7, v7, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->theTestImpl:Lcom/sprd/validationtools/itemstest/fingerprint/IFactoryTestImpl;

    invoke-interface {v7}, Lcom/sprd/validationtools/itemstest/fingerprint/IFactoryTestImpl;->deadpixel_test()I

    move-result v7

    move v4, v7

    .line 91
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deadpixel_test = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-ne v4, v6, :cond_3

    .line 93
    const-string v6, "deadpixel_test fail!!"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v6

    .line 95
    invoke-virtual {v6, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 94
    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 96
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    return-void

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v5, 0x3a98

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 102
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    iget-object v0, v0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->theTestImpl:Lcom/sprd/validationtools/itemstest/fingerprint/IFactoryTestImpl;

    iget-object v5, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    iget-object v5, v5, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->listener_fd:Lcom/sprd/validationtools/itemstest/fingerprint/ISprdFingerDetectListener;

    invoke-interface {v0, v5}, Lcom/sprd/validationtools/itemstest/fingerprint/IFactoryTestImpl;->finger_detect(Lcom/sprd/validationtools/itemstest/fingerprint/ISprdFingerDetectListener;)I

    goto :goto_0

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v6}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v6

    .line 106
    invoke-virtual {v6, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 105
    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 107
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v4    # "ret":I
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 114
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v4}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 109
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 111
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;

    invoke-static {v4}, Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/fingerprint/FingerprintTestActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 115
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    nop

    .line 117
    :goto_1
    return-void
.end method
