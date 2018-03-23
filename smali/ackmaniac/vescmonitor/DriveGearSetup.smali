.class public Lackmaniac/vescmonitor/DriveGearSetup;
.super Landroid/app/Activity;
.source "DriveGearSetup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v12, 0x7f0a0022

    invoke-virtual {p0, v12}, Lackmaniac/vescmonitor/DriveGearSetup;->setContentView(I)V

    .line 21
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DriveGearSetup;->getActionBar()Landroid/app/ActionBar;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 23
    const-string v12, "VESC_SETTINGS"

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lackmaniac/vescmonitor/DriveGearSetup;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 24
    .local v5, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 26
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v12, "MAGNETS"

    invoke-static {v12}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xe

    invoke-interface {v5, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 27
    .local v2, "magnets":I
    const-string v12, "WHEEL_SIZE"

    invoke-static {v12}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x53

    invoke-interface {v5, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 28
    .local v11, "wheelsizeInMM":I
    const-string v12, "TEETH_WHEEL_PULLEY"

    invoke-static {v12}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x24

    invoke-interface {v5, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 29
    .local v9, "wheelPulley":I
    const-string v12, "TEETH_MOTOR_PULLEY"

    invoke-static {v12}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xf

    invoke-interface {v5, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 30
    .local v4, "motorPulley":I
    const-string v12, "DISTANCE_UNIT"

    invoke-static {v12}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v5, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 32
    .local v0, "distanceUnit":I
    const v12, 0x7f08007d

    invoke-virtual {p0, v12}, Lackmaniac/vescmonitor/DriveGearSetup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 33
    .local v3, "magnetsEditText":Landroid/widget/EditText;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 35
    new-instance v12, Lackmaniac/vescmonitor/DriveGearSetup$1;

    invoke-direct {v12, p0, v1}, Lackmaniac/vescmonitor/DriveGearSetup$1;-><init>(Lackmaniac/vescmonitor/DriveGearSetup;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v3, v12}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 62
    const v12, 0x7f080098

    invoke-virtual {p0, v12}, Lackmaniac/vescmonitor/DriveGearSetup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 63
    .local v10, "wheelSizeEditText":Landroid/widget/EditText;
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 65
    new-instance v12, Lackmaniac/vescmonitor/DriveGearSetup$2;

    invoke-direct {v12, p0, v1}, Lackmaniac/vescmonitor/DriveGearSetup$2;-><init>(Lackmaniac/vescmonitor/DriveGearSetup;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v10, v12}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    const v12, 0x7f080097

    invoke-virtual {p0, v12}, Lackmaniac/vescmonitor/DriveGearSetup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 93
    .local v8, "teethWheelPulleyEditText":Landroid/widget/EditText;
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    new-instance v12, Lackmaniac/vescmonitor/DriveGearSetup$3;

    invoke-direct {v12, p0, v1}, Lackmaniac/vescmonitor/DriveGearSetup$3;-><init>(Lackmaniac/vescmonitor/DriveGearSetup;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v8, v12}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 122
    const v12, 0x7f08008a

    invoke-virtual {p0, v12}, Lackmaniac/vescmonitor/DriveGearSetup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 123
    .local v7, "teethMotorPulleyEditText":Landroid/widget/EditText;
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 125
    new-instance v12, Lackmaniac/vescmonitor/DriveGearSetup$4;

    invoke-direct {v12, p0, v1}, Lackmaniac/vescmonitor/DriveGearSetup$4;-><init>(Lackmaniac/vescmonitor/DriveGearSetup;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v7, v12}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 152
    const v12, 0x7f08014d

    invoke-virtual {p0, v12}, Lackmaniac/vescmonitor/DriveGearSetup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 153
    .local v6, "spinnerDistanceUnit":Landroid/widget/Spinner;
    packed-switch v0, :pswitch_data_0

    .line 161
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 164
    :goto_0
    new-instance v12, Lackmaniac/vescmonitor/DriveGearSetup$5;

    invoke-direct {v12, p0, v1}, Lackmaniac/vescmonitor/DriveGearSetup$5;-><init>(Lackmaniac/vescmonitor/DriveGearSetup;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v6, v12}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 176
    return-void

    .line 155
    :pswitch_0
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 158
    :pswitch_1
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 180
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 186
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 183
    :pswitch_0
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DriveGearSetup;->onBackPressed()V

    .line 184
    const/4 v0, 0x1

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 192
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DriveGearSetup;->finish()V

    .line 193
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DriveGearSetup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/DriveGearSetup;->startActivity(Landroid/content/Intent;)V

    .line 194
    return-void
.end method
