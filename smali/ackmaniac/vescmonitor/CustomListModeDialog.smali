.class public Lackmaniac/vescmonitor/CustomListModeDialog;
.super Landroid/widget/BaseAdapter;
.source "CustomListModeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;
    }
.end annotation


# instance fields
.field distanceUnit:I

.field isNunchuk:Z

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private modes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lackmaniac/vescmonitor/Mode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lackmaniac/vescmonitor/Mode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "modes":Ljava/util/List;, "Ljava/util/List<Lackmaniac/vescmonitor/Mode;>;"
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->modes:Ljava/util/List;

    .line 18
    iput v2, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->distanceUnit:I

    .line 19
    iput-boolean v2, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->isNunchuk:Z

    .line 24
    iput-object p2, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->modes:Ljava/util/List;

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->layoutInflater:Landroid/view/LayoutInflater;

    .line 27
    const-string v1, "VESC_SETTINGS"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "DISTANCE_UNIT"

    invoke-static {v1}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->distanceUnit:I

    .line 29
    const-string v1, "IS_NUNCHUK"

    invoke-static {v1}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->isNunchuk:Z

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->modes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->modes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 49
    if-nez p2, :cond_0

    .line 50
    iget-object v2, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->layoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0a002d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    new-instance v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;

    invoke-direct {v0}, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;-><init>()V

    .line 52
    .local v0, "holder":Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;
    const v2, 0x7f0800ea

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->modeName:Landroid/widget/TextView;

    .line 53
    const v2, 0x7f0800eb

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->modePPMType:Landroid/widget/TextView;

    .line 54
    const v2, 0x7f0800e8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->motorMax:Landroid/widget/TextView;

    .line 55
    const v2, 0x7f0800e9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->motorMin:Landroid/widget/TextView;

    .line 56
    const v2, 0x7f0800dc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->batteryMax:Landroid/widget/TextView;

    .line 57
    const v2, 0x7f0800dd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->batteryMin:Landroid/widget/TextView;

    .line 58
    const v2, 0x7f0800e6

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->maxWattsTitel:Landroid/widget/TextView;

    .line 59
    const v2, 0x7f0800e5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->maxWatts:Landroid/widget/TextView;

    .line 60
    const v2, 0x7f0800e7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->maxWattsUnit:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f0800e3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->modeMaxSpeed:Landroid/widget/TextView;

    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    :goto_0
    iget-object v2, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->modes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lackmaniac/vescmonitor/Mode;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Mode;->getModeNumber()I

    move-result v2

    if-nez v2, :cond_1

    .line 79
    iget-object v2, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->modeName:Landroid/widget/TextView;

    const-string v3, "Default"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_1
    iget-boolean v2, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->isNunchuk:Z

    if-eqz v2, :cond_2

    .line 85
    iget-object v3, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->modePPMType:Landroid/widget/TextView;

    iget-object v2, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->modes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lackmaniac/vescmonitor/Mode;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Mode;->getPpmMode()I

    move-result v2

    invoke-static {v2, v7}, Lackmaniac/vescmonitor/Utils;->getChukModeText(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :goto_2
    iget-object v3, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->motorMax:Landroid/widget/TextView;

    iget-object v2, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->modes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lackmaniac/vescmonitor/Mode;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Mode;->getMaxCurrentMotor()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v3, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->motorMin:Landroid/widget/TextView;

    iget-object v2, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->modes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lackmaniac/vescmonitor/Mode;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Mode;->getMinCurrentMotor()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v3, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->batteryMax:Landroid/widget/TextView;

    iget-object v2, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->modes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lackmaniac/vescmonitor/Mode;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Mode;->getMaxBatteryCurent()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v3, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->batteryMin:Landroid/widget/TextView;

    iget-object v2, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->modes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lackmaniac/vescmonitor/Mode;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Mode;->getMinBatteryCurent()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v2, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->modes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lackmaniac/vescmonitor/Mode;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Mode;->isUseMaxWatt()Z

    move-result v2

    if-nez v2, :cond_3

    .line 95
    iget-object v2, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->maxWatts:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->maxWattsTitel:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->maxWattsUnit:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :goto_3
    iget-object v3, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->modeMaxSpeed:Landroid/widget/TextView;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.1f"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->modes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lackmaniac/vescmonitor/Mode;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Mode;->getMaxSpeed()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const v2, 0x7f0800e4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 106
    .local v1, "modeMaxSpeedTitel":Landroid/widget/TextView;
    iget v2, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->distanceUnit:I

    if-ne v2, v8, :cond_4

    .line 107
    const-string v2, "Max mi/h"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :goto_4
    return-object p2

    .line 64
    .end local v0    # "holder":Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;
    .end local v1    # "modeMaxSpeedTitel":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;

    .restart local v0    # "holder":Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;
    goto/16 :goto_0

    .line 81
    :cond_1
    iget-object v3, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->modeName:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->modes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lackmaniac/vescmonitor/Mode;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Mode;->getModeNumber()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->modes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lackmaniac/vescmonitor/Mode;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Mode;->getModeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 87
    :cond_2
    iget-object v3, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->modePPMType:Landroid/widget/TextView;

    iget-object v2, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->modes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lackmaniac/vescmonitor/Mode;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Mode;->getPpmMode()I

    move-result v2

    invoke-static {v2, v7}, Lackmaniac/vescmonitor/Utils;->getPPMModeText(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 99
    :cond_3
    iget-object v2, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->maxWattsTitel:Landroid/widget/TextView;

    const v3, 0x7f0d0055

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object v3, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->maxWatts:Landroid/widget/TextView;

    iget-object v2, p0, Lackmaniac/vescmonitor/CustomListModeDialog;->modes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lackmaniac/vescmonitor/Mode;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Mode;->getMaxWatt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v2, v0, Lackmaniac/vescmonitor/CustomListModeDialog$ViewHolder;->maxWattsUnit:Landroid/widget/TextView;

    const-string v3, " W"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 109
    .restart local v1    # "modeMaxSpeedTitel":Landroid/widget/TextView;
    :cond_4
    const-string v2, "Max km/h"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method
