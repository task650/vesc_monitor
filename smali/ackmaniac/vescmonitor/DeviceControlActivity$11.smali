.class Lackmaniac/vescmonitor/DeviceControlActivity$11;
.super Ljava/lang/Object;
.source "DeviceControlActivity.java"

# interfaces
.implements Landroid/location/GpsStatus$NmeaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lackmaniac/vescmonitor/DeviceControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/DeviceControlActivity;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 2360
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$11;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "nmea"    # Ljava/lang/String;

    .prologue
    .line 2363
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$11;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0, p3}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$6000(Lackmaniac/vescmonitor/DeviceControlActivity;Ljava/lang/String;)V

    .line 2364
    return-void
.end method
