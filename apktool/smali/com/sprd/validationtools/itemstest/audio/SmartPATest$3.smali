.class Lcom/sprd/validationtools/itemstest/audio/SmartPATest$3;
.super Ljava/lang/Object;
.source "SmartPATest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->startSmartpaTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    .line 92
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 95
    const-string v0, "="

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 96
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fgetmAudioManager(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)Landroid/media/AudioManager;

    move-result-object v2

    const-string v3, "SmartAmpCalibration=1"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v2}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fgetmAudioManager(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)Landroid/media/AudioManager;

    move-result-object v2

    const-string v3, "SmartAmpCalibrationValues"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "result":Ljava/lang/String;
    iget-object v3, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v3}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fgetmAudioManager(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)Landroid/media/AudioManager;

    move-result-object v3

    const-string v4, "SmartAmpMaxResistance"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "resultMax":Ljava/lang/String;
    iget-object v4, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v4}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fgetmAudioManager(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)Landroid/media/AudioManager;

    move-result-object v4

    const-string v5, "SmartAmpMinResistance"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "resultMin":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result=:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SmartPATest"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v5, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    const-string v8, "null"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_2

    .line 110
    :cond_0
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, "valString":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 113
    .local v10, "valStringMax":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v9

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "valStringMin":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x44800000    # 1024.0f

    div-float/2addr v11, v12

    .line 115
    .local v11, "val":F
    iget-object v12, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    invoke-static {v12, v13}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fputmResistanceMax(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;F)V

    .line 116
    iget-object v12, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    invoke-static {v12, v13}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fputmResistanceMin(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;F)V

    .line 117
    iget-object v12, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float v14, v11, v13

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v13

    invoke-static {v12, v14}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fputmResistance(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;F)V

    .line 118
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mResistanceMax = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v13}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fgetmResistanceMax(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mResistanceMin = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v13}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fgetmResistanceMin(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mResistance = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v13}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fgetmResistance(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v12, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v12}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fgetmResistance(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)F

    move-result v12

    iget-object v13, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v13}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fgetmResistanceMax(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)F

    move-result v13

    cmpl-float v12, v12, v13

    if-gtz v12, :cond_2

    iget-object v12, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v12}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fgetmResistance(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)F

    move-result v12

    iget-object v13, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v13}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fgetmResistanceMin(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    iput v9, v1, Landroid/os/Message;->what:I

    goto :goto_1

    .line 122
    :cond_2
    :goto_0
    iput v7, v1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0    # "valStringMin":Ljava/lang/String;
    .end local v8    # "valString":Ljava/lang/String;
    .end local v10    # "valStringMax":Ljava/lang/String;
    .end local v11    # "val":F
    :goto_1
    goto :goto_3

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "result can not transfer to Integer..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v6, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v6, v5}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fputmResistance(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;F)V

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    iput v7, v1, Landroid/os/Message;->what:I

    .line 106
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v0, v5}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fputmResistance(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;F)V

    .line 133
    :goto_3
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/audio/SmartPATest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/SmartPATest;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/audio/SmartPATest;->-$$Nest$fgetmHandler(Lcom/sprd/validationtools/itemstest/audio/SmartPATest;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v5, 0x3e8

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 134
    return-void
.end method
