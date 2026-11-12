.class Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$3;
.super Landroid/location/GnssStatus$Callback;
.source "GpsTestActivity.java"


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

    .line 214
    iput-object p1, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;

    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 1
    .param p1, "status"    # Landroid/location/GnssStatus;

    .line 218
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;

    invoke-static {v0, p1}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->-$$Nest$fputmGnssStatus(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;Landroid/location/GnssStatus;)V

    .line 219
    iget-object v0, p0, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity$3;->this$0:Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;

    invoke-static {v0}, Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;->-$$Nest$mshowSatelliteCount(Lcom/sprd/validationtools/itemstest/gps/GpsTestActivity;)V

    .line 220
    return-void
.end method
