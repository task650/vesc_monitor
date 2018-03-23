.class public Lackmaniac/vescmonitor/DeviceScanActivity;
.super Landroid/app/ListActivity;
.source "DeviceScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lackmaniac/vescmonitor/DeviceScanActivity$ViewHolder;,
        Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;,
        Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;
    }
.end annotation


# static fields
.field private static final PERMISSION_REQUEST_ACCESS_FINE_LOCATION:I = 0x3

.field private static final PERMISSION_REQUEST_COARSE_LOCATION:I = 0x1

.field private static final PERMISSION_REQUEST_EXTERNAL_STORAGE_WRITE:I = 0x2

.field private static final REQUEST_ENABLE_BT:I = 0x1

.field private static final SCAN_PERIOD:J = 0x2710L


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mLeDeviceListAdapter:Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mScanning:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 563
    new-instance v0, Lackmaniac/vescmonitor/DeviceScanActivity$8;

    invoke-direct {v0, p0}, Lackmaniac/vescmonitor/DeviceScanActivity$8;-><init>(Lackmaniac/vescmonitor/DeviceScanActivity;)V

    iput-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-void
.end method

.method static synthetic access$000(Lackmaniac/vescmonitor/DeviceScanActivity;)Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceScanActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mLeDeviceListAdapter:Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lackmaniac/vescmonitor/DeviceScanActivity;Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;)Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceScanActivity;
    .param p1, "x1"    # Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;

    .prologue
    .line 45
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mLeDeviceListAdapter:Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lackmaniac/vescmonitor/DeviceScanActivity;Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceScanActivity;
    .param p1, "x1"    # Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lackmaniac/vescmonitor/DeviceScanActivity;->showDeleteDialog(Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;)V

    return-void
.end method

.method static synthetic access$202(Lackmaniac/vescmonitor/DeviceScanActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceScanActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mScanning:Z

    return p1
.end method

.method static synthetic access$300(Lackmaniac/vescmonitor/DeviceScanActivity;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceScanActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-object v0
.end method

.method static synthetic access$400(Lackmaniac/vescmonitor/DeviceScanActivity;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceScanActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lackmaniac/vescmonitor/DeviceScanActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceScanActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lackmaniac/vescmonitor/DeviceScanActivity;->scanLeDevice(Z)V

    return-void
.end method

.method private scanLeDevice(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 332
    if-eqz p1, :cond_0

    .line 334
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lackmaniac/vescmonitor/DeviceScanActivity$5;

    invoke-direct {v1, p0}, Lackmaniac/vescmonitor/DeviceScanActivity$5;-><init>(Lackmaniac/vescmonitor/DeviceScanActivity;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mScanning:Z

    .line 344
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 349
    :goto_0
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceScanActivity;->invalidateOptionsMenu()V

    .line 350
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mScanning:Z

    .line 347
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    goto :goto_0
.end method

.method private showDeleteDialog(Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;)V
    .locals 10
    .param p1, "deviceExtended"    # Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 354
    invoke-virtual {p1}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    if-nez v6, :cond_0

    .line 355
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 356
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const-string v6, "VESC_SETTINGS"

    invoke-virtual {p0, v6, v9}, Lackmaniac/vescmonitor/DeviceScanActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 357
    .local v5, "settings":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "boardName":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 359
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Delete info for the board \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 360
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Are you sure you really want to delete all settings and Trip infos for the board \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"?\n If you want to continue enter \"Delete\" in the textbox"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 366
    :goto_0
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 367
    .local v3, "input":Landroid/widget/EditText;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 370
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    const/4 v6, 0x1

    new-array v2, v6, [Landroid/text/InputFilter;

    .line 372
    .local v2, "fa":[Landroid/text/InputFilter;
    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v2, v9

    .line 373
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 374
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 377
    const-string v6, "OK"

    new-instance v7, Lackmaniac/vescmonitor/DeviceScanActivity$6;

    invoke-direct {v7, p0, v3, v5, p1}, Lackmaniac/vescmonitor/DeviceScanActivity$6;-><init>(Lackmaniac/vescmonitor/DeviceScanActivity;Landroid/widget/EditText;Landroid/content/SharedPreferences;Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 395
    const-string v6, "Cancel"

    new-instance v7, Lackmaniac/vescmonitor/DeviceScanActivity$7;

    invoke-direct {v7, p0}, Lackmaniac/vescmonitor/DeviceScanActivity$7;-><init>(Lackmaniac/vescmonitor/DeviceScanActivity;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 401
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 403
    .end local v0    # "alertDialog":Landroid/app/AlertDialog$Builder;
    .end local v1    # "boardName":Ljava/lang/String;
    .end local v2    # "fa":[Landroid/text/InputFilter;
    .end local v3    # "input":Landroid/widget/EditText;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 362
    .restart local v0    # "alertDialog":Landroid/app/AlertDialog$Builder;
    .restart local v1    # "boardName":Ljava/lang/String;
    .restart local v5    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    const-string v6, "Delete info for the unnamed board."

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 363
    const-string v6, "Are you sure you really want to delete all settings and Trip infos for the unnamed board?\n If you want to continue enter \"Delete\" in the textbox"

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 275
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 276
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceScanActivity;->finish()V

    .line 280
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceScanActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const v6, 0x7f0d009e

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setTitle(I)V

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceScanActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceScanActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " V"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceScanActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceScanActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mHandler:Landroid/os/Handler;

    .line 74
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v5}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    new-array v5, v11, [Ljava/lang/String;

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v6, v5, v10

    invoke-static {p0, v5, v11}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 82
    :cond_0
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v5}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    new-array v5, v11, [Ljava/lang/String;

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v6, v5, v10

    const/4 v6, 0x2

    invoke-static {p0, v5, v6}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 90
    :cond_1
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v5}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    .line 93
    new-array v5, v11, [Ljava/lang/String;

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v6, v5, v10

    const/4 v6, 0x3

    invoke-static {p0, v5, v6}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 98
    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_3

    .line 99
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceScanActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "packageName":Ljava/lang/String;
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceScanActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 102
    .local v4, "pm":Landroid/os/PowerManager;
    invoke-virtual {v4, v3}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 103
    const-string v5, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v2}, Lackmaniac/vescmonitor/DeviceScanActivity;->startActivity(Landroid/content/Intent;)V

    .line 111
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "pm":Landroid/os/PowerManager;
    :cond_3
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceScanActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.bluetooth_le"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 112
    const v5, 0x7f0d0034

    invoke-static {p0, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 113
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceScanActivity;->finish()V

    .line 118
    :cond_4
    const-string v5, "bluetooth"

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceScanActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 120
    .local v0, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    iput-object v5, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 122
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v5, :cond_5

    .line 123
    const v5, 0x7f0d0045

    invoke-static {p0, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 124
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceScanActivity;->finish()V

    .line 126
    :cond_5
    return-void

    .line 68
    .end local v0    # "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v8, 0x7f0800d5

    const v7, 0x7f0800d2

    const v6, 0x7f0800d1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 193
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceScanActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0b0003

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "deviceId":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceScanActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 201
    :goto_0
    if-eqz v0, :cond_0

    const-string v2, "c28ea060b05efd49"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 202
    :cond_0
    const v2, 0x7f08016a

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 204
    :cond_1
    iget-boolean v2, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mScanning:Z

    if-nez v2, :cond_2

    .line 205
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 206
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 207
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 214
    :goto_1
    return v5

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 209
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 210
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 211
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0a001a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 312
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mLeDeviceListAdapter:Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;

    invoke-virtual {v2, p3}, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->getDevice(I)Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    move-result-object v2

    invoke-virtual {v2}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 313
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 314
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mLeDeviceListAdapter:Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;

    invoke-virtual {v2, p3}, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->getDevice(I)Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    move-result-object v2

    invoke-virtual {v2}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->setCurrentBluetoothAdress(Ljava/lang/String;)V

    .line 315
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceScanActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lackmaniac/vescmonitor/Settings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/DeviceScanActivity;->startActivity(Landroid/content/Intent;)V

    .line 329
    :goto_0
    return-void

    .line 319
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "DEVICE_NAME"

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v2, "DEVICE_ADDRESS"

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->setCurrentBluetoothAdress(Ljava/lang/String;)V

    .line 324
    iget-boolean v2, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mScanning:Z

    if-eqz v2, :cond_1

    .line 325
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 326
    const/4 v2, 0x0

    iput-boolean v2, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mScanning:Z

    .line 328
    :cond_1
    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/DeviceScanActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 219
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 243
    :goto_0
    return v5

    .line 221
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "DEVICE_NAME"

    const-string v2, "Testdevice"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v1, "DEVICE_ADDRESS"

    const-string v2, "74:DA:EA:B1:5F:F3"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v1, "74:DA:EA:B1:5F:F3"

    invoke-static {v1}, Lackmaniac/vescmonitor/Utils;->setCurrentBluetoothAdress(Ljava/lang/String;)V

    .line 225
    iget-boolean v1, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mScanning:Z

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 227
    iput-boolean v3, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mScanning:Z

    .line 229
    :cond_0
    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/DeviceScanActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 232
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceScanActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/DeviceScanActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 235
    :sswitch_2
    new-instance v1, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;

    invoke-direct {v1, p0}, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;-><init>(Lackmaniac/vescmonitor/DeviceScanActivity;)V

    iput-object v1, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mLeDeviceListAdapter:Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;

    .line 236
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mLeDeviceListAdapter:Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;

    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/DeviceScanActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 237
    invoke-direct {p0, v5}, Lackmaniac/vescmonitor/DeviceScanActivity;->scanLeDevice(Z)V

    goto :goto_0

    .line 240
    :sswitch_3
    invoke-direct {p0, v3}, Lackmaniac/vescmonitor/DeviceScanActivity;->scanLeDevice(Z)V

    goto :goto_0

    .line 219
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0800cf -> :sswitch_1
        0x7f0800d2 -> :sswitch_2
        0x7f0800d5 -> :sswitch_3
        0x7f08016a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 284
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 285
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lackmaniac/vescmonitor/DeviceScanActivity;->scanLeDevice(Z)V

    .line 286
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mLeDeviceListAdapter:Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->clear()V

    .line 287
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v4, 0x0

    const v3, 0x104000a

    const/4 v2, 0x0

    .line 130
    packed-switch p1, :pswitch_data_0

    .line 189
    :goto_0
    return-void

    .line 132
    :pswitch_0
    array-length v1, p3

    if-lez v1, :cond_0

    aget v1, p3, v2

    if-nez v1, :cond_0

    .line 133
    const-string v1, "Scan Activity"

    const-string v2, "coarse location permission granted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Functionality limited"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 137
    const-string v1, "Since location access has not been granted, this app will not be able to discover beacons when in the background."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 138
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    new-instance v1, Lackmaniac/vescmonitor/DeviceScanActivity$1;

    invoke-direct {v1, p0}, Lackmaniac/vescmonitor/DeviceScanActivity$1;-><init>(Lackmaniac/vescmonitor/DeviceScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 151
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_1
    array-length v1, p3

    if-lez v1, :cond_1

    aget v1, p3, v2

    if-nez v1, :cond_1

    .line 152
    const-string v1, "Scan Activity"

    const-string v2, "coarse location permission granted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Functionality limited"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 156
    const-string v1, "Since the permission o write to the external stoage has not been granted, this app will not be able to store the realtime data."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 157
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    new-instance v1, Lackmaniac/vescmonitor/DeviceScanActivity$2;

    invoke-direct {v1, p0}, Lackmaniac/vescmonitor/DeviceScanActivity$2;-><init>(Lackmaniac/vescmonitor/DeviceScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 170
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_2
    array-length v1, p3

    if-lez v1, :cond_2

    aget v1, p3, v2

    if-nez v1, :cond_2

    .line 171
    const-string v1, "Scan Activity"

    const-string v2, "fine location permission granted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Functionality limited"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 175
    const-string v1, "Since the permission to access the fine GPS location has not been granted, this app will not be able to get the current location."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 177
    new-instance v1, Lackmaniac/vescmonitor/DeviceScanActivity$3;

    invoke-direct {v1, p0}, Lackmaniac/vescmonitor/DeviceScanActivity$3;-><init>(Lackmaniac/vescmonitor/DeviceScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 248
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 252
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "enableBtIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v3}, Lackmaniac/vescmonitor/DeviceScanActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 260
    .end local v0    # "enableBtIntent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;

    invoke-direct {v1, p0}, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;-><init>(Lackmaniac/vescmonitor/DeviceScanActivity;)V

    iput-object v1, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mLeDeviceListAdapter:Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;

    .line 261
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceScanActivity;->mLeDeviceListAdapter:Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;

    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/DeviceScanActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 262
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceScanActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lackmaniac/vescmonitor/DeviceScanActivity$4;

    invoke-direct {v2, p0}, Lackmaniac/vescmonitor/DeviceScanActivity$4;-><init>(Lackmaniac/vescmonitor/DeviceScanActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 269
    invoke-direct {p0, v3}, Lackmaniac/vescmonitor/DeviceScanActivity;->scanLeDevice(Z)V

    .line 270
    return-void
.end method
