.class public Lackmaniac/vescmonitor/VideoSettings;
.super Landroid/app/Activity;
.source "VideoSettings.java"


# instance fields
.field private spinnerVideoResolution:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private addResolution(Ljava/lang/String;Ljava/util/List;Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 6
    .param p1, "resolution"    # Ljava/lang/String;
    .param p3, "size"    # Landroid/graphics/Point;
    .param p4, "videoResolutionSize"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Point;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 180
    const-string v3, "("

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const-string v4, "x"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 181
    .local v1, "y":I
    const-string v3, "x"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 182
    .local v0, "x":I
    iget v3, p3, Landroid/graphics/Point;->x:I

    if-lt v3, v0, :cond_0

    iget v3, p3, Landroid/graphics/Point;->y:I

    if-lt v3, v1, :cond_0

    .line 183
    iget v3, p3, Landroid/graphics/Point;->x:I

    if-ne v3, v0, :cond_1

    iget v3, p3, Landroid/graphics/Point;->y:I

    if-ne v3, v1, :cond_1

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <- display size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    const-string v2, "RESOLUTION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " xSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p4, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ySize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p4, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v2, 0x1

    .line 193
    :cond_0
    :goto_0
    return v2

    .line 188
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    const-string v3, "RESOLUTION"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " xSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p4, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ySize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p4, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSelectedVideoResolution(Ljava/util/List;Landroid/graphics/Point;)V
    .locals 7
    .param p2, "videoResolutionSize"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Point;",
            ")V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 198
    .local v0, "count":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 199
    .local v1, "entry":Ljava/lang/String;
    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string v6, "x"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 200
    .local v3, "y":I
    const-string v5, "x"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 201
    .local v2, "x":I
    iget v5, p2, Landroid/graphics/Point;->x:I

    if-ne v5, v2, :cond_1

    iget v5, p2, Landroid/graphics/Point;->y:I

    if-ne v5, v3, :cond_1

    .line 202
    iget-object v4, p0, Lackmaniac/vescmonitor/VideoSettings;->spinnerVideoResolution:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 207
    .end local v1    # "entry":Ljava/lang/String;
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_0
    return-void

    .line 205
    .restart local v1    # "entry":Ljava/lang/String;
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 206
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 28
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v24, 0x7f0a0024

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/VideoSettings;->setContentView(I)V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/VideoSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 31
    const-string v24, "VESC_SETTINGS"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/VideoSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 32
    .local v13, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 34
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v24, "VIDEO_RESOLUTION"

    const-string v25, "(1280x720)"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 35
    .local v22, "videoResolution":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/VideoSettings;->getRequestedOrientation()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getResolutionSize(Ljava/lang/String;I)Landroid/graphics/Point;

    move-result-object v23

    .line 36
    .local v23, "videoResolutionSize":Landroid/graphics/Point;
    const-string v24, "SAVED RESOLUTION"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "x"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v24, "VIDEO_QUALITY"

    const/16 v25, 0x800

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 38
    .local v21, "videoQuality":I
    const-string v24, "SOUND_QUALITY"

    const/16 v25, 0x100

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 39
    .local v15, "soundQuality":I
    const-string v24, "REALTIMESIZE"

    const/16 v25, 0x50

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 40
    .local v12, "realtimeDataSize":I
    const-string v24, "VIDEO_LAYOUT"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 42
    .local v20, "videoLayout":I
    const v24, 0x7f08015b

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/VideoSettings;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/Spinner;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/VideoSettings;->spinnerVideoResolution:Landroid/widget/Spinner;

    .line 44
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 46
    .local v3, "added":Z
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/VideoSettings;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 47
    .local v6, "display":Landroid/view/Display;
    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14}, Landroid/graphics/Point;-><init>()V

    .line 48
    .local v14, "size":Landroid/graphics/Point;
    invoke-virtual {v6, v14}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 49
    const-string v24, "(720x480) SD 480P"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v9, v14, v2}, Lackmaniac/vescmonitor/VideoSettings;->addResolution(Ljava/lang/String;Ljava/util/List;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v24

    if-eqz v24, :cond_0

    if-nez v3, :cond_0

    .line 50
    const/4 v3, 0x1

    .line 51
    :cond_0
    const-string v24, "(1280x720) HD 720P"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v9, v14, v2}, Lackmaniac/vescmonitor/VideoSettings;->addResolution(Ljava/lang/String;Ljava/util/List;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v24

    if-eqz v24, :cond_1

    if-nez v3, :cond_1

    .line 52
    const/4 v3, 0x1

    .line 53
    :cond_1
    const-string v24, "(1920x1080) HD 1080P"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v9, v14, v2}, Lackmaniac/vescmonitor/VideoSettings;->addResolution(Ljava/lang/String;Ljava/util/List;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v24

    if-eqz v24, :cond_2

    if-nez v3, :cond_2

    .line 54
    const/4 v3, 0x1

    .line 55
    :cond_2
    const-string v24, "(3840x2160) HD 2160P"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v9, v14, v2}, Lackmaniac/vescmonitor/VideoSettings;->addResolution(Ljava/lang/String;Ljava/util/List;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v24

    if-eqz v24, :cond_3

    if-nez v3, :cond_3

    .line 56
    const/4 v3, 0x1

    .line 57
    :cond_3
    if-nez v3, :cond_4

    .line 58
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "x"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v9, v14, v2}, Lackmaniac/vescmonitor/VideoSettings;->addResolution(Ljava/lang/String;Ljava/util/List;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    .line 61
    :cond_4
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v24, 0x1090009

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v5, v0, v1, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 63
    .local v5, "dataAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/VideoSettings;->spinnerVideoResolution:Landroid/widget/Spinner;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 65
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v9, v1}, Lackmaniac/vescmonitor/VideoSettings;->setSelectedVideoResolution(Ljava/util/List;Landroid/graphics/Point;)V

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/VideoSettings;->spinnerVideoResolution:Landroid/widget/Spinner;

    move-object/from16 v24, v0

    new-instance v25, Lackmaniac/vescmonitor/VideoSettings$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lackmaniac/vescmonitor/VideoSettings$1;-><init>(Lackmaniac/vescmonitor/VideoSettings;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 81
    const v24, 0x7f08015a

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/VideoSettings;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    .line 82
    .local v19, "spinnerVideoQuality":Landroid/widget/Spinner;
    const/4 v4, 0x0

    .line 83
    .local v4, "counter":I
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/VideoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f02000d

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    const/16 v24, 0x0

    :goto_0
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_6

    aget-object v8, v25, v24

    .line 84
    .local v8, "entry":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 85
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 83
    :goto_1
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 87
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 90
    .end local v8    # "entry":Ljava/lang/String;
    :cond_6
    new-instance v24, Lackmaniac/vescmonitor/VideoSettings$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lackmaniac/vescmonitor/VideoSettings$2;-><init>(Lackmaniac/vescmonitor/VideoSettings;Landroid/content/SharedPreferences$Editor;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 103
    const v24, 0x7f080157

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/VideoSettings;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    .line 104
    .local v17, "spinnerSoundQuality":Landroid/widget/Spinner;
    const/4 v4, 0x0

    .line 105
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/VideoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f02000a

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    const/16 v24, 0x0

    :goto_2
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    aget-object v8, v25, v24

    .line 106
    .restart local v8    # "entry":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    if-ne v0, v15, :cond_7

    .line 107
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 105
    :goto_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 109
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 112
    .end local v8    # "entry":Ljava/lang/String;
    :cond_8
    new-instance v24, Lackmaniac/vescmonitor/VideoSettings$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lackmaniac/vescmonitor/VideoSettings$3;-><init>(Lackmaniac/vescmonitor/VideoSettings;Landroid/content/SharedPreferences$Editor;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 125
    const v24, 0x7f080156

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/VideoSettings;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Spinner;

    .line 126
    .local v16, "spinnerRealtimeDataSize":Landroid/widget/Spinner;
    const/4 v4, 0x0

    .line 127
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/VideoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f020009

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    const/16 v24, 0x0

    :goto_4
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_a

    aget-object v8, v25, v24

    .line 128
    .restart local v8    # "entry":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    if-ne v0, v12, :cond_9

    .line 129
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 127
    :goto_5
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 131
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 134
    .end local v8    # "entry":Ljava/lang/String;
    :cond_a
    new-instance v24, Lackmaniac/vescmonitor/VideoSettings$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lackmaniac/vescmonitor/VideoSettings$4;-><init>(Lackmaniac/vescmonitor/VideoSettings;Landroid/content/SharedPreferences$Editor;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 147
    const v24, 0x7f080159

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/VideoSettings;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    .line 148
    .local v18, "spinnerVideoLayout":Landroid/widget/Spinner;
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 149
    new-instance v24, Lackmaniac/vescmonitor/VideoSettings$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lackmaniac/vescmonitor/VideoSettings$5;-><init>(Lackmaniac/vescmonitor/VideoSettings;Landroid/content/SharedPreferences$Editor;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 162
    const-string v24, "MAKE_BACKGROUND_TRANSPARENT"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 163
    .local v10, "makeBackgroundTransparent":Z
    const v24, 0x7f0800c1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/VideoSettings;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    .line 164
    .local v11, "makeBackgroundTransparentCheckBox":Landroid/widget/CheckBox;
    invoke-virtual {v11, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 166
    new-instance v24, Lackmaniac/vescmonitor/VideoSettings$6;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lackmaniac/vescmonitor/VideoSettings$6;-><init>(Lackmaniac/vescmonitor/VideoSettings;Landroid/content/SharedPreferences$Editor;)V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 177
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 217
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 214
    :pswitch_0
    invoke-virtual {p0}, Lackmaniac/vescmonitor/VideoSettings;->onBackPressed()V

    .line 215
    const/4 v0, 0x1

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
