.class Lcom/sprd/validationtools/itemstest/usb/UsbActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/validationtools/itemstest/usb/UsbActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/usb/UsbActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/usb/UsbActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/usb/UsbActivity;

    .line 31
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/usb/UsbActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/usb/UsbActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 34
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/usb/UsbActivity$1;->this$0:Lcom/sprd/validationtools/itemstest/usb/UsbActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/usb/UsbActivity;->-$$Nest$mread(Lcom/sprd/validationtools/itemstest/usb/UsbActivity;)V

    .line 35
    return-void
.end method
