.class Lackmaniac/vescmonitor/Modes$2$2$1;
.super Ljava/lang/Object;
.source "Modes.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/Modes$2$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lackmaniac/vescmonitor/Modes$2$2;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/Modes$2$2;)V
    .locals 0
    .param p1, "this$2"    # Lackmaniac/vescmonitor/Modes$2$2;

    .prologue
    .line 114
    iput-object p1, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 116
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    iget-object v2, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget v2, v2, Lackmaniac/vescmonitor/Modes$2$2;->val$selected:I

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Modes;->access$102(Lackmaniac/vescmonitor/Modes;I)I

    .line 118
    const/4 v6, 0x1

    .line 120
    .local v6, "hasNext":Z
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    const-string v2, "VESC_SETTINGS"

    invoke-virtual {v0, v2, v5}, Lackmaniac/vescmonitor/Modes;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 122
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    if-eqz v6, :cond_2

    .line 123
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->val$settings:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v2, v2, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v2, v2, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v2}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string v3, "NAME"

    invoke-static {v2, v3}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v6, 0x1

    .line 124
    :goto_1
    if-eqz v6, :cond_0

    .line 125
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    iget-object v2, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v2, v2, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v2, v2, Lackmaniac/vescmonitor/Modes$2;->val$settings:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v3, v3, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v3, v3, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v3}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v3

    iget-object v4, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v4, v4, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v4, v4, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v4}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static/range {v0 .. v5}, Lackmaniac/vescmonitor/Modes;->access$000(Lackmaniac/vescmonitor/Modes;Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;IIZ)V

    .line 126
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$108(Lackmaniac/vescmonitor/Modes;)I

    goto :goto_0

    :cond_1
    move v6, v5

    .line 123
    goto :goto_1

    .line 130
    :cond_2
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "NAME"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "PPM_MODE"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "USE_MAX_WATT"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "MAX_WATT"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "MAX_MOTOR_C"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "MAX_BATTERY_C"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "MIN_MOTOR_C"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "MIN_BATTERY_C"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "MAX_ERPM"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "MAX_SPEED"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "KEY_USE_OTHER_SETTINGS_FOR_FRONT"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "KEY_FRONT_CAN_CONTROLLERID_FIRST"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "KEY_FRONT_CAN_CONTROLLERID_SECOND"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "FRONT_USE_MAX_WATT"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "FRONT_MAX_WATT"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "FRONT_MAX_MOTOR_C"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "FRONT_MAX_BATTERY_C"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "FRONT_MIN_MOTOR_C"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "FRONT_MIN_BATTERY_C"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "USE_SPECIAL_THROOTLE_CURVE"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "TC_NY3"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "TC_NY2"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "TC_NY1"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "TC_Y1"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "TC_Y2"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "TC_Y3"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "TC_NX3"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "TC_NX2"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 162
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "TC_NX1"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 163
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "TC_X1"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 164
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "TC_X2"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "TC_X3"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "TC_BEZIER_NEG"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "TC_BEZIER_POS"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "KEY_USE_SPECIAL_CRUISE_CONTROL_PID"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "KEY_CRUISE_CONTROL_PID_KP"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "KEY_CRUISE_CONTROL_PID_KI"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 173
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "KEY_CRUISE_CONTROL_PID_KD"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "KEY_USE_SPECIAL_BRAKING_PID"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 175
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v0}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v0

    const-string v2, "KEY_PID_BRAKING_AT_ENABLED"

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Modes;->finish()V

    .line 180
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    iget-object v2, p0, Lackmaniac/vescmonitor/Modes$2$2$1;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v2, v2, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v2, v2, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Modes;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lackmaniac/vescmonitor/Modes;->startActivity(Landroid/content/Intent;)V

    .line 181
    return-void
.end method
