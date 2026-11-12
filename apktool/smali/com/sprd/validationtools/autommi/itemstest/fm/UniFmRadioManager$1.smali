.class Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager$1;
.super Ljava/lang/Object;
.source "UniFmRadioManager.java"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$openSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;

    .line 29
    iput-object p1, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager$1;->this$0:Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILandroid/hardware/broadcastradio/V2_0/ITunerSession;)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "session"    # Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openSessionCallback onValues "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniFmRadioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager$1;->this$0:Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;

    invoke-static {v0, p2}, Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;->-$$Nest$fputmITunerSession(Lcom/sprd/validationtools/autommi/itemstest/fm/UniFmRadioManager;Landroid/hardware/broadcastradio/V2_0/ITunerSession;)V

    .line 33
    return-void
.end method
