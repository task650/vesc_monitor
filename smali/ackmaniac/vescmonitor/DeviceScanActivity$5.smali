.class Lackmaniac/vescmonitor/DeviceScanActivity$5;
.super Ljava/lang/Object;
.source "DeviceScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/DeviceScanActivity;->scanLeDevice(Z)V
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
    .line 334
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceScanActivity$5;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity$5;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/DeviceScanActivity;->access$202(Lackmaniac/vescmonitor/DeviceScanActivity;Z)Z

    .line 338
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity$5;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceScanActivity;->access$400(Lackmaniac/vescmonitor/DeviceScanActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceScanActivity$5;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    invoke-static {v1}, Lackmaniac/vescmonitor/DeviceScanActivity;->access$300(Lackmaniac/vescmonitor/DeviceScanActivity;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 339
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity$5;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/DeviceScanActivity;->invalidateOptionsMenu()V

    .line 340
    return-void
.end method
