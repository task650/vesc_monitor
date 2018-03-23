.class Lackmaniac/vescmonitor/DeviceScanActivity$7;
.super Ljava/lang/Object;
.source "DeviceScanActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/DeviceScanActivity;->showDeleteDialog(Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;)V
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
    .line 395
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceScanActivity$7;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 397
    return-void
.end method
