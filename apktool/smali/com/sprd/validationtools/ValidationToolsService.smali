.class public Lcom/sprd/validationtools/ValidationToolsService;
.super Landroid/app/Service;
.source "ValidationToolsService.java"


# static fields
.field public static final FLAG_START_FOREGROUND:I = 0x1

.field public static final FLAG_STOP_FOREGROUND:I = 0x2

.field private static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "ValidationToolsNotification"

.field private static final NOTIFICATION_ID:I

.field private static final TAG:Ljava/lang/String; = "ValidationToolsNotification"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/sprd/validationtools/ValidationToolsService;->NOTIFICATION_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/ValidationToolsService;->stopForeground(Z)V

    .line 61
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 62
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCommand startId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValidationToolsNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lcom/sprd/validationtools/ValidationToolsService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 35
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 38
    .local v2, "channel":Landroid/app/NotificationChannel;
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 39
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid flag on intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    :pswitch_0
    const-string v4, "Stopping foreground"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sprd/validationtools/ValidationToolsService;->stopForeground(Z)V

    .line 51
    goto :goto_0

    .line 42
    :pswitch_1
    const-string v4, "Starting foreground"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sget v4, Lcom/sprd/validationtools/ValidationToolsService;->NOTIFICATION_ID:I

    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x108009b

    .line 45
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 43
    invoke-virtual {p0, v4, v1}, Lcom/sprd/validationtools/ValidationToolsService;->startForeground(ILandroid/app/Notification;)V

    .line 47
    nop

    .line 55
    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
