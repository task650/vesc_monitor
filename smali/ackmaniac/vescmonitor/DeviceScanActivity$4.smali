.class Lackmaniac/vescmonitor/DeviceScanActivity$4;
.super Ljava/lang/Object;
.source "DeviceScanActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/DeviceScanActivity;->onResume()V
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
    .line 262
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceScanActivity$4;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceScanActivity$4;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceScanActivity$4;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    invoke-static {v1}, Lackmaniac/vescmonitor/DeviceScanActivity;->access$000(Lackmaniac/vescmonitor/DeviceScanActivity;)Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->getDevice(I)Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    move-result-object v1

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/DeviceScanActivity;->access$100(Lackmaniac/vescmonitor/DeviceScanActivity;Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;)V

    .line 266
    const/4 v0, 0x1

    return v0
.end method
