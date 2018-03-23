.class Lackmaniac/vescmonitor/DeviceControlActivity$16;
.super Ljava/lang/Object;
.source "DeviceControlActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/DeviceControlActivity;->registerNewDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$settings:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/DeviceControlActivity;Landroid/widget/EditText;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 2748
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$16;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    iput-object p2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$16;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lackmaniac/vescmonitor/DeviceControlActivity$16;->val$settings:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2750
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$16;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2752
    :try_start_0
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$16;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity$16;->val$input:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2757
    :goto_0
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$16;->val$settings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2758
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getCurrentBluetoothAdress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity$16;->val$input:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2759
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2761
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void

    .line 2753
    :catch_0
    move-exception v0

    .line 2754
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
