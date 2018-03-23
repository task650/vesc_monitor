.class public Lackmaniac/vescmonitor/BoardInfo;
.super Landroid/app/Activity;
.source "BoardInfo.java"


# instance fields
.field actualTrip:Ljava/lang/String;

.field settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lackmaniac/vescmonitor/BoardInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/BoardInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lackmaniac/vescmonitor/BoardInfo;->resetData(Ljava/lang/String;)V

    return-void
.end method

.method private getValueForTrip(Ljava/lang/String;)F
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 113
    iget-object v2, p0, Lackmaniac/vescmonitor/BoardInfo;->actualTrip:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lackmaniac/vescmonitor/BoardInfo;->settings:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 118
    :goto_0
    return v2

    .line 116
    :cond_0
    iget-object v2, p0, Lackmaniac/vescmonitor/BoardInfo;->settings:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 117
    .local v0, "totalValue":F
    iget-object v2, p0, Lackmaniac/vescmonitor/BoardInfo;->settings:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lackmaniac/vescmonitor/BoardInfo;->actualTrip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 118
    .local v1, "tripValue":F
    sub-float v2, v0, v1

    goto :goto_0
.end method

.method private getValueForTripLong(Ljava/lang/String;)J
    .locals 10
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    .line 123
    iget-object v4, p0, Lackmaniac/vescmonitor/BoardInfo;->actualTrip:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    iget-object v4, p0, Lackmaniac/vescmonitor/BoardInfo;->settings:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 128
    :goto_0
    return-wide v4

    .line 126
    :cond_0
    iget-object v4, p0, Lackmaniac/vescmonitor/BoardInfo;->settings:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 127
    .local v0, "totalValue":J
    iget-object v4, p0, Lackmaniac/vescmonitor/BoardInfo;->settings:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lackmaniac/vescmonitor/BoardInfo;->actualTrip:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 128
    .local v2, "tripValue":J
    sub-long v4, v0, v2

    goto :goto_0
.end method

.method private resetData(Ljava/lang/String;)V
    .locals 8
    .param p1, "trip"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 133
    const-string v2, "VESC_SETTINGS"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lackmaniac/vescmonitor/BoardInfo;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 134
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BI_TOTAL_KM"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BI_WH_DRAWN"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BI_WH_CHARGED"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BI_AH_DRAWN"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BI_AH_CHARGED"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_4
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BI_TOTAL_TIME"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-wide v4, v6

    :goto_5
    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BI_RIDING_TIME"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_6
    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BI_RIDING_WATT"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_7
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BI_TOTAL_USED_POS_TIME"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_8
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BI_TOTAL_USED_NEG_TIME"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    :goto_9
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BI_ACTIVE_WATT"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_a
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BI_USED_MOTOR_AMPS_POS"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v3

    :goto_b
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BI_USED_BATTERY_AMPS_POS"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v3

    :goto_c
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BI_USED_MOTOR_AMPS_NEG"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v3

    :goto_d
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BI_USED_BATTERY_AMPS_NEG"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v3

    :goto_e
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BI_RIDING_MOTOR_AMPS_POS"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v3

    :goto_f
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BI_RIDING_MOTOR_AMPS_NEG"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v3

    :goto_10
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BI_RIDING_BATTERY_AMPS_POS"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v3

    :goto_11
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BI_RIDING_BATTERY_AMPS_NEG"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    :goto_12
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    return-void

    .line 135
    :cond_0
    const-string v2, "BI_TOTAL_KM"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    goto/16 :goto_0

    .line 136
    :cond_1
    const-string v2, "BI_WH_DRAWN"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    goto/16 :goto_1

    .line 137
    :cond_2
    const-string v2, "BI_WH_CHARGED"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    goto/16 :goto_2

    .line 138
    :cond_3
    const-string v2, "BI_AH_DRAWN"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    goto/16 :goto_3

    .line 139
    :cond_4
    const-string v2, "BI_AH_CHARGED"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    goto/16 :goto_4

    .line 140
    :cond_5
    const-string v4, "BI_TOTAL_TIME"

    invoke-static {v4}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    goto/16 :goto_5

    .line 141
    :cond_6
    const-string v4, "BI_RIDING_TIME"

    invoke-static {v4}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    goto/16 :goto_6

    .line 142
    :cond_7
    const-string v2, "BI_RIDING_WATT"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    goto/16 :goto_7

    .line 143
    :cond_8
    const-string v2, "BI_TOTAL_USED_POS_TIME"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    goto/16 :goto_8

    .line 144
    :cond_9
    const-string v2, "BI_TOTAL_USED_NEG_TIME"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    goto/16 :goto_9

    .line 145
    :cond_a
    const-string v2, "BI_ACTIVE_WATT"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    goto/16 :goto_a

    .line 147
    :cond_b
    const-string v2, "BI_USED_MOTOR_AMPS_POS"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    goto/16 :goto_b

    .line 148
    :cond_c
    const-string v2, "BI_USED_BATTERY_AMPS_POS"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    goto/16 :goto_c

    .line 149
    :cond_d
    const-string v2, "BI_USED_MOTOR_AMPS_NEG"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    goto/16 :goto_d

    .line 150
    :cond_e
    const-string v2, "BI_USED_BATTERY_AMPS_NEG"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    goto/16 :goto_e

    .line 152
    :cond_f
    const-string v2, "BI_RIDING_MOTOR_AMPS_POS"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    goto/16 :goto_f

    .line 153
    :cond_10
    const-string v2, "BI_RIDING_MOTOR_AMPS_NEG"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    goto/16 :goto_10

    .line 154
    :cond_11
    const-string v2, "BI_RIDING_BATTERY_AMPS_POS"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    goto/16 :goto_11

    .line 155
    :cond_12
    const-string v4, "BI_RIDING_BATTERY_AMPS_NEG"

    invoke-static {v4}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    goto/16 :goto_12
.end method


# virtual methods
.method public changeTrip()V
    .locals 5

    .prologue
    .line 198
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string v4, "Trip 1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Trip 2"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Trip 3"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Total"

    aput-object v4, v2, v3

    .line 203
    .local v2, "items":[Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 204
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "Please select the trip you want to show"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 206
    new-instance v3, Lackmaniac/vescmonitor/BoardInfo$4;

    invoke-direct {v3, p0}, Lackmaniac/vescmonitor/BoardInfo$4;-><init>(Lackmaniac/vescmonitor/BoardInfo;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 231
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 232
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 233
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 37
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v30, 0x7f0a001c

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->setContentView(I)V

    .line 26
    const-string v30, "VESC_SETTINGS"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/BoardInfo;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v30

    const-string v31, "BI_TRIP_TO_SHOW"

    invoke-static/range {v31 .. v31}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v32, ""

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/BoardInfo;->actualTrip:Ljava/lang/String;

    .line 27
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BoardInfo;->actualTrip:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, ""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 28
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/BoardInfo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v30

    const-string v31, "Total"

    invoke-virtual/range {v30 .. v31}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/BoardInfo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v30

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 35
    const-string v30, "VESC_SETTINGS"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/BoardInfo;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/BoardInfo;->settings:Landroid/content/SharedPreferences;

    .line 37
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BoardInfo;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v30, v0

    const-string v31, "DISTANCE_UNIT"

    invoke-static/range {v31 .. v31}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v27

    .line 39
    .local v27, "distanceUnit":I
    const-string v30, "BI_TOTAL_KM"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->getValueForTrip(Ljava/lang/String;)F

    move-result v31

    const/16 v30, 0x1

    move/from16 v0, v27

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    const v30, 0x3fcdfeda

    :goto_1
    div-float v7, v31, v30

    .line 40
    .local v7, "biDistance":F
    const-string v30, "BI_WH_DRAWN"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->getValueForTrip(Ljava/lang/String;)F

    move-result v26

    .line 41
    .local v26, "biWhDrawn":F
    const-string v30, "BI_WH_CHARGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->getValueForTrip(Ljava/lang/String;)F

    move-result v25

    .line 42
    .local v25, "biWhCharged":F
    const-string v30, "BI_AH_DRAWN"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->getValueForTrip(Ljava/lang/String;)F

    move-result v6

    .line 43
    .local v6, "biAhDrawn":F
    const-string v30, "BI_AH_CHARGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->getValueForTrip(Ljava/lang/String;)F

    move-result v5

    .line 44
    .local v5, "biAhCharged":F
    const-string v30, "BI_TOTAL_TIME"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->getValueForTripLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 45
    .local v18, "biTotalTime":J
    const-string v30, "BI_RIDING_TIME"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->getValueForTripLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 46
    .local v14, "biRidingTime":J
    const/high16 v30, 0x447a0000    # 1000.0f

    mul-float v30, v30, v7

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x447a0000    # 1000.0f

    div-float v31, v31, v32

    div-float v30, v30, v31

    const v31, 0x40666666    # 3.6f

    mul-float v16, v30, v31

    .line 47
    .local v16, "biTotalAvgSpeed":F
    const/high16 v30, 0x447a0000    # 1000.0f

    mul-float v30, v30, v7

    long-to-float v0, v14

    move/from16 v31, v0

    const/high16 v32, 0x447a0000    # 1000.0f

    div-float v31, v31, v32

    div-float v30, v30, v31

    const v31, 0x40666666    # 3.6f

    mul-float v8, v30, v31

    .line 49
    .local v8, "biRidingAvgSpeed":F
    const-string v30, "BI_RIDING_WATT"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->getValueForTrip(Ljava/lang/String;)F

    move-result v13

    .line 50
    .local v13, "biRidingWatt":F
    const-string v30, "BI_TOTAL_USED_POS_TIME"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->getValueForTrip(Ljava/lang/String;)F

    move-result v20

    .line 51
    .local v20, "biTotalUsedPosTime":F
    const-string v30, "BI_TOTAL_USED_NEG_TIME"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->getValueForTrip(Ljava/lang/String;)F

    move-result v17

    .line 52
    .local v17, "biTotalUsedNegTime":F
    const-string v30, "BI_ACTIVE_WATT"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->getValueForTrip(Ljava/lang/String;)F

    move-result v4

    .line 54
    .local v4, "biActiveWatt":F
    const-string v30, "BI_USED_MOTOR_AMPS_POS"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->getValueForTrip(Ljava/lang/String;)F

    move-result v24

    .line 55
    .local v24, "biUsedMotorAmpsPos":F
    const-string v30, "BI_USED_MOTOR_AMPS_NEG"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->getValueForTrip(Ljava/lang/String;)F

    move-result v23

    .line 56
    .local v23, "biUsedMotorAmpsNeg":F
    const-string v30, "BI_USED_BATTERY_AMPS_POS"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->getValueForTrip(Ljava/lang/String;)F

    move-result v22

    .line 57
    .local v22, "biUsedBatteryAmpsPos":F
    const-string v30, "BI_USED_BATTERY_AMPS_NEG"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->getValueForTrip(Ljava/lang/String;)F

    move-result v21

    .line 59
    .local v21, "biUsedBatteryAmpsNeg":F
    const-string v30, "BI_RIDING_MOTOR_AMPS_POS"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->getValueForTrip(Ljava/lang/String;)F

    move-result v12

    .line 60
    .local v12, "biRidingMotorAmpsPos":F
    const-string v30, "BI_RIDING_MOTOR_AMPS_NEG"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->getValueForTrip(Ljava/lang/String;)F

    move-result v11

    .line 61
    .local v11, "biRidingMotorAmpsNeg":F
    const-string v30, "BI_RIDING_BATTERY_AMPS_POS"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->getValueForTrip(Ljava/lang/String;)F

    move-result v10

    .line 62
    .local v10, "biRidingBatteryAmpsPos":F
    const-string v30, "BI_RIDING_BATTERY_AMPS_NEG"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->getValueForTrip(Ljava/lang/String;)F

    move-result v9

    .line 64
    .local v9, "biRidingBatteryAmpsNeg":F
    const v30, 0x7f0801ae

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 65
    .local v29, "tvBITotalDistance":Landroid/widget/TextView;
    sget-object v30, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v31, "%.3f"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v30 .. v32}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v30, 0x7f0801af

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/BoardInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const/16 v31, 0x1

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    const v31, 0x7f0d008e

    :goto_2
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v30, 0x7f0801b2

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v32, "%.3f"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v30, 0x7f0801b1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v32, "%.3f"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const v30, 0x7f0801b3

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v32, "%.3f"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    sub-float v35, v26, v25

    div-float v35, v35, v7

    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v30, 0x7f0801b4

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Average Wh/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/BoardInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const/16 v31, 0x1

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    const v31, 0x7f0d005c

    :goto_3
    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const v30, 0x7f08019c

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v32, "%.3f"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v30, 0x7f08019b

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v32, "%.3f"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v30, 0x7f08019d

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v32, "%.3f"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    sub-float v35, v6, v5

    div-float v35, v35, v7

    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const v30, 0x7f08019e

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Average Ah/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/BoardInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const/16 v31, 0x1

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_4

    const v31, 0x7f0d005c

    :goto_4
    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v30, 0x7f0801b0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    invoke-static/range {v18 .. v19}, Lackmaniac/vescmonitor/Utils;->getHourMinuteSeconds(J)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v30, 0x7f0801ab

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    invoke-static {v14, v15}, Lackmaniac/vescmonitor/Utils;->getHourMinuteSeconds(J)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v30, 0x7f0801ac

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v32, "%.1f"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v30, 0x7f0801ad

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/BoardInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const/16 v31, 0x1

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    const v31, 0x7f0d008f

    :goto_5
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v30, 0x7f0801a9

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v32, "%.1f"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v30, 0x7f0801aa

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/BoardInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const/16 v31, 0x1

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    const v31, 0x7f0d008f

    :goto_6
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const v30, 0x7f0801a7

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v32, "%.0f"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    add-float v35, v20, v17

    div-float v35, v4, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v30, 0x7f0801a8

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v32, "%.0f"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    long-to-float v0, v14

    move/from16 v35, v0

    const/high16 v36, 0x447a0000    # 1000.0f

    div-float v35, v35, v36

    div-float v35, v13, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const v30, 0x7f0801a6

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v32, "%.2f"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    div-float v35, v24, v20

    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v30, 0x7f0801a5

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v32, "%.2f"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    div-float v35, v23, v17

    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v30, 0x7f0801a2

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v32, "%.2f"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    div-float v35, v22, v20

    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v30, 0x7f0801a1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v32, "%.2f"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    div-float v35, v21, v17

    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v30, 0x7f0801a4

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v32, "%.2f"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    long-to-float v0, v14

    move/from16 v35, v0

    const/high16 v36, 0x447a0000    # 1000.0f

    div-float v35, v35, v36

    div-float v35, v12, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v30, 0x7f0801a3

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v32, "%.2f"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    long-to-float v0, v14

    move/from16 v35, v0

    const/high16 v36, 0x447a0000    # 1000.0f

    div-float v35, v35, v36

    div-float v35, v11, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v30, 0x7f0801a0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v32, "%.2f"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    long-to-float v0, v14

    move/from16 v35, v0

    const/high16 v36, 0x447a0000    # 1000.0f

    div-float v35, v35, v36

    div-float v35, v10, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v30, 0x7f08019f

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v32, "%.2f"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    long-to-float v0, v14

    move/from16 v35, v0

    const/high16 v36, 0x447a0000    # 1000.0f

    div-float v35, v35, v36

    div-float v35, v9, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const v30, 0x7f0800c0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    .line 103
    .local v28, "mainLayout":Landroid/widget/LinearLayout;
    new-instance v30, Lackmaniac/vescmonitor/BoardInfo$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/BoardInfo$1;-><init>(Lackmaniac/vescmonitor/BoardInfo;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 110
    return-void

    .line 30
    .end local v4    # "biActiveWatt":F
    .end local v5    # "biAhCharged":F
    .end local v6    # "biAhDrawn":F
    .end local v7    # "biDistance":F
    .end local v8    # "biRidingAvgSpeed":F
    .end local v9    # "biRidingBatteryAmpsNeg":F
    .end local v10    # "biRidingBatteryAmpsPos":F
    .end local v11    # "biRidingMotorAmpsNeg":F
    .end local v12    # "biRidingMotorAmpsPos":F
    .end local v13    # "biRidingWatt":F
    .end local v14    # "biRidingTime":J
    .end local v16    # "biTotalAvgSpeed":F
    .end local v17    # "biTotalUsedNegTime":F
    .end local v18    # "biTotalTime":J
    .end local v20    # "biTotalUsedPosTime":F
    .end local v21    # "biUsedBatteryAmpsNeg":F
    .end local v22    # "biUsedBatteryAmpsPos":F
    .end local v23    # "biUsedMotorAmpsNeg":F
    .end local v24    # "biUsedMotorAmpsPos":F
    .end local v25    # "biWhCharged":F
    .end local v26    # "biWhDrawn":F
    .end local v27    # "distanceUnit":I
    .end local v28    # "mainLayout":Landroid/widget/LinearLayout;
    .end local v29    # "tvBITotalDistance":Landroid/widget/TextView;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/BoardInfo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Trip "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BoardInfo;->actualTrip:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 39
    .restart local v27    # "distanceUnit":I
    :cond_1
    const/high16 v30, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 66
    .restart local v4    # "biActiveWatt":F
    .restart local v5    # "biAhCharged":F
    .restart local v6    # "biAhDrawn":F
    .restart local v7    # "biDistance":F
    .restart local v8    # "biRidingAvgSpeed":F
    .restart local v9    # "biRidingBatteryAmpsNeg":F
    .restart local v10    # "biRidingBatteryAmpsPos":F
    .restart local v11    # "biRidingMotorAmpsNeg":F
    .restart local v12    # "biRidingMotorAmpsPos":F
    .restart local v13    # "biRidingWatt":F
    .restart local v14    # "biRidingTime":J
    .restart local v16    # "biTotalAvgSpeed":F
    .restart local v17    # "biTotalUsedNegTime":F
    .restart local v18    # "biTotalTime":J
    .restart local v20    # "biTotalUsedPosTime":F
    .restart local v21    # "biUsedBatteryAmpsNeg":F
    .restart local v22    # "biUsedBatteryAmpsPos":F
    .restart local v23    # "biUsedMotorAmpsNeg":F
    .restart local v24    # "biUsedMotorAmpsPos":F
    .restart local v25    # "biWhCharged":F
    .restart local v26    # "biWhDrawn":F
    .restart local v29    # "tvBITotalDistance":Landroid/widget/TextView;
    :cond_2
    const v31, 0x7f0d008b

    goto/16 :goto_2

    .line 71
    :cond_3
    const v31, 0x7f0d004a

    goto/16 :goto_3

    .line 76
    :cond_4
    const v31, 0x7f0d004a

    goto/16 :goto_4

    .line 82
    :cond_5
    const v31, 0x7f0d008c

    goto/16 :goto_5

    .line 85
    :cond_6
    const v31, 0x7f0d008c

    goto/16 :goto_6
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 237
    invoke-virtual {p0}, Lackmaniac/vescmonitor/BoardInfo;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 243
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 251
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 245
    :sswitch_0
    invoke-virtual {p0}, Lackmaniac/vescmonitor/BoardInfo;->changeTrip()V

    goto :goto_0

    .line 248
    :sswitch_1
    invoke-virtual {p0}, Lackmaniac/vescmonitor/BoardInfo;->onBackPressed()V

    goto :goto_0

    .line 243
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0800d3 -> :sswitch_0
    .end sparse-switch
.end method

.method public resetTrip()V
    .locals 4

    .prologue
    .line 162
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lackmaniac/vescmonitor/BoardInfo;->actualTrip:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    const-string v2, "Do you want to reset all Trip information."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 165
    const-string v2, "Be aware that all trips will be reset. To do this you must be disconnected. You can disconnect in the main screen."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 171
    :goto_0
    const-string v2, "OK"

    new-instance v3, Lackmaniac/vescmonitor/BoardInfo$2;

    invoke-direct {v3, p0}, Lackmaniac/vescmonitor/BoardInfo$2;-><init>(Lackmaniac/vescmonitor/BoardInfo;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    const-string v2, "Cancel"

    new-instance v3, Lackmaniac/vescmonitor/BoardInfo$3;

    invoke-direct {v3, p0}, Lackmaniac/vescmonitor/BoardInfo$3;-><init>(Lackmaniac/vescmonitor/BoardInfo;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 193
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 194
    return-void

    .line 167
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do you want to reset Trip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lackmaniac/vescmonitor/BoardInfo;->actualTrip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
