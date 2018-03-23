.class Lackmaniac/vescmonitor/DeviceControlActivity$5;
.super Ljava/lang/Object;
.source "DeviceControlActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/DeviceControlActivity;->startGattService()V
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
    .line 1891
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$5;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1895
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$5;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    check-cast p2, Lackmaniac/vescmonitor/BluetoothLeService$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lackmaniac/vescmonitor/BluetoothLeService$LocalBinder;->getService()Lackmaniac/vescmonitor/BluetoothLeService;

    move-result-object v1

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$5002(Lackmaniac/vescmonitor/DeviceControlActivity;Lackmaniac/vescmonitor/BluetoothLeService;)Lackmaniac/vescmonitor/BluetoothLeService;

    .line 1897
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$5;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$5000(Lackmaniac/vescmonitor/DeviceControlActivity;)Lackmaniac/vescmonitor/BluetoothLeService;

    move-result-object v0

    invoke-virtual {v0}, Lackmaniac/vescmonitor/BluetoothLeService;->initialize()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1898
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$5;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->finish()V

    .line 1901
    :cond_0
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$5;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$5000(Lackmaniac/vescmonitor/DeviceControlActivity;)Lackmaniac/vescmonitor/BluetoothLeService;

    move-result-object v0

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$5;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$5100(Lackmaniac/vescmonitor/DeviceControlActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BluetoothLeService;->connect(Ljava/lang/String;)Z

    .line 1902
    const-string v0, "COMM THREAD"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 1908
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$5;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$5002(Lackmaniac/vescmonitor/DeviceControlActivity;Lackmaniac/vescmonitor/BluetoothLeService;)Lackmaniac/vescmonitor/BluetoothLeService;

    .line 1909
    const-string v0, "COMM THREAD"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    return-void
.end method
