.class Lackmaniac/vescmonitor/Settings$8;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/Settings;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/Settings;Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/Settings;

    .prologue
    .line 135
    iput-object p1, p0, Lackmaniac/vescmonitor/Settings$8;->this$0:Lackmaniac/vescmonitor/Settings;

    iput-object p2, p0, Lackmaniac/vescmonitor/Settings$8;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .prologue
    .line 139
    :try_start_0
    iget-object v1, p0, Lackmaniac/vescmonitor/Settings$8;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "SAVE_GPS_POSITION"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 140
    iget-object v1, p0, Lackmaniac/vescmonitor/Settings$8;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ERROR"

    const-string v2, "error while writings save GPS position"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
