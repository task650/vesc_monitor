.class Lackmaniac/vescmonitor/DeviceControlActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "DeviceControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lackmaniac/vescmonitor/DeviceControlActivity;
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
    .line 690
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$3;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 693
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.example.bluetooth.le.ACTION_GATT_CONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 695
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$3;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity$3;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    const-string v4, "VESC_SETTINGS"

    invoke-virtual {v3, v4, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getCurrentBluetoothAdress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "No Name"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$4400(Lackmaniac/vescmonitor/DeviceControlActivity;Ljava/lang/String;)V

    .line 696
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$3;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$4502(Lackmaniac/vescmonitor/DeviceControlActivity;Z)Z

    .line 697
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$3;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    const v3, 0x7f0d0037

    invoke-static {v2, v3}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$4600(Lackmaniac/vescmonitor/DeviceControlActivity;I)V

    .line 698
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$3;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->invalidateOptionsMenu()V

    .line 701
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$3;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->registerNewDevice()V

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    const-string v2, "com.example.bluetooth.le.ACTION_GATT_DISCONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 704
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$3;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$4700(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    .line 706
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$3;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v2, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$4502(Lackmaniac/vescmonitor/DeviceControlActivity;Z)Z

    .line 707
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$3;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    const v3, 0x7f0d003e

    invoke-static {v2, v3}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$4600(Lackmaniac/vescmonitor/DeviceControlActivity;I)V

    .line 714
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$3;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v2, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$002(Lackmaniac/vescmonitor/DeviceControlActivity;Z)Z

    .line 715
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$3;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 716
    :cond_2
    const-string v2, "com.example.bluetooth.le.ACTION_GATT_SERVICES_DISCOVERED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 717
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$3;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$4800(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    .line 718
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$3;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$200(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    .line 719
    const-string v2, "COMM THREAD"

    const-string v3, "getFirmwareVersion 3"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :goto_1
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$3;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$300(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    goto :goto_0

    .line 722
    :catch_0
    move-exception v1

    .line 723
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 727
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const-string v2, "com.example.bluetooth.le.ACTION_DATA_AVAILABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 728
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$3;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$4900(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    goto :goto_0
.end method
