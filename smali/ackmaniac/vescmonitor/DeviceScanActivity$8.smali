.class Lackmaniac/vescmonitor/DeviceScanActivity$8;
.super Ljava/lang/Object;
.source "DeviceScanActivity.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lackmaniac/vescmonitor/DeviceScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/DeviceScanActivity;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/DeviceScanActivity;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/DeviceScanActivity;

    .prologue
    .line 564
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceScanActivity$8;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 568
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity$8;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    new-instance v1, Lackmaniac/vescmonitor/DeviceScanActivity$8$1;

    invoke-direct {v1, p0, p1}, Lackmaniac/vescmonitor/DeviceScanActivity$8$1;-><init>(Lackmaniac/vescmonitor/DeviceScanActivity$8;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceScanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 575
    return-void
.end method
