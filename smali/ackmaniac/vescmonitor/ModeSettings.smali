.class public Lackmaniac/vescmonitor/ModeSettings;
.super Landroid/app/Activity;
.source "ModeSettings.java"


# instance fields
.field private buttonThrottleCurve:Landroid/widget/Button;

.field private checkBoxFrontUseMaxWatt:Landroid/widget/CheckBox;

.field private checkBoxUseMaxWatt:Landroid/widget/CheckBox;

.field private checkBoxUseOtherSettingsForFront:Landroid/widget/CheckBox;

.field private checkBoxUseSpecialBrakingAllowedPID:Landroid/widget/CheckBox;

.field private checkBoxUseSpecialCruiseControlPID:Landroid/widget/CheckBox;

.field private checkBoxUseSpecialThrottleCurve:Landroid/widget/CheckBox;

.field private editTextModeFrontMaxBatteryCurrent:Landroid/widget/EditText;

.field private editTextModeFrontMaxMotorCurrent:Landroid/widget/EditText;

.field private editTextModeFrontMaxWatt:Landroid/widget/EditText;

.field private editTextModeFrontMinBatteryCurrent:Landroid/widget/EditText;

.field private editTextModeFrontMinMotorCurrent:Landroid/widget/EditText;

.field private editTextModeMaxBatteryCurrent:Landroid/widget/EditText;

.field private editTextModeMaxMotorCurrent:Landroid/widget/EditText;

.field private editTextModeMaxSpeed:Landroid/widget/EditText;

.field private editTextModeMaxWatt:Landroid/widget/EditText;

.field private editTextModeMinBatteryCurrent:Landroid/widget/EditText;

.field private editTextModeMinMotorCurrent:Landroid/widget/EditText;

.field private editTextModeName:Landroid/widget/EditText;

.field private isNunchuk:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private modeNumber:I

.field private ppmMode:I

.field private spinnerFrontControllerIdFirst:Landroid/widget/Spinner;

.field private spinnerFrontControllerIdSecond:Landroid/widget/Spinner;

.field private spinnerPIDBraking:Landroid/widget/Spinner;

.field private spinnerPIDkD:Landroid/widget/Spinner;

.field private spinnerPIDkI:Landroid/widget/Spinner;

.field private spinnerPIDkP:Landroid/widget/Spinner;

.field private spinnerPPMMode:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_NONE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    iput v0, p0, Lackmaniac/vescmonitor/ModeSettings;->ppmMode:I

    return-void
.end method

.method static synthetic access$000(Lackmaniac/vescmonitor/ModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/ModeSettings;

    .prologue
    .line 22
    invoke-direct {p0}, Lackmaniac/vescmonitor/ModeSettings;->updateUseOtherSettingsForFrontOptions()V

    return-void
.end method

.method static synthetic access$100(Lackmaniac/vescmonitor/ModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/ModeSettings;

    .prologue
    .line 22
    invoke-direct {p0}, Lackmaniac/vescmonitor/ModeSettings;->updateButtonText()V

    return-void
.end method

.method static synthetic access$200(Lackmaniac/vescmonitor/ModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/ModeSettings;

    .prologue
    .line 22
    invoke-direct {p0}, Lackmaniac/vescmonitor/ModeSettings;->saveSettings()V

    return-void
.end method

.method static synthetic access$300(Lackmaniac/vescmonitor/ModeSettings;)I
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/ModeSettings;

    .prologue
    .line 22
    iget v0, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    return v0
.end method

.method static synthetic access$400(Lackmaniac/vescmonitor/ModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/ModeSettings;

    .prologue
    .line 22
    invoke-direct {p0}, Lackmaniac/vescmonitor/ModeSettings;->updateCruiseControlOptions()V

    return-void
.end method

.method static synthetic access$500(Lackmaniac/vescmonitor/ModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/ModeSettings;

    .prologue
    .line 22
    invoke-direct {p0}, Lackmaniac/vescmonitor/ModeSettings;->updatePIDBrakingEnabledOptions()V

    return-void
.end method

.method private saveSettings()V
    .locals 15

    .prologue
    .line 436
    const-string v10, "VESC_SETTINGS"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lackmaniac/vescmonitor/ModeSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 437
    .local v9, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 438
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "NAME"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeName:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 440
    iget-object v10, p0, Lackmaniac/vescmonitor/ModeSettings;->spinnerPPMMode:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 441
    .local v8, "selectedString":Ljava/lang/String;
    iget-boolean v10, p0, Lackmaniac/vescmonitor/ModeSettings;->isNunchuk:Z

    if-eqz v10, :cond_1

    .line 442
    invoke-static {}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->values()[Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    move-result-object v11

    array-length v12, v11

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v12, :cond_3

    aget-object v0, v11, v10

    .line 443
    .local v0, "cct":Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;
    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->ordinal()I

    move-result v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lackmaniac/vescmonitor/Utils;->getChukModeText(IZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 444
    iget v13, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v14, "PPM_MODE"

    invoke-static {v13, v14}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->ordinal()I

    move-result v14

    invoke-interface {v3, v13, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 442
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 448
    .end local v0    # "cct":Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;
    :cond_1
    invoke-static {}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->values()[Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    move-result-object v11

    array-length v12, v11

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v12, :cond_3

    aget-object v7, v11, v10

    .line 449
    .local v7, "pct":Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;
    invoke-virtual {v7}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lackmaniac/vescmonitor/Utils;->getPPMModeText(IZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 450
    iget v13, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v14, "PPM_MODE"

    invoke-static {v13, v14}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v14

    invoke-interface {v3, v13, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 448
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 455
    .end local v7    # "pct":Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;
    :cond_3
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "USE_MAX_WATT"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseMaxWatt:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 456
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "MAX_WATT"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMaxWatt:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lackmaniac/vescmonitor/ModeSettings;->validateText(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 457
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "MAX_MOTOR_C"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMaxMotorCurrent:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lackmaniac/vescmonitor/ModeSettings;->validateFloatText(Ljava/lang/String;)F

    move-result v11

    const/high16 v12, 0x41200000    # 10.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 458
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "MAX_BATTERY_C"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMaxBatteryCurrent:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lackmaniac/vescmonitor/ModeSettings;->validateFloatText(Ljava/lang/String;)F

    move-result v11

    const/high16 v12, 0x41200000    # 10.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 459
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "MIN_MOTOR_C"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMinMotorCurrent:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lackmaniac/vescmonitor/ModeSettings;->validateFloatText(Ljava/lang/String;)F

    move-result v11

    const/high16 v12, 0x41200000    # 10.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 460
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "MIN_BATTERY_C"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMinBatteryCurrent:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lackmaniac/vescmonitor/ModeSettings;->validateFloatText(Ljava/lang/String;)F

    move-result v11

    const/high16 v12, 0x41200000    # 10.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 462
    iget-object v10, p0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMaxSpeed:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lackmaniac/vescmonitor/ModeSettings;->validateFloatText(Ljava/lang/String;)F

    move-result v6

    .line 463
    .local v6, "maxSpeedValue":F
    const-string v10, "DISTANCE_UNIT"

    invoke-static {v10}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 464
    .local v1, "distanceUnit":I
    const/4 v10, 0x1

    if-ne v1, v10, :cond_4

    const v10, 0x3fcdfeda

    :goto_2
    mul-float/2addr v6, v10

    .line 465
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "MAX_SPEED"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10, v6}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 467
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "KEY_USE_OTHER_SETTINGS_FOR_FRONT"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseOtherSettingsForFront:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 469
    iget-object v10, p0, Lackmaniac/vescmonitor/ModeSettings;->spinnerFrontControllerIdFirst:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 471
    .local v4, "frontFirstId":Ljava/lang/String;
    :try_start_0
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "KEY_FRONT_CAN_CONTROLLERID_FIRST"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :goto_3
    iget-object v10, p0, Lackmaniac/vescmonitor/ModeSettings;->spinnerFrontControllerIdSecond:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 478
    .local v5, "frontSecondId":Ljava/lang/String;
    :try_start_1
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "KEY_FRONT_CAN_CONTROLLERID_SECOND"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 483
    :goto_4
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "FRONT_USE_MAX_WATT"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxFrontUseMaxWatt:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 484
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "FRONT_MAX_WATT"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMaxWatt:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lackmaniac/vescmonitor/ModeSettings;->validateText(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 485
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "FRONT_MAX_MOTOR_C"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMaxMotorCurrent:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lackmaniac/vescmonitor/ModeSettings;->validateFloatText(Ljava/lang/String;)F

    move-result v11

    const/high16 v12, 0x41200000    # 10.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 486
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "FRONT_MAX_BATTERY_C"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMaxBatteryCurrent:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lackmaniac/vescmonitor/ModeSettings;->validateFloatText(Ljava/lang/String;)F

    move-result v11

    const/high16 v12, 0x41200000    # 10.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 487
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "FRONT_MIN_MOTOR_C"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMinMotorCurrent:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lackmaniac/vescmonitor/ModeSettings;->validateFloatText(Ljava/lang/String;)F

    move-result v11

    const/high16 v12, 0x41200000    # 10.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 488
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "FRONT_MIN_BATTERY_C"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMinBatteryCurrent:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lackmaniac/vescmonitor/ModeSettings;->validateFloatText(Ljava/lang/String;)F

    move-result v11

    const/high16 v12, 0x41200000    # 10.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 490
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "USE_SPECIAL_THROOTLE_CURVE"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseSpecialThrottleCurve:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 492
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "KEY_USE_SPECIAL_BRAKING_PID"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseSpecialBrakingAllowedPID:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 493
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "KEY_PID_BRAKING_AT_ENABLED"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v10, p0, Lackmaniac/vescmonitor/ModeSettings;->spinnerPIDBraking:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_5

    const/4 v10, 0x1

    :goto_5
    invoke-interface {v3, v11, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 495
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "KEY_USE_SPECIAL_CRUISE_CONTROL_PID"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseSpecialCruiseControlPID:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 496
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "KEY_CRUISE_CONTROL_PID_KP"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lackmaniac/vescmonitor/ModeSettings;->spinnerPIDkP:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 497
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "KEY_CRUISE_CONTROL_PID_KI"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lackmaniac/vescmonitor/ModeSettings;->spinnerPIDkI:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 498
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "KEY_CRUISE_CONTROL_PID_KD"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lackmaniac/vescmonitor/ModeSettings;->spinnerPIDkD:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 500
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 501
    return-void

    .line 464
    .end local v4    # "frontFirstId":Ljava/lang/String;
    .end local v5    # "frontSecondId":Ljava/lang/String;
    :cond_4
    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 472
    .restart local v4    # "frontFirstId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 473
    .local v2, "e":Ljava/lang/Exception;
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "KEY_FRONT_CAN_CONTROLLERID_FIRST"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x9

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 479
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "frontSecondId":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 480
    .restart local v2    # "e":Ljava/lang/Exception;
    iget v10, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v11, "KEY_FRONT_CAN_CONTROLLERID_SECOND"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x9

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4

    .line 493
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_5
.end method

.method private updateButtonText()V
    .locals 15

    .prologue
    const/high16 v14, 0x3e800000    # 0.25f

    const/high16 v13, -0x3d380000    # -100.0f

    const/high16 v12, 0x42c80000    # 100.0f

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 327
    iget-object v2, p0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseSpecialThrottleCurve:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 328
    const-string v2, "VESC_SETTINGS"

    invoke-virtual {p0, v2, v10}, Lackmaniac/vescmonitor/ModeSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 329
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string v2, "FIRWMWARE_VERSION"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2.18"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "firwareVersion":Ljava/lang/String;
    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, p0, Lackmaniac/vescmonitor/ModeSettings;->buttonThrottleCurve:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Acc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v5, "THROTTLE_EXP"

    invoke-static {v4, v5}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "THROTTLE_EXP"

    invoke-static {v5}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v4, v5

    mul-float/2addr v4, v12

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%   Brake "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v5, "THROTTLE_EXP_BRAKE"

    .line 336
    invoke-static {v4, v5}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "THROTTLE_EXP_BRAKE"

    invoke-static {v5}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v4, v5

    mul-float/2addr v4, v12

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%   Mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 337
    invoke-virtual {p0}, Lackmaniac/vescmonitor/ModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v6, "THROTTLE_EXP_MODE"

    invoke-static {v5, v6}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "THROTTLE_EXP_MODE"

    invoke-static {v6}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 335
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 353
    :goto_0
    iget-object v2, p0, Lackmaniac/vescmonitor/ModeSettings;->buttonThrottleCurve:Landroid/widget/Button;

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 358
    .end local v0    # "firwareVersion":Ljava/lang/String;
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .line 339
    .restart local v0    # "firwareVersion":Ljava/lang/String;
    .restart local v1    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v2, p0, Lackmaniac/vescmonitor/ModeSettings;->buttonThrottleCurve:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Y "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.1f"

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v8, "TC_NY3"

    .line 340
    invoke-static {v7, v8}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "TC_NY3"

    invoke-static {v8}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x3f400000    # 0.75f

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    mul-float/2addr v7, v13

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.1f"

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v8, "TC_NY2"

    .line 341
    invoke-static {v7, v8}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "TC_NY2"

    invoke-static {v8}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    mul-float/2addr v7, v13

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.1f"

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v8, "TC_NY1"

    .line 342
    invoke-static {v7, v8}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "TC_NY1"

    invoke-static {v8}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v14}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    mul-float/2addr v7, v13

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  |  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.1f"

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v8, "TC_Y1"

    .line 343
    invoke-static {v7, v8}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "TC_Y1"

    invoke-static {v8}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v14}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    mul-float/2addr v7, v12

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.1f"

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v8, "TC_Y2"

    .line 344
    invoke-static {v7, v8}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "TC_Y2"

    invoke-static {v8}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    mul-float/2addr v7, v12

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.1f"

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v8, "TC_Y3"

    .line 345
    invoke-static {v7, v8}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "TC_Y3"

    invoke-static {v8}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x3f400000    # 0.75f

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    mul-float/2addr v7, v12

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nX "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.1f"

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v8, "TC_NX3"

    .line 346
    invoke-static {v7, v8}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "TC_NX3"

    invoke-static {v8}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x3f400000    # 0.75f

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    mul-float/2addr v7, v13

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.1f"

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v8, "TC_NX2"

    .line 347
    invoke-static {v7, v8}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "TC_NX2"

    invoke-static {v8}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    mul-float/2addr v7, v13

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.1f"

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v8, "TC_NX1"

    .line 348
    invoke-static {v7, v8}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "TC_NX1"

    invoke-static {v8}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v14}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    mul-float/2addr v7, v13

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  |  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.1f"

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v8, "TC_X1"

    .line 349
    invoke-static {v7, v8}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "TC_X1"

    invoke-static {v8}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v14}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    mul-float/2addr v7, v12

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.1f"

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v8, "TC_X2"

    .line 350
    invoke-static {v7, v8}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "TC_X2"

    invoke-static {v8}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    mul-float/2addr v7, v12

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.1f"

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, p0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    const-string v8, "TC_X3"

    .line 351
    invoke-static {v7, v8}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "TC_X3"

    invoke-static {v8}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x3f400000    # 0.75f

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    mul-float/2addr v7, v12

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 355
    .end local v0    # "firwareVersion":Ljava/lang/String;
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v2, p0, Lackmaniac/vescmonitor/ModeSettings;->buttonThrottleCurve:Landroid/widget/Button;

    const-string v3, "VESCs default is used"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v2, p0, Lackmaniac/vescmonitor/ModeSettings;->buttonThrottleCurve:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private updateCruiseControlOptions()V
    .locals 2

    .prologue
    const v1, 0x7f0800bc

    .line 361
    iget-object v0, p0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseSpecialCruiseControlPID:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePIDBrakingEnabledOptions()V
    .locals 2

    .prologue
    const v1, 0x7f080151

    .line 369
    iget-object v0, p0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseSpecialBrakingAllowedPID:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 374
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateUseOtherSettingsForFrontOptions()V
    .locals 9

    .prologue
    const v8, 0x7f0800df

    const v7, 0x7f0800de

    const v6, 0x7f0800ba

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 377
    const-string v1, "VESC_SETTINGS"

    invoke-virtual {p0, v1, v4}, Lackmaniac/vescmonitor/ModeSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "FIRWMWARE_VERSION"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "firmwareVersion":Ljava/lang/String;
    iget-object v1, p0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseOtherSettingsForFront:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "2.54"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {p0, v6}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 380
    const v1, 0x7f0800e2

    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 381
    const v1, 0x7f0800e1

    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 382
    const v1, 0x7f0800e0

    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 383
    invoke-virtual {p0, v8}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 384
    invoke-virtual {p0, v7}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v1, p0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMaxWatt:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 386
    iget-object v1, p0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxFrontUseMaxWatt:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 387
    iget-object v1, p0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMaxMotorCurrent:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 388
    iget-object v1, p0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMaxBatteryCurrent:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 389
    iget-object v1, p0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMinMotorCurrent:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 390
    iget-object v1, p0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMinBatteryCurrent:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 410
    :goto_0
    return-void

    .line 392
    :cond_0
    const-string v1, "2.54"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 393
    iget-object v1, p0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseOtherSettingsForFront:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 395
    :cond_1
    invoke-virtual {p0, v6}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 396
    const v1, 0x7f0800e2

    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 397
    const v1, 0x7f0800e1

    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 398
    const v1, 0x7f0800e0

    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 399
    invoke-virtual {p0, v8}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 400
    invoke-virtual {p0, v7}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v1, p0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMaxWatt:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 402
    iget-object v1, p0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxFrontUseMaxWatt:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 403
    iget-object v1, p0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMaxMotorCurrent:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 404
    iget-object v1, p0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMaxBatteryCurrent:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 405
    iget-object v1, p0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMinMotorCurrent:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 406
    iget-object v1, p0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMinBatteryCurrent:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method

.method private validateFloatText(Ljava/lang/String;)F
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 419
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    :cond_0
    :goto_0
    return v0

    .line 420
    :cond_1
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method private validateText(Ljava/lang/String;)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 413
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v0

    .line 414
    :cond_1
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 415
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Lackmaniac/vescmonitor/ModeSettings;->saveSettings()V

    .line 512
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 513
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 30
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v22, 0x7f0a0023

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->setContentView(I)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/ModeSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 66
    const-string v22, "VESC_SETTINGS"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/ModeSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 67
    .local v19, "settings":Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/ModeSettings;->getIntent()Landroid/content/Intent;

    move-result-object v22

    const-string v23, "MODE"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    .line 69
    const v22, 0x7f080089

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->editTextModeName:Landroid/widget/EditText;

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeName:Landroid/widget/EditText;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v23, v0

    const-string v24, "NAME"

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Mode "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v22, v0

    const-string v23, "PPM_MODE"

    invoke-static/range {v22 .. v23}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "PPM_MODE"

    .line 73
    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget-object v24, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_NONE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    .line 74
    invoke-virtual/range {v24 .. v24}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v24

    .line 73
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 72
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/ModeSettings;->ppmMode:I

    .line 75
    const v22, 0x7f080155

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->spinnerPPMMode:Landroid/widget/Spinner;

    .line 77
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->list:Ljava/util/List;

    .line 79
    const-string v22, "IS_NUNCHUK"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lackmaniac/vescmonitor/ModeSettings;->isNunchuk:Z

    .line 81
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lackmaniac/vescmonitor/ModeSettings;->isNunchuk:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 82
    invoke-static {}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->values()[Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    const/16 v22, 0x0

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    aget-object v3, v23, v22

    .line 83
    .local v3, "cct":Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->list:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-virtual {v3}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->ordinal()I

    move-result v26

    const/16 v27, 0x1

    invoke-static/range {v26 .. v27}, Lackmaniac/vescmonitor/Utils;->getChukModeText(IZ)Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 86
    .end local v3    # "cct":Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;
    :cond_0
    const-string v22, "VESC_SETTINGS"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/ModeSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    const-string v23, "FIRWMWARE_VERSION"

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, ""

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 87
    .local v9, "firmwareVersion":Ljava/lang/String;
    const-string v22, "2.54"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->list:Ljava/util/List;

    move-object/from16 v22, v0

    sget-object v23, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_WATT:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v23

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getPPMModeText(IZ)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->list:Ljava/util/List;

    move-object/from16 v22, v0

    sget-object v23, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_WATT_NOREV_BRAKE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v23

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getPPMModeText(IZ)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->list:Ljava/util/List;

    move-object/from16 v22, v0

    sget-object v23, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_CURRENT:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v23

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getPPMModeText(IZ)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->list:Ljava/util/List;

    move-object/from16 v22, v0

    sget-object v23, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_CURRENT_NOREV_BRAKE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v23

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getPPMModeText(IZ)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->list:Ljava/util/List;

    move-object/from16 v22, v0

    sget-object v23, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_DUTY:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v23

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getPPMModeText(IZ)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->list:Ljava/util/List;

    move-object/from16 v22, v0

    sget-object v23, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_PID:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v23

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getPPMModeText(IZ)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->list:Ljava/util/List;

    move-object/from16 v22, v0

    sget-object v23, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_PID_NOACCELERATION:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v23

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getPPMModeText(IZ)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->list:Ljava/util/List;

    move-object/from16 v22, v0

    sget-object v23, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_NONE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v23

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getPPMModeText(IZ)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v9    # "firmwareVersion":Ljava/lang/String;
    :cond_2
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v22, 0x1090009

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->list:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v5, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 101
    .local v5, "dataAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->spinnerPPMMode:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 103
    const/4 v4, 0x0

    .line 105
    .local v4, "counter":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lackmaniac/vescmonitor/ModeSettings;->isNunchuk:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 106
    invoke-static {}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->values()[Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    const/16 v22, 0x0

    :goto_1
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    aget-object v3, v23, v22

    .line 107
    .restart local v3    # "cct":Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;
    invoke-virtual {v3}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->ordinal()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->ppmMode:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->spinnerPPMMode:Landroid/widget/Spinner;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 106
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 110
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 114
    .end local v3    # "cct":Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->ppmMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lackmaniac/vescmonitor/Utils;->getPPMModeText(IZ)Ljava/lang/String;

    move-result-object v18

    .line 115
    .local v18, "ppmModeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->list:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 116
    .local v13, "mode":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->spinnerPPMMode:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 119
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 124
    .end local v13    # "mode":Ljava/lang/String;
    .end local v18    # "ppmModeString":Ljava/lang/String;
    :cond_6
    const v22, 0x7f080052

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/CheckBox;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseMaxWatt:Landroid/widget/CheckBox;

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseMaxWatt:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v23, v0

    const-string v24, "USE_MAX_WATT"

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "USE_MAX_WATT"

    .line 126
    invoke-static/range {v24 .. v24}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 125
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 129
    const v22, 0x7f080086

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMaxWatt:Landroid/widget/EditText;

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMaxWatt:Landroid/widget/EditText;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lackmaniac/vescmonitor/InputFilterMinMax;

    const/16 v26, 0x0

    const/16 v27, 0x1388

    invoke-direct/range {v25 .. v27}, Lackmaniac/vescmonitor/InputFilterMinMax;-><init>(II)V

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMaxWatt:Landroid/widget/EditText;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v23, v0

    const-string v24, "MAX_WATT"

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x3e8

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const v22, 0x7f080084

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMaxMotorCurrent:Landroid/widget/EditText;

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMaxMotorCurrent:Landroid/widget/EditText;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;

    const/16 v26, 0x0

    const/high16 v27, 0x43480000    # 200.0f

    const/16 v28, 0x3

    const/16 v29, 0x1

    invoke-direct/range {v25 .. v29}, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;-><init>(FFII)V

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMaxMotorCurrent:Landroid/widget/EditText;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v23, v0

    const-string v24, "MAX_MOTOR_C"

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "MAX_MOTOR_C"

    .line 136
    invoke-static/range {v24 .. v24}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x258

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 135
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x41200000    # 10.0f

    div-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const v22, 0x7f080083

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMaxBatteryCurrent:Landroid/widget/EditText;

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMaxBatteryCurrent:Landroid/widget/EditText;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;

    const/16 v26, 0x0

    const/high16 v27, 0x43480000    # 200.0f

    const/16 v28, 0x3

    const/16 v29, 0x1

    invoke-direct/range {v25 .. v29}, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;-><init>(FFII)V

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMaxBatteryCurrent:Landroid/widget/EditText;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v23, v0

    const-string v24, "MAX_BATTERY_C"

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "MAX_BATTERY_C"

    .line 141
    invoke-static/range {v24 .. v24}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0xfa

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 140
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x41200000    # 10.0f

    div-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const v22, 0x7f080088

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMinMotorCurrent:Landroid/widget/EditText;

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMinMotorCurrent:Landroid/widget/EditText;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;

    const/high16 v26, -0x3cb80000    # -200.0f

    const/16 v27, 0x0

    const/16 v28, 0x3

    const/16 v29, 0x1

    invoke-direct/range {v25 .. v29}, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;-><init>(FFII)V

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMinMotorCurrent:Landroid/widget/EditText;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v23, v0

    const-string v24, "MIN_MOTOR_C"

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "MIN_MOTOR_C"

    .line 146
    invoke-static/range {v24 .. v24}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, -0x258

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 145
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x41200000    # 10.0f

    div-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const v22, 0x7f080087

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMinBatteryCurrent:Landroid/widget/EditText;

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMinBatteryCurrent:Landroid/widget/EditText;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;

    const/high16 v26, -0x3cb80000    # -200.0f

    const/16 v27, 0x0

    const/16 v28, 0x3

    const/16 v29, 0x1

    invoke-direct/range {v25 .. v29}, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;-><init>(FFII)V

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMinBatteryCurrent:Landroid/widget/EditText;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v23, v0

    const-string v24, "MIN_BATTERY_C"

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "MIN_BATTERY_C"

    .line 151
    invoke-static/range {v24 .. v24}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, -0x64

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 150
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x41200000    # 10.0f

    div-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const v22, 0x7f080186

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 154
    .local v20, "textViewMaxSpeed":Landroid/widget/TextView;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " (60000 ERPM "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v24, "%.1f"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const v27, 0x476a6000    # 60000.0f

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getSpeedDevider()F

    move-result v28

    div-float v27, v27, v28

    const/high16 v28, 0x41200000    # 10.0f

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x41200000    # 10.0f

    div-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const v22, 0x7f080085

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMaxSpeed:Landroid/widget/EditText;

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMaxSpeed:Landroid/widget/EditText;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;

    const/16 v26, 0x0

    const v27, 0x47c35000    # 100000.0f

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getSpeedDevider()F

    move-result v28

    div-float v27, v27, v28

    const/16 v28, 0x2

    const/16 v29, 0x1

    invoke-direct/range {v25 .. v29}, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;-><init>(FFII)V

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 159
    const-string v22, "DISTANCE_UNIT"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 160
    .local v6, "distanceUnit":I
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v22, v0

    const-string v23, "MAX_SPEED"

    invoke-static/range {v22 .. v23}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const v22, 0x476a6000    # 60000.0f

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getSpeedDevider()F

    move-result v24

    div-float v24, v22, v24

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v6, v0, :cond_8

    const v22, 0x3fcdfeda

    :goto_4
    mul-float v22, v22, v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v23

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v6, v0, :cond_9

    const v22, 0x3fcdfeda

    :goto_5
    div-float v12, v23, v22

    .line 161
    .local v12, "maxSpeed":F
    const v22, 0x476a6000    # 60000.0f

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getSpeedDevider()F

    move-result v23

    div-float v23, v22, v23

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v6, v0, :cond_a

    const v22, 0x3fcdfeda

    :goto_6
    mul-float v22, v22, v23

    cmpl-float v22, v12, v22

    if-nez v22, :cond_7

    .line 162
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v22, v0

    const-string v23, "MAX_ERPM"

    invoke-static/range {v22 .. v23}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const v23, 0xea60

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getSpeedDevider()F

    move-result v23

    div-float v12, v22, v23

    .line 165
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeMaxSpeed:Landroid/widget/EditText;

    move-object/from16 v22, v0

    sget-object v23, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v24, "%.1f"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/high16 v27, 0x41200000    # 10.0f

    mul-float v27, v27, v12

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x41200000    # 10.0f

    div-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const v22, 0x7f08018c

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 168
    .local v21, "textViewSpeedUnit":Landroid/widget/TextView;
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v6, v0, :cond_b

    .line 169
    const-string v22, "mi/h"

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :goto_7
    const v22, 0x7f080053

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/CheckBox;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseOtherSettingsForFront:Landroid/widget/CheckBox;

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseOtherSettingsForFront:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v23, v0

    const-string v24, "KEY_USE_OTHER_SETTINGS_FOR_FRONT"

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseOtherSettingsForFront:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    new-instance v23, Lackmaniac/vescmonitor/ModeSettings$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/ModeSettings$1;-><init>(Lackmaniac/vescmonitor/ModeSettings;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 183
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v22, v0

    const-string v23, "KEY_FRONT_CAN_CONTROLLERID_FIRST"

    invoke-static/range {v22 .. v23}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x9

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 184
    .local v10, "frontCanControllerIdFirst":I
    const v22, 0x7f08014e

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->spinnerFrontControllerIdFirst:Landroid/widget/Spinner;

    .line 185
    const/4 v4, 0x0

    .line 186
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/ModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f020004

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    const/16 v22, 0x0

    :goto_8
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_d

    aget-object v8, v23, v22

    .line 188
    .local v8, "entry":Ljava/lang/String;
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    if-ne v0, v10, :cond_c

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->spinnerFrontControllerIdFirst:Landroid/widget/Spinner;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_9
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 160
    .end local v8    # "entry":Ljava/lang/String;
    .end local v10    # "frontCanControllerIdFirst":I
    .end local v12    # "maxSpeed":F
    .end local v21    # "textViewSpeedUnit":Landroid/widget/TextView;
    :cond_8
    const/high16 v22, 0x3f800000    # 1.0f

    goto/16 :goto_4

    :cond_9
    const/high16 v22, 0x3f800000    # 1.0f

    goto/16 :goto_5

    .line 161
    .restart local v12    # "maxSpeed":F
    :cond_a
    const/high16 v22, 0x3f800000    # 1.0f

    goto/16 :goto_6

    .line 171
    .restart local v21    # "textViewSpeedUnit":Landroid/widget/TextView;
    :cond_b
    const-string v22, "km/h"

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 191
    .restart local v8    # "entry":Ljava/lang/String;
    .restart local v10    # "frontCanControllerIdFirst":I
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 193
    :catch_0
    move-exception v7

    .line 194
    .local v7, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->spinnerFrontControllerIdFirst:Landroid/widget/Spinner;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 195
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 199
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "entry":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v22, v0

    const-string v23, "KEY_FRONT_CAN_CONTROLLERID_SECOND"

    invoke-static/range {v22 .. v23}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x9

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 200
    .local v11, "frontCanControllerIdSecond":I
    const v22, 0x7f08014f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->spinnerFrontControllerIdSecond:Landroid/widget/Spinner;

    .line 201
    const/4 v4, 0x0

    .line 202
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/ModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f020004

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    const/16 v22, 0x0

    :goto_a
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_f

    aget-object v8, v23, v22

    .line 204
    .restart local v8    # "entry":Ljava/lang/String;
    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    if-ne v0, v11, :cond_e

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->spinnerFrontControllerIdSecond:Landroid/widget/Spinner;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    :goto_b
    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    .line 207
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 209
    :catch_1
    move-exception v7

    .line 210
    .restart local v7    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->spinnerFrontControllerIdSecond:Landroid/widget/Spinner;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 211
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 215
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "entry":Ljava/lang/String;
    :cond_f
    const v22, 0x7f080051

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/CheckBox;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->checkBoxFrontUseMaxWatt:Landroid/widget/CheckBox;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxFrontUseMaxWatt:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v23, v0

    const-string v24, "FRONT_USE_MAX_WATT"

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 218
    const v22, 0x7f080080

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMaxWatt:Landroid/widget/EditText;

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMaxWatt:Landroid/widget/EditText;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lackmaniac/vescmonitor/InputFilterMinMax;

    const/16 v26, 0x0

    const/16 v27, 0x1388

    invoke-direct/range {v25 .. v27}, Lackmaniac/vescmonitor/InputFilterMinMax;-><init>(II)V

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMaxWatt:Landroid/widget/EditText;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v23, v0

    const-string v24, "FRONT_MAX_WATT"

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x3e8

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 222
    const v22, 0x7f08007f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMaxMotorCurrent:Landroid/widget/EditText;

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMaxMotorCurrent:Landroid/widget/EditText;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;

    const/16 v26, 0x0

    const/high16 v27, 0x43480000    # 200.0f

    const/16 v28, 0x3

    const/16 v29, 0x1

    invoke-direct/range {v25 .. v29}, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;-><init>(FFII)V

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMaxMotorCurrent:Landroid/widget/EditText;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v23, v0

    const-string v24, "FRONT_MAX_MOTOR_C"

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x258

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x41200000    # 10.0f

    div-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const v22, 0x7f08007e

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMaxBatteryCurrent:Landroid/widget/EditText;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMaxBatteryCurrent:Landroid/widget/EditText;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;

    const/16 v26, 0x0

    const/high16 v27, 0x43480000    # 200.0f

    const/16 v28, 0x3

    const/16 v29, 0x1

    invoke-direct/range {v25 .. v29}, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;-><init>(FFII)V

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMaxBatteryCurrent:Landroid/widget/EditText;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v23, v0

    const-string v24, "FRONT_MAX_BATTERY_C"

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0xfa

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x41200000    # 10.0f

    div-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 230
    const v22, 0x7f080082

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMinMotorCurrent:Landroid/widget/EditText;

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMinMotorCurrent:Landroid/widget/EditText;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;

    const/high16 v26, -0x3cb80000    # -200.0f

    const/16 v27, 0x0

    const/16 v28, 0x3

    const/16 v29, 0x1

    invoke-direct/range {v25 .. v29}, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;-><init>(FFII)V

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMinMotorCurrent:Landroid/widget/EditText;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v23, v0

    const-string v24, "FRONT_MIN_MOTOR_C"

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, -0x258

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x41200000    # 10.0f

    div-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const v22, 0x7f080081

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMinBatteryCurrent:Landroid/widget/EditText;

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMinBatteryCurrent:Landroid/widget/EditText;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;

    const/high16 v26, -0x3cb80000    # -200.0f

    const/16 v27, 0x0

    const/16 v28, 0x3

    const/16 v29, 0x1

    invoke-direct/range {v25 .. v29}, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;-><init>(FFII)V

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->editTextModeFrontMinBatteryCurrent:Landroid/widget/EditText;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v23, v0

    const-string v24, "FRONT_MIN_BATTERY_C"

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, -0x64

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x41200000    # 10.0f

    div-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 238
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/ModeSettings;->updateUseOtherSettingsForFrontOptions()V

    .line 240
    const v22, 0x7f080056

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/CheckBox;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseSpecialThrottleCurve:Landroid/widget/CheckBox;

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseSpecialThrottleCurve:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v23, v0

    const-string v24, "USE_SPECIAL_THROOTLE_CURVE"

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseSpecialThrottleCurve:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    new-instance v23, Lackmaniac/vescmonitor/ModeSettings$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/ModeSettings$2;-><init>(Lackmaniac/vescmonitor/ModeSettings;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 249
    const v22, 0x7f08004b

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Button;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->buttonThrottleCurve:Landroid/widget/Button;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->buttonThrottleCurve:Landroid/widget/Button;

    move-object/from16 v22, v0

    new-instance v23, Lackmaniac/vescmonitor/ModeSettings$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/ModeSettings$3;-><init>(Lackmaniac/vescmonitor/ModeSettings;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/ModeSettings;->updateButtonText()V

    .line 262
    const v22, 0x7f080055

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/CheckBox;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseSpecialCruiseControlPID:Landroid/widget/CheckBox;

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseSpecialCruiseControlPID:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v23, v0

    const-string v24, "KEY_USE_SPECIAL_CRUISE_CONTROL_PID"

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseSpecialCruiseControlPID:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    new-instance v23, Lackmaniac/vescmonitor/ModeSettings$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/ModeSettings$4;-><init>(Lackmaniac/vescmonitor/ModeSettings;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 271
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v22, v0

    const-string v23, "KEY_CRUISE_CONTROL_PID_KP"

    invoke-static/range {v22 .. v23}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "KEY_CRUISE_CONTROL_PID_KP"

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const v24, 0x3b449ba6    # 0.003f

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v17

    .line 272
    .local v17, "pidKP":F
    const v22, 0x7f080154

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->spinnerPIDkP:Landroid/widget/Spinner;

    .line 273
    const/4 v4, 0x0

    .line 274
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/ModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f020008

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    const/16 v22, 0x0

    :goto_c
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_11

    aget-object v8, v23, v22

    .line 275
    .restart local v8    # "entry":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    cmpl-float v25, v25, v17

    if-nez v25, :cond_10

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->spinnerPIDkP:Landroid/widget/Spinner;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 274
    :goto_d
    add-int/lit8 v22, v22, 0x1

    goto :goto_c

    .line 278
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 282
    .end local v8    # "entry":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v22, v0

    const-string v23, "KEY_CRUISE_CONTROL_PID_KI"

    invoke-static/range {v22 .. v23}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "KEY_CRUISE_CONTROL_PID_KI"

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const v24, 0x3b449ba6    # 0.003f

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v16

    .line 283
    .local v16, "pidKI":F
    const v22, 0x7f080153

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->spinnerPIDkI:Landroid/widget/Spinner;

    .line 284
    const/4 v4, 0x0

    .line 285
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/ModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f020008

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    const/16 v22, 0x0

    :goto_e
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_13

    aget-object v8, v23, v22

    .line 286
    .restart local v8    # "entry":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    cmpl-float v25, v25, v16

    if-nez v25, :cond_12

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->spinnerPIDkI:Landroid/widget/Spinner;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 285
    :goto_f
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    .line 289
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 293
    .end local v8    # "entry":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v22, v0

    const-string v23, "KEY_CRUISE_CONTROL_PID_KD"

    invoke-static/range {v22 .. v23}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "KEY_CRUISE_CONTROL_PID_KD"

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v15

    .line 294
    .local v15, "pidKD":F
    const v22, 0x7f080152

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->spinnerPIDkD:Landroid/widget/Spinner;

    .line 295
    const/4 v4, 0x0

    .line 296
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/ModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f020008

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    const/16 v22, 0x0

    :goto_10
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_15

    aget-object v8, v23, v22

    .line 297
    .restart local v8    # "entry":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    cmpl-float v25, v25, v15

    if-nez v25, :cond_14

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->spinnerPIDkD:Landroid/widget/Spinner;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 296
    :goto_11
    add-int/lit8 v22, v22, 0x1

    goto :goto_10

    .line 300
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 304
    .end local v8    # "entry":Ljava/lang/String;
    :cond_15
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/ModeSettings;->updateCruiseControlOptions()V

    .line 306
    const v22, 0x7f080054

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/CheckBox;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseSpecialBrakingAllowedPID:Landroid/widget/CheckBox;

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseSpecialBrakingAllowedPID:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v23, v0

    const-string v24, "KEY_USE_SPECIAL_BRAKING_PID"

    invoke-static/range {v23 .. v24}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->checkBoxUseSpecialBrakingAllowedPID:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    new-instance v23, Lackmaniac/vescmonitor/ModeSettings$5;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/ModeSettings$5;-><init>(Lackmaniac/vescmonitor/ModeSettings;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 315
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/ModeSettings;->modeNumber:I

    move/from16 v22, v0

    const-string v23, "KEY_PID_BRAKING_AT_ENABLED"

    invoke-static/range {v22 .. v23}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "KEY_PID_BRAKING_AT_ENABLED"

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 316
    .local v14, "pidBrakingEnabled":Z
    const v22, 0x7f080151

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ModeSettings;->spinnerPIDBraking:Landroid/widget/Spinner;

    .line 317
    if-eqz v14, :cond_16

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->spinnerPIDBraking:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Spinner;->setSelection(I)V

    .line 323
    :goto_12
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/ModeSettings;->updatePIDBrakingEnabledOptions()V

    .line 324
    return-void

    .line 320
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ModeSettings;->spinnerPIDBraking:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_12
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 426
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 432
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 429
    :pswitch_0
    invoke-virtual {p0}, Lackmaniac/vescmonitor/ModeSettings;->onBackPressed()V

    .line 430
    const/4 v0, 0x1

    goto :goto_0

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 505
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 506
    invoke-direct {p0}, Lackmaniac/vescmonitor/ModeSettings;->updateButtonText()V

    .line 507
    return-void
.end method
