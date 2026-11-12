.class Lcom/sprd/validationtools/background/BackgroundGpsTest$1;
.super Ljava/lang/Object;
.source "BackgroundGpsTest.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/background/BackgroundGpsTest;->startTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/background/BackgroundGpsTest;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/background/BackgroundGpsTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/background/BackgroundGpsTest;

    .line 41
    iput-object p1, p0, Lcom/sprd/validationtools/background/BackgroundGpsTest$1;->this$0:Lcom/sprd/validationtools/background/BackgroundGpsTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .line 44
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 48
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 51
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 55
    return-void
.end method
