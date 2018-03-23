.class public Lackmaniac/vescmonitor/BatterySetup;
.super Landroid/app/Activity;
.source "BatterySetup.java"


# instance fields
.field private batteryType:I

.field private batteryWhEditText:Landroid/widget/EditText;

.field private noOfCellsEditText:Landroid/widget/EditText;

.field private percent0EditText:Landroid/widget/EditText;

.field private percent100EditText:Landroid/widget/EditText;

.field private percent10EditText:Landroid/widget/EditText;

.field private percent20EditText:Landroid/widget/EditText;

.field private percent30EditText:Landroid/widget/EditText;

.field private percent40EditText:Landroid/widget/EditText;

.field private percent50EditText:Landroid/widget/EditText;

.field private percent60EditText:Landroid/widget/EditText;

.field private percent70EditText:Landroid/widget/EditText;

.field private percent80EditText:Landroid/widget/EditText;

.field private percent90EditText:Landroid/widget/EditText;

.field private spinnerBatteryType:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lackmaniac/vescmonitor/BatterySetup;)I
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/BatterySetup;

    .prologue
    .line 21
    iget v0, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 28
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v20, 0x7f0a0021

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BatterySetup;->setContentView(I)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/BatterySetup;->getActionBar()Landroid/app/ActionBar;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 47
    const-string v20, "VESC_SETTINGS"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/BatterySetup;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 48
    .local v19, "settings":Landroid/content/SharedPreferences;
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 50
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v20, "BATTERY_TYPE"

    invoke-static/range {v20 .. v20}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x3

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    .line 51
    const-string v20, "BATTERY_WH"

    invoke-static/range {v20 .. v20}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x12c

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 52
    .local v3, "batteryWh":I
    const-string v20, "NO_OF_CELLS"

    invoke-static/range {v20 .. v20}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0xa

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 53
    .local v5, "noOfCells":I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "P100"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v20, v0

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    const-string v20, ""

    :goto_0
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const v21, 0x40866666    # 4.2f

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    .line 54
    .local v8, "percent100":F
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "P90"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v20, v0

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    const-string v20, ""

    :goto_1
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const v21, 0x40833333    # 4.1f

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v16

    .line 55
    .local v16, "percent90":F
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "P80"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v20, v0

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    const-string v20, ""

    :goto_2
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/high16 v21, 0x40800000    # 4.0f

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v15

    .line 56
    .local v15, "percent80":F
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "P70"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v20, v0

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    const-string v20, ""

    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const v21, 0x4079999a    # 3.9f

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v14

    .line 57
    .local v14, "percent70":F
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "P60"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v20, v0

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    const-string v20, ""

    :goto_4
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const v21, 0x40733333    # 3.8f

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v13

    .line 58
    .local v13, "percent60":F
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "P50"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v20, v0

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    const-string v20, ""

    :goto_5
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const v21, 0x406ccccd    # 3.7f

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v12

    .line 59
    .local v12, "percent50":F
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "P40"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v20, v0

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    const-string v20, ""

    :goto_6
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const v21, 0x40666666    # 3.6f

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v11

    .line 60
    .local v11, "percent40":F
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "P30"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v20, v0

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    const-string v20, ""

    :goto_7
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/high16 v21, 0x40600000    # 3.5f

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v10

    .line 61
    .local v10, "percent30":F
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "P20"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v20, v0

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    const-string v20, ""

    :goto_8
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const v21, 0x4059999a    # 3.4f

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v9

    .line 62
    .local v9, "percent20":F
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "P10"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v20, v0

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    const-string v20, ""

    :goto_9
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const v21, 0x40533333    # 3.3f

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    .line 63
    .local v7, "percent10":F
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "P0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v20, v0

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    const-string v20, ""

    :goto_a
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const v21, 0x404ccccd    # 3.2f

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    .line 65
    .local v6, "percent0":F
    const-string v20, "PLAY_BATTERY_ALARM"

    const/16 v21, 0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 66
    .local v17, "playBatteryAlarm":Z
    const v20, 0x7f08010d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BatterySetup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    .line 67
    .local v18, "playBatteryAlarmCb":Landroid/widget/CheckBox;
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 69
    new-instance v20, Lackmaniac/vescmonitor/BatterySetup$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/BatterySetup$1;-><init>(Lackmaniac/vescmonitor/BatterySetup;Landroid/content/SharedPreferences$Editor;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    const v20, 0x7f08014b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BatterySetup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Spinner;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/BatterySetup;->spinnerBatteryType:Landroid/widget/Spinner;

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->spinnerBatteryType:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Spinner;->setSelection(I)V

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->spinnerBatteryType:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    new-instance v21, Lackmaniac/vescmonitor/BatterySetup$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/BatterySetup$2;-><init>(Lackmaniac/vescmonitor/BatterySetup;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 102
    const v20, 0x7f08007b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BatterySetup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/BatterySetup;->batteryWhEditText:Landroid/widget/EditText;

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryWhEditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryWhEditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Lackmaniac/vescmonitor/BatterySetup$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/BatterySetup$3;-><init>(Lackmaniac/vescmonitor/BatterySetup;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    const v20, 0x7f08008b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BatterySetup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/BatterySetup;->noOfCellsEditText:Landroid/widget/EditText;

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->noOfCellsEditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->noOfCellsEditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Lackmaniac/vescmonitor/InputFilterMinMax;

    const/16 v24, 0x1

    const/16 v25, 0x10

    invoke-direct/range {v23 .. v25}, Lackmaniac/vescmonitor/InputFilterMinMax;-><init>(II)V

    aput-object v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->noOfCellsEditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Lackmaniac/vescmonitor/BatterySetup$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/BatterySetup$4;-><init>(Lackmaniac/vescmonitor/BatterySetup;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    const v20, 0x7f08008e

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BatterySetup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/BatterySetup;->percent100EditText:Landroid/widget/EditText;

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent100EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent100EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;

    const/16 v24, 0x0

    const/high16 v25, 0x40900000    # 4.5f

    const/16 v26, 0x1

    const/16 v27, 0x3

    invoke-direct/range {v23 .. v27}, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;-><init>(FFII)V

    aput-object v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent100EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Lackmaniac/vescmonitor/BatterySetup$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/BatterySetup$5;-><init>(Lackmaniac/vescmonitor/BatterySetup;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 185
    const v20, 0x7f080096

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BatterySetup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/BatterySetup;->percent90EditText:Landroid/widget/EditText;

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent90EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent90EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;

    const/16 v24, 0x0

    const/high16 v25, 0x40900000    # 4.5f

    const/16 v26, 0x1

    const/16 v27, 0x3

    invoke-direct/range {v23 .. v27}, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;-><init>(FFII)V

    aput-object v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent90EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Lackmaniac/vescmonitor/BatterySetup$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/BatterySetup$6;-><init>(Lackmaniac/vescmonitor/BatterySetup;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 213
    const v20, 0x7f080095

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BatterySetup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/BatterySetup;->percent80EditText:Landroid/widget/EditText;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent80EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent80EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;

    const/16 v24, 0x0

    const/high16 v25, 0x40900000    # 4.5f

    const/16 v26, 0x1

    const/16 v27, 0x3

    invoke-direct/range {v23 .. v27}, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;-><init>(FFII)V

    aput-object v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent80EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Lackmaniac/vescmonitor/BatterySetup$7;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/BatterySetup$7;-><init>(Lackmaniac/vescmonitor/BatterySetup;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 241
    const v20, 0x7f080094

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BatterySetup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/BatterySetup;->percent70EditText:Landroid/widget/EditText;

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent70EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent70EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;

    const/16 v24, 0x0

    const/high16 v25, 0x40900000    # 4.5f

    const/16 v26, 0x1

    const/16 v27, 0x3

    invoke-direct/range {v23 .. v27}, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;-><init>(FFII)V

    aput-object v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent70EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Lackmaniac/vescmonitor/BatterySetup$8;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/BatterySetup$8;-><init>(Lackmaniac/vescmonitor/BatterySetup;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 269
    const v20, 0x7f080093

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BatterySetup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/BatterySetup;->percent60EditText:Landroid/widget/EditText;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent60EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-static {v13}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent60EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;

    const/16 v24, 0x0

    const/high16 v25, 0x40900000    # 4.5f

    const/16 v26, 0x1

    const/16 v27, 0x3

    invoke-direct/range {v23 .. v27}, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;-><init>(FFII)V

    aput-object v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent60EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Lackmaniac/vescmonitor/BatterySetup$9;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/BatterySetup$9;-><init>(Lackmaniac/vescmonitor/BatterySetup;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 297
    const v20, 0x7f080092

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BatterySetup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/BatterySetup;->percent50EditText:Landroid/widget/EditText;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent50EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent50EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;

    const/16 v24, 0x0

    const/high16 v25, 0x40900000    # 4.5f

    const/16 v26, 0x1

    const/16 v27, 0x3

    invoke-direct/range {v23 .. v27}, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;-><init>(FFII)V

    aput-object v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent50EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Lackmaniac/vescmonitor/BatterySetup$10;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/BatterySetup$10;-><init>(Lackmaniac/vescmonitor/BatterySetup;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 325
    const v20, 0x7f080091

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BatterySetup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/BatterySetup;->percent40EditText:Landroid/widget/EditText;

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent40EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent40EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;

    const/16 v24, 0x0

    const/high16 v25, 0x40900000    # 4.5f

    const/16 v26, 0x1

    const/16 v27, 0x3

    invoke-direct/range {v23 .. v27}, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;-><init>(FFII)V

    aput-object v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent40EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Lackmaniac/vescmonitor/BatterySetup$11;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/BatterySetup$11;-><init>(Lackmaniac/vescmonitor/BatterySetup;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 353
    const v20, 0x7f080090

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BatterySetup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/BatterySetup;->percent30EditText:Landroid/widget/EditText;

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent30EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent30EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;

    const/16 v24, 0x0

    const/high16 v25, 0x40900000    # 4.5f

    const/16 v26, 0x1

    const/16 v27, 0x3

    invoke-direct/range {v23 .. v27}, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;-><init>(FFII)V

    aput-object v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent30EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Lackmaniac/vescmonitor/BatterySetup$12;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/BatterySetup$12;-><init>(Lackmaniac/vescmonitor/BatterySetup;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 381
    const v20, 0x7f08008f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BatterySetup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/BatterySetup;->percent20EditText:Landroid/widget/EditText;

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent20EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent20EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;

    const/16 v24, 0x0

    const/high16 v25, 0x40900000    # 4.5f

    const/16 v26, 0x1

    const/16 v27, 0x3

    invoke-direct/range {v23 .. v27}, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;-><init>(FFII)V

    aput-object v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent20EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Lackmaniac/vescmonitor/BatterySetup$13;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/BatterySetup$13;-><init>(Lackmaniac/vescmonitor/BatterySetup;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 409
    const v20, 0x7f08008d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BatterySetup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/BatterySetup;->percent10EditText:Landroid/widget/EditText;

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent10EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent10EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;

    const/16 v24, 0x0

    const/high16 v25, 0x40900000    # 4.5f

    const/16 v26, 0x1

    const/16 v27, 0x3

    invoke-direct/range {v23 .. v27}, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;-><init>(FFII)V

    aput-object v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent10EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Lackmaniac/vescmonitor/BatterySetup$14;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/BatterySetup$14;-><init>(Lackmaniac/vescmonitor/BatterySetup;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 437
    const v20, 0x7f08008c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BatterySetup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/BatterySetup;->percent0EditText:Landroid/widget/EditText;

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent0EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent0EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;

    const/16 v24, 0x0

    const/high16 v25, 0x40900000    # 4.5f

    const/16 v26, 0x1

    const/16 v27, 0x3

    invoke-direct/range {v23 .. v27}, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;-><init>(FFII)V

    aput-object v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/BatterySetup;->percent0EditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Lackmaniac/vescmonitor/BatterySetup$15;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/BatterySetup$15;-><init>(Lackmaniac/vescmonitor/BatterySetup;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 465
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/BatterySetup;->updateBatteryTypeValues()V

    .line 466
    return-void

    .line 53
    .end local v6    # "percent0":F
    .end local v7    # "percent10":F
    .end local v8    # "percent100":F
    .end local v9    # "percent20":F
    .end local v10    # "percent30":F
    .end local v11    # "percent40":F
    .end local v12    # "percent50":F
    .end local v13    # "percent60":F
    .end local v14    # "percent70":F
    .end local v15    # "percent80":F
    .end local v16    # "percent90":F
    .end local v17    # "playBatteryAlarm":Z
    .end local v18    # "playBatteryAlarmCb":Landroid/widget/CheckBox;
    :cond_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "_"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 54
    .restart local v8    # "percent100":F
    :cond_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "_"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_1

    .line 55
    .restart local v16    # "percent90":F
    :cond_2
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "_"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    .line 56
    .restart local v15    # "percent80":F
    :cond_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "_"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_3

    .line 57
    .restart local v14    # "percent70":F
    :cond_4
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "_"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_4

    .line 58
    .restart local v13    # "percent60":F
    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "_"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_5

    .line 59
    .restart local v12    # "percent50":F
    :cond_6
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "_"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_6

    .line 60
    .restart local v11    # "percent40":F
    :cond_7
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "_"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_7

    .line 61
    .restart local v10    # "percent30":F
    :cond_8
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "_"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_8

    .line 62
    .restart local v9    # "percent20":F
    :cond_9
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "_"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_9

    .line 63
    .restart local v7    # "percent10":F
    :cond_a
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "_"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_a
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 530
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 536
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 533
    :pswitch_0
    invoke-virtual {p0}, Lackmaniac/vescmonitor/BatterySetup;->onBackPressed()V

    .line 534
    const/4 v0, 0x1

    goto :goto_0

    .line 530
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 541
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 542
    invoke-virtual {p0}, Lackmaniac/vescmonitor/BatterySetup;->finish()V

    .line 543
    invoke-virtual {p0}, Lackmaniac/vescmonitor/BatterySetup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/BatterySetup;->startActivity(Landroid/content/Intent;)V

    .line 544
    return-void
.end method

.method updateBatteryTypeValues()V
    .locals 9

    .prologue
    const v8, 0x405bd70a    # 3.435f

    const v7, 0x4050a3d7    # 3.26f

    const v6, 0x40866666    # 4.2f

    const v5, 0x407c28f6    # 3.94f

    const v4, 0x40728f5c    # 3.79f

    .line 469
    const-string v1, "VESC_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lackmaniac/vescmonitor/BatterySetup;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 470
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "BATTERY_TYPE"

    invoke-static {v1}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    .line 472
    iget v1, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    packed-switch v1, :pswitch_data_0

    .line 513
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent100EditText:Landroid/widget/EditText;

    const-string v2, "P100"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent90EditText:Landroid/widget/EditText;

    const-string v2, "P90"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x40823d71    # 4.07f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent80EditText:Landroid/widget/EditText;

    const-string v2, "P80"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x4080a3d7    # 4.02f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent70EditText:Landroid/widget/EditText;

    const-string v2, "P70"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent60EditText:Landroid/widget/EditText;

    const-string v2, "P60"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x40770a3d    # 3.86f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent50EditText:Landroid/widget/EditText;

    const-string v2, "P50"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent40EditText:Landroid/widget/EditText;

    const-string v2, "P40"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x406dc28f    # 3.715f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent30EditText:Landroid/widget/EditText;

    const-string v2, "P30"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x4068a3d7    # 3.635f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent20EditText:Landroid/widget/EditText;

    const-string v2, "P20"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x4061999a    # 3.525f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent10EditText:Landroid/widget/EditText;

    const-string v2, "P10"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent0EditText:Landroid/widget/EditText;

    const-string v2, "P0"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 526
    :goto_0
    return-void

    .line 474
    :pswitch_0
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent100EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P100_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent90EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P90_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x40823d71    # 4.07f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent80EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P80_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x4080a3d7    # 4.02f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent70EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P70_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent60EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P60_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x40770a3d    # 3.86f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent50EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P50_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent40EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P40_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x406dc28f    # 3.715f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent30EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P30_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x4068a3d7    # 3.635f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent20EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P20_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x4061999a    # 3.525f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent10EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P10_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent0EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P0_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 487
    :pswitch_1
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent100EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P100_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent90EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P90_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x4083851f    # 4.11f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent80EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P80_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x4080cccd    # 4.025f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent70EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P70_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent60EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P60_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x4078f5c3    # 3.89f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent50EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P50_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x40766666    # 3.85f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent40EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P40_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x40747ae1    # 3.82f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent30EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P30_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent20EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P20_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x4070a3d7    # 3.76f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent10EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P10_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x406eb852    # 3.73f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent0EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P0_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x406ccccd    # 3.7f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 500
    :pswitch_2
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent100EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P100_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x40666666    # 3.6f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent90EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P90_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x405428f6    # 3.315f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent80EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P80_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x40534396    # 3.301f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent70EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P70_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x40525e35    # 3.287f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent60EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P60_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x405178d5    # 3.273f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent50EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P50_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x40509375    # 3.259f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent40EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P40_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x404fbe77    # 3.246f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent30EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P30_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x404ed917    # 3.232f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent20EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P20_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x404df3b6    # 3.218f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent10EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P10_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x404d0e56    # 3.204f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v1, p0, Lackmaniac/vescmonitor/BatterySetup;->percent0EditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P0_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lackmaniac/vescmonitor/BatterySetup;->batteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x404c28f6    # 3.19f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
