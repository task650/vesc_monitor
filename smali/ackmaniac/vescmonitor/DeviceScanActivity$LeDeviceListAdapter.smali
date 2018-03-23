.class Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lackmaniac/vescmonitor/DeviceScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LeDeviceListAdapter"
.end annotation


# instance fields
.field private mInflator:Landroid/view/LayoutInflater;

.field private mLeDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;",
            ">;"
        }
    .end annotation
.end field

.field final settings:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lackmaniac/vescmonitor/DeviceScanActivity;


# direct methods
.method public constructor <init>(Lackmaniac/vescmonitor/DeviceScanActivity;)V
    .locals 6

    .prologue
    .line 411
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    .line 412
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 413
    const-string v2, "VESC_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lackmaniac/vescmonitor/DeviceScanActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->settings:Landroid/content/SharedPreferences;

    .line 414
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    .line 415
    invoke-virtual {p1}, Lackmaniac/vescmonitor/DeviceScanActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mInflator:Landroid/view/LayoutInflater;

    .line 416
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->settings:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    .line 417
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 418
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 419
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 420
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_0

    .line 421
    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    new-instance v4, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5, v0}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;-><init>(Lackmaniac/vescmonitor/DeviceScanActivity;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 426
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public addDevice(Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;)V
    .locals 7
    .param p1, "deviceExtended"    # Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    .prologue
    .line 430
    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    .line 431
    .local v0, "device":Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;
    invoke-virtual {v0}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->access$600(Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 432
    invoke-virtual {p1}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v0, v5}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 435
    .end local v0    # "device":Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;
    :cond_1
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->getDevices()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p1}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 436
    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->settings:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "deviceUserName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 438
    .local v2, "foundPosition":Z
    if-eqz v1, :cond_2

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 439
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 440
    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    invoke-virtual {v4}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->settings:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    .line 441
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    invoke-virtual {v4}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-interface {v5, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 442
    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 443
    const/4 v2, 0x1

    .line 448
    .end local v3    # "i":I
    :cond_2
    if-nez v2, :cond_3

    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    .end local v1    # "deviceUserName":Ljava/lang/String;
    .end local v2    # "foundPosition":Z
    :cond_3
    return-void

    .line 439
    .restart local v1    # "deviceUserName":Ljava/lang/String;
    .restart local v2    # "foundPosition":Z
    .restart local v3    # "i":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 478
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDevice(I)Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 453
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    return-object v0
.end method

.method public getDevices()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v1, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    .line 463
    .local v0, "device":Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 465
    .end local v0    # "device":Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;
    :cond_1
    return-object v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 487
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 492
    int-to-long v0, p1

    return-wide v0
.end method

.method public getKeys()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .local v1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    .line 471
    .local v0, "device":Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;
    if-nez v0, :cond_0

    invoke-virtual {v0}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 473
    .end local v0    # "device":Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;
    :cond_1
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 499
    if-nez p2, :cond_1

    .line 500
    iget-object v9, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mInflator:Landroid/view/LayoutInflater;

    const v10, 0x7f0a002e

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 501
    new-instance v8, Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;

    invoke-direct {v8}, Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;-><init>()V

    .line 502
    .local v8, "viewHolder":Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;
    const v9, 0x7f08006a

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;->deviceAddress:Landroid/widget/TextView;

    .line 503
    const v9, 0x7f080070

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;->deviceName:Landroid/widget/TextView;

    .line 504
    const v9, 0x7f08006d

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;->deviceBoardName:Landroid/widget/TextView;

    .line 505
    const v9, 0x7f08006e

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;->deviceKm:Landroid/widget/TextView;

    .line 506
    const v9, 0x7f08006f

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;->deviceKmUnit:Landroid/widget/TextView;

    .line 507
    const v9, 0x7f08006b

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;->deviceAvgWh:Landroid/widget/TextView;

    .line 508
    const v9, 0x7f08006c

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;->deviceAvgWhUnit:Landroid/widget/TextView;

    .line 509
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 514
    :goto_0
    iget-object v9, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    .line 519
    .local v4, "device":Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;
    invoke-virtual {v4}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    if-nez v9, :cond_5

    .line 520
    const-string v10, "key"

    iget-object v9, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    invoke-virtual {v9}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v10, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->settings:Landroid/content/SharedPreferences;

    iget-object v9, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    invoke-virtual {v9}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getKey()Ljava/lang/String;

    move-result-object v9

    const-string v11, ""

    invoke-interface {v10, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 522
    .local v5, "deviceName":Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 523
    iget-object v9, v8, Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;->deviceBoardName:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v10, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->settings:Landroid/content/SharedPreferences;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    invoke-virtual {v9}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "DISTANCE_UNIT"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v10, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 526
    .local v7, "distanceUnit":I
    iget-object v10, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->settings:Landroid/content/SharedPreferences;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    invoke-virtual {v9}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "BI_TOTAL_KM"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v10, v9, v11}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v10

    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    const v9, 0x3fcdfeda

    :goto_1
    div-float v1, v10, v9

    .line 528
    .local v1, "biDistance":F
    iget-object v9, v8, Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;->deviceKm:Landroid/widget/TextView;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%.1f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v10, v8, Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;->deviceKmUnit:Landroid/widget/TextView;

    iget-object v9, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    invoke-virtual {v9}, Lackmaniac/vescmonitor/DeviceScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    const v9, 0x7f0d008e

    :goto_2
    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v10, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->settings:Landroid/content/SharedPreferences;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    invoke-virtual {v9}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "BI_WH_DRAWN"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v10, v9, v11}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 532
    .local v3, "biWhDrawn":F
    iget-object v10, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->settings:Landroid/content/SharedPreferences;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    invoke-virtual {v9}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "BI_WH_CHARGED"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v10, v9, v11}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 534
    .local v2, "biWhCharged":F
    iget-object v9, v8, Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;->deviceAvgWh:Landroid/widget/TextView;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%.1f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    sub-float v14, v3, v2

    div-float/2addr v14, v1

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v10, v8, Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;->deviceAvgWhUnit:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Wh/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    invoke-virtual {v9}, Lackmaniac/vescmonitor/DeviceScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/4 v9, 0x1

    if-ne v7, v9, :cond_4

    const v9, 0x7f0d005c

    :goto_3
    invoke-virtual {v12, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v9, v8, Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;->deviceBoardName:Landroid/widget/TextView;

    const v10, -0x777778

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 558
    .end local v1    # "biDistance":F
    .end local v2    # "biWhCharged":F
    .end local v3    # "biWhDrawn":F
    .end local v7    # "distanceUnit":I
    :cond_0
    :goto_4
    return-object p2

    .line 511
    .end local v4    # "device":Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;
    .end local v5    # "deviceName":Ljava/lang/String;
    .end local v8    # "viewHolder":Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;

    .restart local v8    # "viewHolder":Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;
    goto/16 :goto_0

    .line 526
    .restart local v4    # "device":Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;
    .restart local v5    # "deviceName":Ljava/lang/String;
    .restart local v7    # "distanceUnit":I
    :cond_2
    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 529
    .restart local v1    # "biDistance":F
    :cond_3
    const v9, 0x7f0d008b

    goto/16 :goto_2

    .line 535
    .restart local v2    # "biWhCharged":F
    .restart local v3    # "biWhDrawn":F
    :cond_4
    const v9, 0x7f0d004a

    goto :goto_3

    .line 542
    .end local v1    # "biDistance":F
    .end local v2    # "biWhCharged":F
    .end local v3    # "biWhDrawn":F
    .end local v5    # "deviceName":Ljava/lang/String;
    .end local v7    # "distanceUnit":I
    :cond_5
    invoke-virtual {v4}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .line 543
    .restart local v5    # "deviceName":Ljava/lang/String;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 544
    iget-object v9, v8, Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;->deviceName:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    :goto_5
    iget-object v9, v8, Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;->deviceAddress:Landroid/widget/TextView;

    invoke-virtual {v4}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v9, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->settings:Landroid/content/SharedPreferences;

    invoke-virtual {v4}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 553
    .local v6, "deviceUserName":Ljava/lang/String;
    if-eqz v6, :cond_6

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 554
    iget-object v9, v8, Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;->deviceBoardName:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    :cond_6
    iget-object v9, v8, Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;->deviceBoardName:Landroid/widget/TextView;

    const/high16 v10, -0x10000

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 546
    .end local v6    # "deviceUserName":Ljava/lang/String;
    :cond_7
    iget-object v9, v8, Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;->deviceName:Landroid/widget/TextView;

    const v10, 0x7f0d00a2

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5
.end method

.method public remove(Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;)V
    .locals 1
    .param p1, "deviceExtended"    # Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    .prologue
    .line 457
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->mLeDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 458
    return-void
.end method
