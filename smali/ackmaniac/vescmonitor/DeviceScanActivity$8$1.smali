.class Lackmaniac/vescmonitor/DeviceScanActivity$8$1;
.super Ljava/lang/Object;
.source "DeviceScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/DeviceScanActivity$8;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lackmaniac/vescmonitor/DeviceScanActivity$8;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/DeviceScanActivity$8;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "this$1"    # Lackmaniac/vescmonitor/DeviceScanActivity$8;

    .prologue
    .line 568
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceScanActivity$8$1;->this$1:Lackmaniac/vescmonitor/DeviceScanActivity$8;

    iput-object p2, p0, Lackmaniac/vescmonitor/DeviceScanActivity$8$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 571
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity$8$1;->this$1:Lackmaniac/vescmonitor/DeviceScanActivity$8;

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceScanActivity$8;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceScanActivity;->access$000(Lackmaniac/vescmonitor/DeviceScanActivity;)Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;

    move-result-object v0

    new-instance v1, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceScanActivity$8$1;->this$1:Lackmaniac/vescmonitor/DeviceScanActivity$8;

    iget-object v2, v2, Lackmaniac/vescmonitor/DeviceScanActivity$8;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceScanActivity$8$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;-><init>(Lackmaniac/vescmonitor/DeviceScanActivity;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->addDevice(Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;)V

    .line 572
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity$8$1;->this$1:Lackmaniac/vescmonitor/DeviceScanActivity$8;

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceScanActivity$8;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceScanActivity;->access$000(Lackmaniac/vescmonitor/DeviceScanActivity;)Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->notifyDataSetChanged()V

    .line 573
    return-void
.end method
