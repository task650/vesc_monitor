.class Lackmaniac/vescmonitor/Mode;
.super Ljava/lang/Object;
.source "Mode.java"


# instance fields
.field private maxBatteryCurent:F

.field private maxCurrentMotor:F

.field private maxSpeed:F

.field private maxWatt:I

.field private minBatteryCurent:F

.field private minCurrentMotor:F

.field private modeName:Ljava/lang/String;

.field private modeNumber:I

.field private ppmMode:I

.field private useMaxWatt:Z


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;I)V
    .locals 6
    .param p1, "settings"    # Landroid/content/SharedPreferences;
    .param p2, "modeNumber"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p2, p0, Lackmaniac/vescmonitor/Mode;->modeNumber:I

    .line 21
    const-string v1, "NAME"

    invoke-static {p2, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lackmaniac/vescmonitor/Mode;->modeName:Ljava/lang/String;

    .line 22
    const-string v1, "PPM_MODE"

    invoke-static {p2, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_NONE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lackmaniac/vescmonitor/Mode;->ppmMode:I

    .line 23
    const-string v1, "USE_MAX_WATT"

    invoke-static {p2, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lackmaniac/vescmonitor/Mode;->useMaxWatt:Z

    .line 24
    const-string v1, "MAX_WATT"

    invoke-static {p2, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lackmaniac/vescmonitor/Mode;->maxWatt:I

    .line 25
    const-string v1, "MAX_MOTOR_C"

    invoke-static {p2, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    iput v1, p0, Lackmaniac/vescmonitor/Mode;->maxCurrentMotor:F

    .line 26
    const-string v1, "MAX_BATTERY_C"

    invoke-static {p2, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    iput v1, p0, Lackmaniac/vescmonitor/Mode;->maxBatteryCurent:F

    .line 27
    const-string v1, "MIN_MOTOR_C"

    invoke-static {p2, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    iput v1, p0, Lackmaniac/vescmonitor/Mode;->minCurrentMotor:F

    .line 28
    const-string v1, "MIN_BATTERY_C"

    invoke-static {p2, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    iput v1, p0, Lackmaniac/vescmonitor/Mode;->minBatteryCurent:F

    .line 29
    const-string v1, "MAX_ERPM"

    invoke-static {p2, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getSpeedDevider()F

    move-result v2

    div-float v0, v1, v2

    .line 31
    .local v0, "maxSpeedOldValue":F
    const-string v1, "MAX_SPEED"

    invoke-static {p2, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lackmaniac/vescmonitor/Mode;->maxSpeed:F

    .line 32
    iget v1, p0, Lackmaniac/vescmonitor/Mode;->maxSpeed:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_1

    .line 33
    iget v2, p0, Lackmaniac/vescmonitor/Mode;->maxSpeed:F

    const-string v1, "DISTANCE_UNIT"

    invoke-static {v1}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const v1, 0x3fcdfeda

    :goto_0
    div-float v1, v2, v1

    iput v1, p0, Lackmaniac/vescmonitor/Mode;->maxSpeed:F

    .line 37
    :goto_1
    return-void

    .line 33
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 35
    :cond_1
    iput v0, p0, Lackmaniac/vescmonitor/Mode;->maxSpeed:F

    goto :goto_1
.end method


# virtual methods
.method getMaxBatteryCurent()F
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lackmaniac/vescmonitor/Mode;->maxBatteryCurent:F

    return v0
.end method

.method getMaxCurrentMotor()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lackmaniac/vescmonitor/Mode;->maxCurrentMotor:F

    return v0
.end method

.method getMaxSpeed()F
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lackmaniac/vescmonitor/Mode;->maxSpeed:F

    return v0
.end method

.method getMaxWatt()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lackmaniac/vescmonitor/Mode;->maxWatt:I

    return v0
.end method

.method getMinBatteryCurent()F
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lackmaniac/vescmonitor/Mode;->minBatteryCurent:F

    return v0
.end method

.method getMinCurrentMotor()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lackmaniac/vescmonitor/Mode;->minCurrentMotor:F

    return v0
.end method

.method getModeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lackmaniac/vescmonitor/Mode;->modeName:Ljava/lang/String;

    return-object v0
.end method

.method getModeNumber()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lackmaniac/vescmonitor/Mode;->modeNumber:I

    return v0
.end method

.method getPpmMode()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lackmaniac/vescmonitor/Mode;->ppmMode:I

    return v0
.end method

.method isUseMaxWatt()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lackmaniac/vescmonitor/Mode;->useMaxWatt:Z

    return v0
.end method

.method setMaxBatteryCurent(F)V
    .locals 0
    .param p1, "maxBatteryCurent"    # F

    .prologue
    .line 84
    iput p1, p0, Lackmaniac/vescmonitor/Mode;->maxBatteryCurent:F

    .line 85
    return-void
.end method

.method setMaxCurrentMotor(F)V
    .locals 0
    .param p1, "maxCurrentMotor"    # F

    .prologue
    .line 76
    iput p1, p0, Lackmaniac/vescmonitor/Mode;->maxCurrentMotor:F

    .line 77
    return-void
.end method

.method setMaxSpeed(F)V
    .locals 0
    .param p1, "maxSpeed"    # F

    .prologue
    .line 108
    iput p1, p0, Lackmaniac/vescmonitor/Mode;->maxSpeed:F

    .line 109
    return-void
.end method

.method setMaxWatt(I)V
    .locals 0
    .param p1, "maxWatt"    # I

    .prologue
    .line 68
    iput p1, p0, Lackmaniac/vescmonitor/Mode;->maxWatt:I

    .line 69
    return-void
.end method

.method setMinBatteryCurent(F)V
    .locals 0
    .param p1, "minBatteryCurent"    # F

    .prologue
    .line 100
    iput p1, p0, Lackmaniac/vescmonitor/Mode;->minBatteryCurent:F

    .line 101
    return-void
.end method

.method setMinCurrentMotor(F)V
    .locals 0
    .param p1, "minCurrentMotor"    # F

    .prologue
    .line 92
    iput p1, p0, Lackmaniac/vescmonitor/Mode;->minCurrentMotor:F

    .line 93
    return-void
.end method

.method setModeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lackmaniac/vescmonitor/Mode;->modeName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method setModeNumber(I)V
    .locals 0
    .param p1, "modeNumber"    # I

    .prologue
    .line 44
    iput p1, p0, Lackmaniac/vescmonitor/Mode;->modeNumber:I

    .line 45
    return-void
.end method

.method setPpmMode(I)V
    .locals 0
    .param p1, "ppmMode"    # I

    .prologue
    .line 60
    iput p1, p0, Lackmaniac/vescmonitor/Mode;->ppmMode:I

    .line 61
    return-void
.end method

.method setUseMaxWatt(Z)V
    .locals 0
    .param p1, "useMaxWatt"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lackmaniac/vescmonitor/Mode;->useMaxWatt:Z

    .line 117
    return-void
.end method
