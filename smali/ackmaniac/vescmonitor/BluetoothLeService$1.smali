.class Lackmaniac/vescmonitor/BluetoothLeService$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BluetoothLeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lackmaniac/vescmonitor/BluetoothLeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/BluetoothLeService;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/BluetoothLeService;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/BluetoothLeService;

    .prologue
    .line 52
    iput-object p1, p0, Lackmaniac/vescmonitor/BluetoothLeService$1;->this$0:Lackmaniac/vescmonitor/BluetoothLeService;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 121
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lackmaniac/vescmonitor/Utils;->addRxEntry([B)V

    .line 123
    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService$1;->this$0:Lackmaniac/vescmonitor/BluetoothLeService;

    const-string v1, "com.example.bluetooth.le.ACTION_DATA_AVAILABLE"

    invoke-static {v0, v1, p2}, Lackmaniac/vescmonitor/BluetoothLeService;->access$400(Lackmaniac/vescmonitor/BluetoothLeService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 125
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 98
    if-nez p3, :cond_0

    .line 101
    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService$1;->this$0:Lackmaniac/vescmonitor/BluetoothLeService;

    const-string v1, "com.example.bluetooth.le.ACTION_DATA_AVAILABLE"

    invoke-static {v0, v1, p2}, Lackmaniac/vescmonitor/BluetoothLeService;->access$400(Lackmaniac/vescmonitor/BluetoothLeService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 103
    :cond_0
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    const/4 v2, 0x2

    .line 56
    if-ne p3, v2, :cond_1

    .line 61
    const-string v0, "com.example.bluetooth.le.ACTION_GATT_CONNECTED"

    .line 62
    .local v0, "intentAction":Ljava/lang/String;
    iget-object v1, p0, Lackmaniac/vescmonitor/BluetoothLeService$1;->this$0:Lackmaniac/vescmonitor/BluetoothLeService;

    invoke-static {v1, v2}, Lackmaniac/vescmonitor/BluetoothLeService;->access$002(Lackmaniac/vescmonitor/BluetoothLeService;I)I

    .line 63
    iget-object v1, p0, Lackmaniac/vescmonitor/BluetoothLeService$1;->this$0:Lackmaniac/vescmonitor/BluetoothLeService;

    invoke-static {v1, v0}, Lackmaniac/vescmonitor/BluetoothLeService;->access$100(Lackmaniac/vescmonitor/BluetoothLeService;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lackmaniac/vescmonitor/BluetoothLeService;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Connected to GATT server."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Lackmaniac/vescmonitor/BluetoothLeService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to start service discovery:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lackmaniac/vescmonitor/BluetoothLeService$1;->this$0:Lackmaniac/vescmonitor/BluetoothLeService;

    invoke-static {v3}, Lackmaniac/vescmonitor/BluetoothLeService;->access$300(Lackmaniac/vescmonitor/BluetoothLeService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v0    # "intentAction":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    if-nez p3, :cond_0

    .line 68
    const-string v0, "com.example.bluetooth.le.ACTION_GATT_DISCONNECTED"

    .line 69
    .restart local v0    # "intentAction":Ljava/lang/String;
    iget-object v1, p0, Lackmaniac/vescmonitor/BluetoothLeService$1;->this$0:Lackmaniac/vescmonitor/BluetoothLeService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lackmaniac/vescmonitor/BluetoothLeService;->access$002(Lackmaniac/vescmonitor/BluetoothLeService;I)I

    .line 70
    invoke-static {}, Lackmaniac/vescmonitor/BluetoothLeService;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Disconnected from GATT server."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p0, Lackmaniac/vescmonitor/BluetoothLeService$1;->this$0:Lackmaniac/vescmonitor/BluetoothLeService;

    invoke-static {v1, v0}, Lackmaniac/vescmonitor/BluetoothLeService;->access$100(Lackmaniac/vescmonitor/BluetoothLeService;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "mtu"    # I
    .param p3, "status"    # I

    .prologue
    .line 78
    if-nez p3, :cond_0

    .line 79
    invoke-static {}, Lackmaniac/vescmonitor/BluetoothLeService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MTU size is changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {}, Lackmaniac/vescmonitor/BluetoothLeService;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Change of MTU size failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 87
    if-nez p2, :cond_0

    .line 88
    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService$1;->this$0:Lackmaniac/vescmonitor/BluetoothLeService;

    const-string v1, "com.example.bluetooth.le.ACTION_GATT_SERVICES_DISCOVERED"

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/BluetoothLeService;->access$100(Lackmaniac/vescmonitor/BluetoothLeService;Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-static {}, Lackmaniac/vescmonitor/BluetoothLeService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServicesDiscovered received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
