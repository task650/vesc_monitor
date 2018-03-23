.class public Lackmaniac/vescmonitor/Settings;
.super Landroid/app/Activity;
.source "Settings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 29
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v25, 0x7f0a0020

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/Settings;->setContentView(I)V

    .line 27
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 29
    const-string v25, "VESC_SETTINGS"

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/Settings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 30
    .local v15, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 32
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getCurrentBluetoothAdress()Ljava/lang/String;

    move-result-object v25

    const-string v26, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "boardName":Ljava/lang/String;
    const v25, 0x7f080188

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 35
    .local v21, "textViewModesSetup":Landroid/widget/TextView;
    new-instance v25, Lackmaniac/vescmonitor/Settings$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/Settings$1;-><init>(Lackmaniac/vescmonitor/Settings;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v25, 0x7f080181

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 44
    .local v18, "textViewBatterySetup":Landroid/widget/TextView;
    new-instance v25, Lackmaniac/vescmonitor/Settings$2;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/Settings$2;-><init>(Lackmaniac/vescmonitor/Settings;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v25, 0x7f080184

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 53
    .local v20, "textViewDriveGearSetup":Landroid/widget/TextView;
    new-instance v25, Lackmaniac/vescmonitor/Settings$3;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/Settings$3;-><init>(Lackmaniac/vescmonitor/Settings;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v25, 0x7f08018f

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 62
    .local v22, "textViewVideoSetup":Landroid/widget/TextView;
    new-instance v25, Lackmaniac/vescmonitor/Settings$4;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/Settings$4;-><init>(Lackmaniac/vescmonitor/Settings;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v25, 0x7f080182

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 71
    .local v19, "textViewBoardInfo":Landroid/widget/TextView;
    new-instance v25, Lackmaniac/vescmonitor/Settings$5;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/Settings$5;-><init>(Lackmaniac/vescmonitor/Settings;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const-string v25, "NO_OF_MOTORS"

    invoke-static/range {v25 .. v25}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 80
    .local v12, "noOfMotors":I
    const v25, 0x7f080150

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    .line 81
    .local v17, "spinnerNoOfMotors":Landroid/widget/Spinner;
    const/4 v6, 0x0

    .line 82
    .local v6, "counter":I
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Spinner;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f020005

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    const/16 v25, 0x0

    :goto_0
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    aget-object v8, v26, v25

    .line 83
    .local v8, "entry":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    if-ne v0, v12, :cond_0

    .line 84
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 82
    :goto_1
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 86
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 90
    .end local v8    # "entry":Ljava/lang/String;
    :cond_1
    new-instance v25, Lackmaniac/vescmonitor/Settings$6;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lackmaniac/vescmonitor/Settings$6;-><init>(Lackmaniac/vescmonitor/Settings;Landroid/content/SharedPreferences$Editor;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 102
    const v25, 0x7f08007c

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 103
    .local v4, "boardNameEditText":Landroid/widget/EditText;
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v9, v0, [Landroid/text/InputFilter;

    .line 105
    .local v9, "fa":[Landroid/text/InputFilter;
    const/16 v25, 0x0

    new-instance v26, Landroid/text/InputFilter$LengthFilter;

    const/16 v27, 0xa

    invoke-direct/range {v26 .. v27}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v26, v9, v25

    .line 106
    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 108
    new-instance v25, Lackmaniac/vescmonitor/Settings$7;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lackmaniac/vescmonitor/Settings$7;-><init>(Lackmaniac/vescmonitor/Settings;Landroid/content/SharedPreferences$Editor;)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    const-string v25, "SAVE_GPS_POSITION"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 132
    .local v13, "saveGPSPosition":Z
    const v25, 0x7f08012d

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    .line 133
    .local v14, "saveGPSPositionCheckBox":Landroid/widget/CheckBox;
    invoke-virtual {v14, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 135
    new-instance v25, Lackmaniac/vescmonitor/Settings$8;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lackmaniac/vescmonitor/Settings$8;-><init>(Lackmaniac/vescmonitor/Settings;Landroid/content/SharedPreferences$Editor;)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 147
    const-string v25, "IS_CONNECTED_TO_SLAVE"

    invoke-static/range {v25 .. v25}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 148
    .local v10, "isConnectedToSlave":Z
    const v25, 0x7f0800ab

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    .line 149
    .local v11, "isConnectedToSlaveCheckBox":Landroid/widget/CheckBox;
    invoke-virtual {v11, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 151
    new-instance v25, Lackmaniac/vescmonitor/Settings$9;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lackmaniac/vescmonitor/Settings$9;-><init>(Lackmaniac/vescmonitor/Settings;Landroid/content/SharedPreferences$Editor;)V

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 163
    const-string v25, "USE_DARK_THEME"

    invoke-static/range {v25 .. v25}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 164
    .local v23, "useDarkTheme":Z
    const v25, 0x7f0801b7

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/CheckBox;

    .line 165
    .local v24, "useDarktheme":Landroid/widget/CheckBox;
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 167
    new-instance v25, Lackmaniac/vescmonitor/Settings$10;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lackmaniac/vescmonitor/Settings$10;-><init>(Lackmaniac/vescmonitor/Settings;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 179
    const-string v25, "CAN_CONTROLLERID"

    invoke-static/range {v25 .. v25}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 180
    .local v5, "canControllerId":I
    const v25, 0x7f08014c

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Spinner;

    .line 181
    .local v16, "spinnerControllerId":Landroid/widget/Spinner;
    const/4 v6, 0x0

    .line 182
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f020001

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    const/16 v25, 0x0

    :goto_2
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    aget-object v8, v26, v25

    .line 183
    .restart local v8    # "entry":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    if-ne v0, v5, :cond_2

    .line 184
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 182
    :goto_3
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 186
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 190
    .end local v8    # "entry":Ljava/lang/String;
    :cond_3
    new-instance v25, Lackmaniac/vescmonitor/Settings$11;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lackmaniac/vescmonitor/Settings$11;-><init>(Lackmaniac/vescmonitor/Settings;Landroid/content/SharedPreferences$Editor;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 227
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 231
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 237
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 234
    :pswitch_0
    invoke-virtual {p0}, Lackmaniac/vescmonitor/Settings;->onBackPressed()V

    .line 235
    const/4 v0, 0x1

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 243
    invoke-virtual {p0}, Lackmaniac/vescmonitor/Settings;->finish()V

    .line 244
    invoke-virtual {p0}, Lackmaniac/vescmonitor/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/Settings;->startActivity(Landroid/content/Intent;)V

    .line 245
    return-void
.end method

.method protected onResume()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x447a0000    # 1000.0f

    const v10, 0x40490fdb    # (float)Math.PI

    const v7, 0x3fcdfeda

    const/high16 v8, 0x3f800000    # 1.0f

    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 250
    const-string v6, "VESC_SETTINGS"

    invoke-virtual {p0, v6, v12}, Lackmaniac/vescmonitor/Settings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 252
    .local v3, "settings":Landroid/content/SharedPreferences;
    const-string v6, "MAGNETS"

    invoke-static {v6}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0xe

    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 253
    .local v1, "magnets":I
    const-string v6, "WHEEL_SIZE"

    invoke-static {v6}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x53

    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 254
    .local v5, "wheelsizeInMM":I
    const-string v6, "TEETH_WHEEL_PULLEY"

    invoke-static {v6}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x24

    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 255
    .local v4, "wheelPulley":I
    const-string v6, "TEETH_MOTOR_PULLEY"

    invoke-static {v6}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0xf

    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 256
    .local v2, "motorPulley":I
    const-string v6, "DISTANCE_UNIT"

    invoke-static {v6}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 258
    .local v0, "distanceUnit":I
    int-to-float v6, v1

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    int-to-float v9, v4

    mul-float/2addr v6, v9

    int-to-float v9, v2

    div-float/2addr v6, v9

    int-to-float v9, v5

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    div-float/2addr v6, v9

    const/high16 v9, 0x42700000    # 60.0f

    mul-float/2addr v6, v9

    const v9, 0x40666666    # 3.6f

    div-float v9, v6, v9

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    move v6, v7

    :goto_0
    mul-float/2addr v6, v9

    invoke-static {v6}, Lackmaniac/vescmonitor/Utils;->setSpeedDevider(F)V

    .line 259
    int-to-float v6, v5

    div-float/2addr v6, v11

    mul-float/2addr v6, v10

    int-to-float v9, v4

    int-to-float v10, v2

    div-float/2addr v9, v10

    div-float/2addr v6, v9

    int-to-float v9, v1

    div-float/2addr v6, v9

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v6, v9

    const/4 v9, 0x1

    if-ne v0, v9, :cond_1

    :goto_1
    mul-float/2addr v6, v7

    invoke-static {v6}, Lackmaniac/vescmonitor/Utils;->setDistanceFactor(F)V

    .line 261
    return-void

    :cond_0
    move v6, v8

    .line 258
    goto :goto_0

    :cond_1
    move v7, v8

    .line 259
    goto :goto_1
.end method
