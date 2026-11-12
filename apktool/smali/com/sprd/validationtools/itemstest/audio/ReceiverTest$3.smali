.class Lcom/sprd/validationtools/itemstest/audio/ReceiverTest$3;
.super Ljava/lang/Object;
.source "ReceiverTest.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;

    .line 160
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/audio/ReceiverTest$3;->this$0:Lcom/sprd/validationtools/itemstest/audio/ReceiverTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 165
    if-eqz p1, :cond_0

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 167
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 169
    :cond_0
    const-string v0, "ReceiverTest"

    const-string v1, "mOnPreparedListener prepare issue!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_0
    return-void
.end method
