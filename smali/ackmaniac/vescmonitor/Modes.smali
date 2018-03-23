.class public Lackmaniac/vescmonitor/Modes;
.super Landroid/app/Activity;
.source "Modes.java"


# instance fields
.field private counter:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lackmaniac/vescmonitor/Modes;Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;IIZ)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/Modes;
    .param p1, "x1"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "x2"    # Landroid/content/SharedPreferences;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .prologue
    .line 18
    invoke-direct/range {p0 .. p5}, Lackmaniac/vescmonitor/Modes;->exchangeSettings(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;IIZ)V

    return-void
.end method

.method static synthetic access$100(Lackmaniac/vescmonitor/Modes;)I
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/Modes;

    .prologue
    .line 18
    iget v0, p0, Lackmaniac/vescmonitor/Modes;->counter:I

    return v0
.end method

.method static synthetic access$102(Lackmaniac/vescmonitor/Modes;I)I
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/Modes;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lackmaniac/vescmonitor/Modes;->counter:I

    return p1
.end method

.method static synthetic access$108(Lackmaniac/vescmonitor/Modes;)I
    .locals 2
    .param p0, "x0"    # Lackmaniac/vescmonitor/Modes;

    .prologue
    .line 18
    iget v0, p0, Lackmaniac/vescmonitor/Modes;->counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lackmaniac/vescmonitor/Modes;->counter:I

    return v0
.end method

.method private exchangeSettings(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;IIZ)V
    .locals 9
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "settings"    # Landroid/content/SharedPreferences;
    .param p3, "writenumber"    # I
    .param p4, "readnumber"    # I
    .param p5, "isCopy"    # Z

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f400000    # 0.75f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    .line 211
    const-string v0, "NAME"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NAME"

    invoke-static {p4, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p5, :cond_0

    const-string v0, " Copy"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    const-string v0, "PPM_MODE"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PPM_MODE"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 213
    const-string v0, "USE_MAX_WATT"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USE_MAX_WATT"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 214
    const-string v0, "MAX_WATT"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAX_WATT"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 215
    const-string v0, "MAX_MOTOR_C"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAX_MOTOR_C"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 216
    const-string v0, "MAX_BATTERY_C"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAX_BATTERY_C"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 217
    const-string v0, "MIN_MOTOR_C"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIN_MOTOR_C"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 218
    const-string v0, "MIN_BATTERY_C"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIN_BATTERY_C"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 219
    const-string v0, "MAX_ERPM"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAX_ERPM"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 220
    const-string v0, "MAX_SPEED"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAX_SPEED"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 222
    const-string v0, "KEY_USE_OTHER_SETTINGS_FOR_FRONT"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEY_USE_OTHER_SETTINGS_FOR_FRONT"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 223
    const-string v0, "KEY_FRONT_CAN_CONTROLLERID_FIRST"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEY_FRONT_CAN_CONTROLLERID_FIRST"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 224
    const-string v0, "KEY_FRONT_CAN_CONTROLLERID_SECOND"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEY_FRONT_CAN_CONTROLLERID_SECOND"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 225
    const-string v0, "FRONT_USE_MAX_WATT"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FRONT_USE_MAX_WATT"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 226
    const-string v0, "FRONT_MAX_WATT"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FRONT_MAX_WATT"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 227
    const-string v0, "FRONT_MAX_MOTOR_C"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FRONT_MAX_MOTOR_C"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 228
    const-string v0, "FRONT_MAX_BATTERY_C"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FRONT_MAX_BATTERY_C"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 229
    const-string v0, "FRONT_MIN_MOTOR_C"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FRONT_MIN_MOTOR_C"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 230
    const-string v0, "FRONT_MIN_BATTERY_C"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FRONT_MIN_BATTERY_C"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 232
    const-string v0, "USE_SPECIAL_THROOTLE_CURVE"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USE_SPECIAL_THROOTLE_CURVE"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 234
    const-string v0, "TC_NY3"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TC_NY3"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 235
    const-string v0, "TC_NY2"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TC_NY2"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 236
    const-string v0, "TC_NY1"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TC_NY1"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 237
    const-string v0, "TC_Y1"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TC_Y1"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 238
    const-string v0, "TC_Y2"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TC_Y2"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 239
    const-string v0, "TC_Y3"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TC_Y3"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 241
    const-string v0, "TC_NX3"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TC_NX3"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 242
    const-string v0, "TC_NX2"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TC_NX2"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 243
    const-string v0, "TC_NX1"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TC_NX1"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 244
    const-string v0, "TC_X1"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TC_X1"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 245
    const-string v0, "TC_X2"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TC_X2"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 246
    const-string v0, "TC_X3"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TC_X3"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 248
    const-string v0, "TC_BEZIER_NEG"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TC_BEZIER_NEG"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 249
    const-string v0, "TC_BEZIER_POS"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TC_BEZIER_POS"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 251
    const-string v0, "KEY_USE_SPECIAL_CRUISE_CONTROL_PID"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEY_USE_SPECIAL_CRUISE_CONTROL_PID"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 252
    const-string v0, "KEY_CRUISE_CONTROL_PID_KP"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEY_CRUISE_CONTROL_PID_KP"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3b449ba6    # 0.003f

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 253
    const-string v0, "KEY_CRUISE_CONTROL_PID_KI"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEY_CRUISE_CONTROL_PID_KI"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3b449ba6    # 0.003f

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 254
    const-string v0, "KEY_CRUISE_CONTROL_PID_KD"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEY_CRUISE_CONTROL_PID_KD"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 255
    const-string v0, "KEY_USE_SPECIAL_BRAKING_PID"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEY_USE_SPECIAL_BRAKING_PID"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 256
    const-string v0, "KEY_PID_BRAKING_AT_ENABLED"

    invoke-static {p3, v0}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEY_PID_BRAKING_AT_ENABLED"

    invoke-static {p4, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 257
    return-void

    .line 211
    :cond_0
    const-string v0, ""

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v7, 0x7f0a001f

    invoke-virtual {p0, v7}, Lackmaniac/vescmonitor/Modes;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lackmaniac/vescmonitor/Modes;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 29
    const-string v7, "VESC_SETTINGS"

    invoke-virtual {p0, v7, v6}, Lackmaniac/vescmonitor/Modes;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 32
    .local v4, "settings":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v3, "modes":Ljava/util/List;, "Ljava/util/List<Lackmaniac/vescmonitor/Mode;>;"
    iput v5, p0, Lackmaniac/vescmonitor/Modes;->counter:I

    .line 34
    const/4 v1, 0x1

    .line 35
    .local v1, "hasNext":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 36
    iget v7, p0, Lackmaniac/vescmonitor/Modes;->counter:I

    const-string v8, "NAME"

    invoke-static {v7, v8}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move v1, v5

    .line 37
    :goto_1
    if-eqz v1, :cond_0

    .line 38
    new-instance v7, Lackmaniac/vescmonitor/Mode;

    iget v8, p0, Lackmaniac/vescmonitor/Modes;->counter:I

    invoke-direct {v7, v4, v8}, Lackmaniac/vescmonitor/Mode;-><init>(Landroid/content/SharedPreferences;I)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget v7, p0, Lackmaniac/vescmonitor/Modes;->counter:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lackmaniac/vescmonitor/Modes;->counter:I

    goto :goto_0

    :cond_1
    move v1, v6

    .line 36
    goto :goto_1

    .line 43
    :cond_2
    new-instance v0, Lackmaniac/vescmonitor/CustomListModeDialog;

    invoke-direct {v0, p0, v3}, Lackmaniac/vescmonitor/CustomListModeDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 45
    .local v0, "clad":Lackmaniac/vescmonitor/CustomListModeDialog;
    const v6, 0x7f0800ed

    invoke-virtual {p0, v6}, Lackmaniac/vescmonitor/Modes;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 47
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 50
    new-instance v5, Lackmaniac/vescmonitor/Modes$1;

    invoke-direct {v5, p0}, Lackmaniac/vescmonitor/Modes$1;-><init>(Lackmaniac/vescmonitor/Modes;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 59
    new-instance v5, Lackmaniac/vescmonitor/Modes$2;

    invoke-direct {v5, p0, v4}, Lackmaniac/vescmonitor/Modes$2;-><init>(Lackmaniac/vescmonitor/Modes;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 208
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 261
    invoke-virtual {p0}, Lackmaniac/vescmonitor/Modes;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 267
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 286
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    .line 269
    :sswitch_0
    const-string v6, "VESC_SETTINGS"

    invoke-virtual {p0, v6, v5}, Lackmaniac/vescmonitor/Modes;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 270
    .local v3, "settings":Landroid/content/SharedPreferences;
    const/4 v0, 0x1

    .line 271
    .local v0, "counter":I
    const/4 v1, 0x1

    .line 272
    .local v1, "hasNext":Z
    :cond_0
    :goto_1
    if-eqz v1, :cond_2

    .line 273
    const-string v6, "NAME"

    invoke-static {v0, v6}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move v1, v4

    .line 274
    :goto_2
    if-eqz v1, :cond_0

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v1, v5

    .line 273
    goto :goto_2

    .line 278
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lackmaniac/vescmonitor/Modes;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lackmaniac/vescmonitor/ModeSettings;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "MODE"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    invoke-virtual {p0, v2}, Lackmaniac/vescmonitor/Modes;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 283
    .end local v0    # "counter":I
    .end local v1    # "hasNext":Z
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "settings":Landroid/content/SharedPreferences;
    :sswitch_1
    invoke-virtual {p0}, Lackmaniac/vescmonitor/Modes;->onBackPressed()V

    goto :goto_0

    .line 267
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0800cb -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 292
    invoke-virtual {p0}, Lackmaniac/vescmonitor/Modes;->finish()V

    .line 293
    invoke-virtual {p0}, Lackmaniac/vescmonitor/Modes;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/Modes;->startActivity(Landroid/content/Intent;)V

    .line 294
    return-void
.end method
