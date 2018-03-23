.class public Lackmaniac/vescmonitor/BluetoothLeService;
.super Landroid/app/Service;
.source "BluetoothLeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lackmaniac/vescmonitor/BluetoothLeService$LocalBinder;
    }
.end annotation


# static fields
.field public static final ACTION_DATA_AVAILABLE:Ljava/lang/String; = "com.example.bluetooth.le.ACTION_DATA_AVAILABLE"

.field public static final ACTION_GATT_CONNECTED:Ljava/lang/String; = "com.example.bluetooth.le.ACTION_GATT_CONNECTED"

.field public static final ACTION_GATT_DISCONNECTED:Ljava/lang/String; = "com.example.bluetooth.le.ACTION_GATT_DISCONNECTED"

.field public static final ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String; = "com.example.bluetooth.le.ACTION_GATT_SERVICES_DISCOVERED"

.field public static final EXTRA_DATA:Ljava/lang/String; = "com.example.bluetooth.le.EXTRA_DATA"

.field private static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field private static final STATE_DISCONNECTED:I

.field private static final TAG:Ljava/lang/String;

.field public static final UUID_HM_RX_TX:Ljava/util/UUID;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDeviceAddress:Ljava/lang/String;

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mConnectionState:I

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private selfSevice:Lackmaniac/vescmonitor/BluetoothLeService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lackmaniac/vescmonitor/BluetoothLeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lackmaniac/vescmonitor/BluetoothLeService;->TAG:Ljava/lang/String;

    .line 48
    sget-object v0, Lackmaniac/vescmonitor/SampleGattAttributes;->HM_RX_TX:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lackmaniac/vescmonitor/BluetoothLeService;->UUID_HM_RX_TX:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mConnectionState:I

    .line 52
    new-instance v0, Lackmaniac/vescmonitor/BluetoothLeService$1;

    invoke-direct {v0, p0}, Lackmaniac/vescmonitor/BluetoothLeService$1;-><init>(Lackmaniac/vescmonitor/BluetoothLeService;)V

    iput-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 190
    new-instance v0, Lackmaniac/vescmonitor/BluetoothLeService$LocalBinder;

    invoke-direct {v0, p0}, Lackmaniac/vescmonitor/BluetoothLeService$LocalBinder;-><init>(Lackmaniac/vescmonitor/BluetoothLeService;)V

    iput-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$002(Lackmaniac/vescmonitor/BluetoothLeService;I)I
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/BluetoothLeService;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mConnectionState:I

    return p1
.end method

.method static synthetic access$100(Lackmaniac/vescmonitor/BluetoothLeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/BluetoothLeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lackmaniac/vescmonitor/BluetoothLeService;->broadcastUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lackmaniac/vescmonitor/BluetoothLeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lackmaniac/vescmonitor/BluetoothLeService;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/BluetoothLeService;

    .prologue
    .line 26
    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$400(Lackmaniac/vescmonitor/BluetoothLeService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/BluetoothLeService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lackmaniac/vescmonitor/BluetoothLeService;->broadcastUpdate(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method private broadcastUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/BluetoothLeService;->sendBroadcast(Landroid/content/Intent;)V

    .line 131
    return-void
.end method

.method private broadcastUpdate(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/BluetoothLeService;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_0
.end method

.method public connect(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    iget-object v3, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_0

    if-nez p1, :cond_2

    .line 233
    :cond_0
    sget-object v1, Lackmaniac/vescmonitor/BluetoothLeService;->TAG:Ljava/lang/String;

    const-string v3, "BluetoothAdapter not initialized or unspecified address."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 268
    :cond_1
    :goto_0
    return v1

    .line 238
    :cond_2
    iget-object v3, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothDeviceAddress:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v3, :cond_4

    .line 240
    sget-object v3, Lackmaniac/vescmonitor/BluetoothLeService;->TAG:Ljava/lang/String;

    const-string v4, "Trying to use an existing mBluetoothGatt for connection."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v3, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 242
    sget-object v2, Lackmaniac/vescmonitor/BluetoothLeService;->TAG:Ljava/lang/String;

    const-string v3, "if (mBluetoothGatt.connect())"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget v2, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mConnectionState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 244
    iput v1, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mConnectionState:I

    .line 245
    sget-object v2, Lackmaniac/vescmonitor/BluetoothLeService;->TAG:Ljava/lang/String;

    const-string v3, "STATE_CONNECTING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :cond_3
    sget-object v1, Lackmaniac/vescmonitor/BluetoothLeService;->TAG:Ljava/lang/String;

    const-string v3, "} else {"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v1, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 251
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p0, v2, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    iput-object v1, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 252
    iput-object p1, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothDeviceAddress:Ljava/lang/String;

    move v1, v2

    .line 253
    goto :goto_0

    .line 257
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_4
    iget-object v3, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 258
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_5

    .line 259
    sget-object v1, Lackmaniac/vescmonitor/BluetoothLeService;->TAG:Ljava/lang/String;

    const-string v3, "Device not found.  Unable to connect."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 260
    goto :goto_0

    .line 264
    :cond_5
    iget-object v3, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p0, v2, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    iput-object v2, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 265
    sget-object v2, Lackmaniac/vescmonitor/BluetoothLeService;->TAG:Ljava/lang/String;

    const-string v3, "Trying to create a new connection."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iput-object p1, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothDeviceAddress:Ljava/lang/String;

    .line 267
    iput v1, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mConnectionState:I

    goto :goto_0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_1

    .line 279
    :cond_0
    sget-object v0, Lackmaniac/vescmonitor/BluetoothLeService;->TAG:Ljava/lang/String;

    const-string v1, "BluetoothAdapter not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_0
    return-void

    .line 283
    :cond_1
    :try_start_0
    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getConnectionState()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mConnectionState:I

    return v0
.end method

.method public getSupportedGattServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 371
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public initialize()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    .line 201
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/BluetoothLeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 202
    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    .line 203
    sget-object v0, Lackmaniac/vescmonitor/BluetoothLeService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to initialize BluetoothManager."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 214
    :goto_0
    return v0

    .line 208
    :cond_0
    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 209
    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 210
    sget-object v0, Lackmaniac/vescmonitor/BluetoothLeService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to obtain a BluetoothAdapter."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 211
    goto :goto_0

    .line 214
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 178
    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 186
    invoke-virtual {p0}, Lackmaniac/vescmonitor/BluetoothLeService;->close()V

    .line 187
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 309
    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_1

    .line 310
    :cond_0
    sget-object v0, Lackmaniac/vescmonitor/BluetoothLeService;->TAG:Ljava/lang/String;

    const-string v1, "BluetoothAdapter not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0
.end method

.method public setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .locals 3
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "enabled"    # Z

    .prologue
    .line 338
    iget-object v1, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_2

    .line 339
    :cond_0
    sget-object v1, Lackmaniac/vescmonitor/BluetoothLeService;->TAG:Ljava/lang/String;

    const-string v2, "BluetoothAdapter not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_1
    :goto_0
    return-void

    .line 342
    :cond_2
    iget-object v1, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 354
    sget-object v1, Lackmaniac/vescmonitor/BluetoothLeService;->UUID_HM_RX_TX:Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    sget-object v1, Lackmaniac/vescmonitor/SampleGattAttributes;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

    .line 356
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 355
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 357
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 358
    iget-object v1, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_0
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 323
    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_1

    .line 324
    :cond_0
    sget-object v0, Lackmaniac/vescmonitor/BluetoothLeService;->TAG:Ljava/lang/String;

    const-string v1, "BluetoothAdapter not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0
.end method
