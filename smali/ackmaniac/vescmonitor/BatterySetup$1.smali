.class Lackmaniac/vescmonitor/BatterySetup$1;
.super Ljava/lang/Object;
.source "BatterySetup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/BatterySetup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/BatterySetup;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/BatterySetup;Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/BatterySetup;

    .prologue
    .line 69
    iput-object p1, p0, Lackmaniac/vescmonitor/BatterySetup$1;->this$0:Lackmaniac/vescmonitor/BatterySetup;

    iput-object p2, p0, Lackmaniac/vescmonitor/BatterySetup$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .prologue
    .line 73
    :try_start_0
    iget-object v3, p0, Lackmaniac/vescmonitor/BatterySetup$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "PLAY_BATTERY_ALARM"

    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 74
    iget-object v3, p0, Lackmaniac/vescmonitor/BatterySetup$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 75
    if-eqz p2, :cond_0

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.resource://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lackmaniac/vescmonitor/BatterySetup$1;->this$0:Lackmaniac/vescmonitor/BatterySetup;

    invoke-virtual {v4}, Lackmaniac/vescmonitor/BatterySetup;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0c0005

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 77
    .local v1, "notification":Landroid/net/Uri;
    iget-object v3, p0, Lackmaniac/vescmonitor/BatterySetup$1;->this$0:Lackmaniac/vescmonitor/BatterySetup;

    invoke-virtual {v3}, Lackmaniac/vescmonitor/BatterySetup;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 78
    .local v2, "r":Landroid/media/Ringtone;
    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1    # "notification":Landroid/net/Uri;
    .end local v2    # "r":Landroid/media/Ringtone;
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ERROR"

    const-string v4, "error while writings save play battery alarm"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
