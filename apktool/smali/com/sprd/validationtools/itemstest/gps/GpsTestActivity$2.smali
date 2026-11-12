.class Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$2;
.super Ljava/lang/Object;
.source "GpsTestActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;


# direct methods
.method constructor <init>(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;

    .line 185
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .line 187
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->-$$Nest$mshowGpsMsg(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;)V

    .line 191
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$2;->this$0:Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->-$$Nest$mshowGpsMsg(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;)V

    .line 195
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 199
    return-void
.end method
