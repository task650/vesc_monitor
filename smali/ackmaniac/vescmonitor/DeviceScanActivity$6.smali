.class Lackmaniac/vescmonitor/DeviceScanActivity$6;
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

.field final synthetic val$deviceExtended:Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$settings:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/DeviceScanActivity;Landroid/widget/EditText;Landroid/content/SharedPreferences;Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/DeviceScanActivity;

    .prologue
    .line 377
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceScanActivity$6;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    iput-object p2, p0, Lackmaniac/vescmonitor/DeviceScanActivity$6;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lackmaniac/vescmonitor/DeviceScanActivity$6;->val$settings:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lackmaniac/vescmonitor/DeviceScanActivity$6;->val$deviceExtended:Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 380
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceScanActivity$6;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Delete"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 381
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceScanActivity$6;->val$settings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 382
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceScanActivity$6;->val$settings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 383
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceScanActivity$6;->val$deviceExtended:Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    invoke-virtual {v3}, Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 384
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 387
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 388
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceScanActivity$6;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/DeviceScanActivity;->access$000(Lackmaniac/vescmonitor/DeviceScanActivity;)Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;

    move-result-object v2

    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceScanActivity$6;->val$deviceExtended:Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;

    invoke-virtual {v2, v3}, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;->remove(Lackmaniac/vescmonitor/DeviceScanActivity$BluetoothDeviceExtended;)V

    .line 389
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceScanActivity$6;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    new-instance v3, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;

    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceScanActivity$6;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    invoke-direct {v3, v4}, Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;-><init>(Lackmaniac/vescmonitor/DeviceScanActivity;)V

    invoke-static {v2, v3}, Lackmaniac/vescmonitor/DeviceScanActivity;->access$002(Lackmaniac/vescmonitor/DeviceScanActivity;Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;)Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;

    .line 390
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceScanActivity$6;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceScanActivity$6;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    invoke-static {v3}, Lackmaniac/vescmonitor/DeviceScanActivity;->access$000(Lackmaniac/vescmonitor/DeviceScanActivity;)Lackmaniac/vescmonitor/DeviceScanActivity$LeDeviceListAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lackmaniac/vescmonitor/DeviceScanActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 391
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceScanActivity$6;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lackmaniac/vescmonitor/DeviceScanActivity;->access$500(Lackmaniac/vescmonitor/DeviceScanActivity;Z)V

    .line 393
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    return-void
.end method
