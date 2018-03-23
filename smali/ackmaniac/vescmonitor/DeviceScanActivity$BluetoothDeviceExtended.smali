.class Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;
.super Ljava/lang/Object;
.source "DeviceScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lackmaniac/vescmonitor/DeviceScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothDeviceExtended"
.end annotation


# instance fields
.field private device:Landroid/bluetooth/BluetoothDevice;

.field private key:Ljava/lang/String;

.field final synthetic this$0:Lackmaniac/vescmonitor/DeviceScanActivity;


# direct methods
.method public constructor <init>(Lackmaniac/vescmonitor/DeviceScanActivity;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/DeviceScanActivity;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p2, p0, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->device:Landroid/bluetooth/BluetoothDevice;

    .line 294
    iput-object p3, p0, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->key:Ljava/lang/String;

    .line 295
    return-void
.end method

.method static synthetic access$600(Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    .prologue
    .line 289
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->key:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 298
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->device:Landroid/bluetooth/BluetoothDevice;

    .line 299
    return-void
.end method
