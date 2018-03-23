.class public Lackmaniac/vescmonitor/BluetoothLeService$LocalBinder;
.super Landroid/os/Binder;
.source "BluetoothLeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lackmaniac/vescmonitor/BluetoothLeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/BluetoothLeService;


# direct methods
.method public constructor <init>(Lackmaniac/vescmonitor/BluetoothLeService;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/BluetoothLeService;

    .prologue
    .line 170
    iput-object p1, p0, Lackmaniac/vescmonitor/BluetoothLeService$LocalBinder;->this$0:Lackmaniac/vescmonitor/BluetoothLeService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lackmaniac/vescmonitor/BluetoothLeService;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lackmaniac/vescmonitor/BluetoothLeService$LocalBinder;->this$0:Lackmaniac/vescmonitor/BluetoothLeService;

    return-object v0
.end method
