.class Lackmaniac/vescmonitor/BoardInfo$4;
.super Ljava/lang/Object;
.source "BoardInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/BoardInfo;->changeTrip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/BoardInfo;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/BoardInfo;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/BoardInfo;

    .prologue
    .line 206
    iput-object p1, p0, Lackmaniac/vescmonitor/BoardInfo$4;->this$0:Lackmaniac/vescmonitor/BoardInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    const/4 v2, 0x0

    .line 209
    packed-switch p2, :pswitch_data_0

    .line 226
    :goto_0
    iget-object v0, p0, Lackmaniac/vescmonitor/BoardInfo$4;->this$0:Lackmaniac/vescmonitor/BoardInfo;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/BoardInfo;->finish()V

    .line 227
    iget-object v0, p0, Lackmaniac/vescmonitor/BoardInfo$4;->this$0:Lackmaniac/vescmonitor/BoardInfo;

    iget-object v1, p0, Lackmaniac/vescmonitor/BoardInfo$4;->this$0:Lackmaniac/vescmonitor/BoardInfo;

    invoke-virtual {v1}, Lackmaniac/vescmonitor/BoardInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->startActivity(Landroid/content/Intent;)V

    .line 229
    return-void

    .line 211
    :pswitch_0
    iget-object v0, p0, Lackmaniac/vescmonitor/BoardInfo$4;->this$0:Lackmaniac/vescmonitor/BoardInfo;

    const-string v1, "VESC_SETTINGS"

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/BoardInfo;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BI_TRIP_TO_SHOW"

    invoke-static {v1}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v0, p0, Lackmaniac/vescmonitor/BoardInfo$4;->this$0:Lackmaniac/vescmonitor/BoardInfo;

    const-string v1, "VESC_SETTINGS"

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/BoardInfo;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BI_TRIP_TO_SHOW"

    invoke-static {v1}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 217
    :pswitch_2
    iget-object v0, p0, Lackmaniac/vescmonitor/BoardInfo$4;->this$0:Lackmaniac/vescmonitor/BoardInfo;

    const-string v1, "VESC_SETTINGS"

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/BoardInfo;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BI_TRIP_TO_SHOW"

    invoke-static {v1}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 220
    :pswitch_3
    iget-object v0, p0, Lackmaniac/vescmonitor/BoardInfo$4;->this$0:Lackmaniac/vescmonitor/BoardInfo;

    const-string v1, "VESC_SETTINGS"

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/BoardInfo;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BI_TRIP_TO_SHOW"

    invoke-static {v1}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
