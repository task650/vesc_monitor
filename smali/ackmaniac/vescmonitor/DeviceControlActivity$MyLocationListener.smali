.class Lackmaniac/vescmonitor/DeviceControlActivity$MyLocationListener;
.super Ljava/lang/Object;
.source "DeviceControlActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lackmaniac/vescmonitor/DeviceControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/DeviceControlActivity;


# direct methods
.method private constructor <init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V
    .locals 0

    .prologue
    .line 2386
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$MyLocationListener;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lackmaniac/vescmonitor/DeviceControlActivity;Lackmaniac/vescmonitor/DeviceControlActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p2, "x1"    # Lackmaniac/vescmonitor/DeviceControlActivity$1;

    .prologue
    .line 2386
    invoke-direct {p0, p1}, Lackmaniac/vescmonitor/DeviceControlActivity$MyLocationListener;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    const/4 v7, 0x1

    .line 2391
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$MyLocationListener;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$6100(Lackmaniac/vescmonitor/DeviceControlActivity;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    .line 2392
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$MyLocationListener;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0, p1}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$6202(Lackmaniac/vescmonitor/DeviceControlActivity;Landroid/location/Location;)Landroid/location/Location;

    .line 2393
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$MyLocationListener;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$6300(Lackmaniac/vescmonitor/DeviceControlActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2394
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$MyLocationListener;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$6300(Lackmaniac/vescmonitor/DeviceControlActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.1f"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    const v6, 0x40666666    # 3.6f

    mul-float/2addr v6, v0

    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$MyLocationListener;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$2900(Lackmaniac/vescmonitor/DeviceControlActivity;)I

    move-result v0

    if-ne v0, v7, :cond_1

    const v0, 0x3fcdfeda

    :goto_0
    div-float v0, v6, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2396
    :cond_0
    return-void

    .line 2394
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 2400
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 2404
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2408
    return-void
.end method
