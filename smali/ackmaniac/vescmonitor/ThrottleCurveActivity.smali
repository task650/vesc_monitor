.class public Lackmaniac/vescmonitor/ThrottleCurveActivity;
.super Landroid/app/Activity;
.source "ThrottleCurveActivity.java"


# instance fields
.field dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lackmaniac/vescmonitor/RealtimeData;",
            ">;"
        }
    .end annotation
.end field

.field firwareVersion:Ljava/lang/String;

.field private lineChart:Lcom/github/mikephil/charting/charts/LineChart;

.field lineData:Lcom/github/mikephil/charting/data/LineData;

.field private lineDataSetLinear:Lcom/github/mikephil/charting/data/LineDataSet;

.field private lineDataSetThrottleCurve:Lcom/github/mikephil/charting/data/LineDataSet;

.field lineDataSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private modeNumber:I

.field numberPickerBezierNeg:Landroid/widget/NumberPicker;

.field numberPickerBezierPos:Landroid/widget/NumberPicker;

.field numberPickerNX1:Landroid/widget/NumberPicker;

.field numberPickerNX2:Landroid/widget/NumberPicker;

.field numberPickerNX3:Landroid/widget/NumberPicker;

.field numberPickerNY1:Landroid/widget/NumberPicker;

.field numberPickerNY2:Landroid/widget/NumberPicker;

.field numberPickerNY3:Landroid/widget/NumberPicker;

.field numberPickerThrottleExp:Landroid/widget/NumberPicker;

.field numberPickerThrottleExpBrake:Landroid/widget/NumberPicker;

.field numberPickerX1:Landroid/widget/NumberPicker;

.field numberPickerX2:Landroid/widget/NumberPicker;

.field numberPickerX3:Landroid/widget/NumberPicker;

.field numberPickerY1:Landroid/widget/NumberPicker;

.field numberPickerY2:Landroid/widget/NumberPicker;

.field numberPickerY3:Landroid/widget/NumberPicker;

.field spinnerThrottleModeExp:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->dataList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSets:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lackmaniac/vescmonitor/ThrottleCurveActivity;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/ThrottleCurveActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->redrawChartExp()V

    return-void
.end method

.method static synthetic access$100(Lackmaniac/vescmonitor/ThrottleCurveActivity;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/ThrottleCurveActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->redrawChart()V

    return-void
.end method

.method private initNumberPicker(Landroid/widget/NumberPicker;FF)V
    .locals 8
    .param p1, "np"    # Landroid/widget/NumberPicker;
    .param p2, "actualValue"    # F
    .param p3, "factor"    # F

    .prologue
    const/4 v7, 0x0

    .line 468
    const/16 v2, 0xc9

    new-array v1, v2, [Ljava/lang/String;

    .line 469
    .local v1, "nums":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xc8

    if-gt v0, v2, :cond_0

    .line 470
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    int-to-float v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    mul-float/2addr v5, p3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    :cond_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 473
    invoke-virtual {p1, v7}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 474
    invoke-virtual {p1, v7}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 475
    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 476
    const/high16 v2, 0x60000

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 477
    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 478
    new-instance v2, Lackmaniac/vescmonitor/ThrottleCurveActivity$3;

    invoke-direct {v2, p0}, Lackmaniac/vescmonitor/ThrottleCurveActivity$3;-><init>(Lackmaniac/vescmonitor/ThrottleCurveActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 484
    return-void
.end method

.method private initNumberPickerBezier(Landroid/widget/NumberPicker;F)V
    .locals 8
    .param p1, "np"    # Landroid/widget/NumberPicker;
    .param p2, "actualValue"    # F

    .prologue
    const/high16 v7, 0x41200000    # 10.0f

    const/4 v6, 0x0

    .line 487
    const/16 v2, 0xb

    new-array v1, v2, [Ljava/lang/String;

    .line 488
    .local v1, "nums":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    if-gt v0, v2, :cond_0

    .line 489
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    int-to-float v5, v0

    div-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 491
    :cond_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 492
    invoke-virtual {p1, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 493
    invoke-virtual {p1, v6}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 494
    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 495
    const/high16 v2, 0x60000

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 496
    mul-float v2, p2, v7

    float-to-int v2, v2

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 497
    new-instance v2, Lackmaniac/vescmonitor/ThrottleCurveActivity$4;

    invoke-direct {v2, p0}, Lackmaniac/vescmonitor/ThrottleCurveActivity$4;-><init>(Lackmaniac/vescmonitor/ThrottleCurveActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 503
    return-void
.end method

.method private initNumberPickerExp(Landroid/widget/NumberPicker;F)V
    .locals 5
    .param p1, "np"    # Landroid/widget/NumberPicker;
    .param p2, "actualValue"    # F

    .prologue
    const/16 v4, 0xc8

    const/4 v3, 0x0

    .line 449
    const/16 v2, 0xc9

    new-array v1, v2, [Ljava/lang/String;

    .line 450
    .local v1, "nums":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v4, :cond_0

    .line 451
    add-int/lit8 v2, v0, -0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {p1, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 454
    invoke-virtual {p1, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 455
    invoke-virtual {p1, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 456
    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 457
    const/high16 v2, 0x60000

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 458
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, p2

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x64

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 459
    new-instance v2, Lackmaniac/vescmonitor/ThrottleCurveActivity$2;

    invoke-direct {v2, p0}, Lackmaniac/vescmonitor/ThrottleCurveActivity$2;-><init>(Lackmaniac/vescmonitor/ThrottleCurveActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 465
    return-void
.end method

.method private redrawChart()V
    .locals 24

    .prologue
    .line 151
    const v18, 0x7f080190

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/charts/LineChart;->clearValues()V

    .line 156
    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v14, "yAXESLinear":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v15, "yAXESThrottleCurve":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v11, v0, [F

    .line 160
    .local v11, "x":[F
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v13, v0, [F

    .line 161
    .local v13, "y":[F
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v8, v0, [F

    .line 162
    .local v8, "nx":[F
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v9, v0, [F

    .line 164
    .local v9, "ny":[F
    const/high16 v6, 0x42c80000    # 100.0f

    .line 165
    .local v6, "maxYValue":F
    const/high16 v7, -0x3d380000    # -100.0f

    .line 167
    .local v7, "minYValue":F
    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, v11, v18

    .line 168
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerX1:Landroid/widget/NumberPicker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/NumberPicker;->getValue()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x43480000    # 200.0f

    div-float v19, v19, v20

    aput v19, v11, v18

    .line 169
    const/16 v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerX2:Landroid/widget/NumberPicker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/NumberPicker;->getValue()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x43480000    # 200.0f

    div-float v19, v19, v20

    aput v19, v11, v18

    .line 170
    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerX3:Landroid/widget/NumberPicker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/NumberPicker;->getValue()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x43480000    # 200.0f

    div-float v19, v19, v20

    aput v19, v11, v18

    .line 171
    const/16 v18, 0x4

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v11, v18

    .line 172
    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, v13, v18

    .line 173
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerY1:Landroid/widget/NumberPicker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/NumberPicker;->getValue()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x43480000    # 200.0f

    div-float v19, v19, v20

    aput v19, v13, v18

    .line 174
    const/16 v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerY2:Landroid/widget/NumberPicker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/NumberPicker;->getValue()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x43480000    # 200.0f

    div-float v19, v19, v20

    aput v19, v13, v18

    .line 175
    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerY3:Landroid/widget/NumberPicker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/NumberPicker;->getValue()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x43480000    # 200.0f

    div-float v19, v19, v20

    aput v19, v13, v18

    .line 176
    const/16 v18, 0x4

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v13, v18

    .line 178
    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, v8, v18

    .line 179
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNX1:Landroid/widget/NumberPicker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/NumberPicker;->getValue()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x43480000    # 200.0f

    div-float v19, v19, v20

    aput v19, v8, v18

    .line 180
    const/16 v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNX2:Landroid/widget/NumberPicker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/NumberPicker;->getValue()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x43480000    # 200.0f

    div-float v19, v19, v20

    aput v19, v8, v18

    .line 181
    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNX3:Landroid/widget/NumberPicker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/NumberPicker;->getValue()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x43480000    # 200.0f

    div-float v19, v19, v20

    aput v19, v8, v18

    .line 182
    const/16 v18, 0x4

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v8, v18

    .line 183
    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, v9, v18

    .line 184
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNY1:Landroid/widget/NumberPicker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/NumberPicker;->getValue()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x43480000    # 200.0f

    div-float v19, v19, v20

    aput v19, v9, v18

    .line 185
    const/16 v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNY2:Landroid/widget/NumberPicker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/NumberPicker;->getValue()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x43480000    # 200.0f

    div-float v19, v19, v20

    aput v19, v9, v18

    .line 186
    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNY3:Landroid/widget/NumberPicker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/NumberPicker;->getValue()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x43480000    # 200.0f

    div-float v19, v19, v20

    aput v19, v9, v18

    .line 187
    const/16 v18, 0x4

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v9, v18

    .line 189
    const/16 v5, -0x64

    .local v5, "i":I
    :goto_0
    const/16 v18, 0x64

    move/from16 v0, v18

    if-gt v5, v0, :cond_2

    .line 190
    int-to-float v0, v5

    move/from16 v18, v0

    const/high16 v19, 0x42c80000    # 100.0f

    div-float v10, v18, v19

    .line 192
    .local v10, "throttle":F
    new-instance v18, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v0, v5

    move/from16 v19, v0

    mul-float v20, v10, v6

    invoke-direct/range {v18 .. v20}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    const/16 v18, 0x0

    cmpl-float v18, v10, v18

    if-ltz v18, :cond_1

    .line 195
    new-instance v18, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v0, v5

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerBezierPos:Landroid/widget/NumberPicker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/NumberPicker;->getValue()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x41200000    # 10.0f

    div-float v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v11, v13, v10, v1}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->neville([F[FFF)D

    move-result-wide v20

    float-to-double v0, v6

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 197
    :cond_1
    new-instance v18, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v0, v5

    move/from16 v19, v0

    neg-float v0, v10

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerBezierNeg:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/NumberPicker;->getValue()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x41200000    # 10.0f

    div-float v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v8, v9, v1, v2}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->neville([F[FFF)D

    move-result-wide v20

    float-to-double v0, v7

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 201
    .end local v10    # "throttle":F
    :cond_2
    new-instance v18, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v19, "Linear"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSetLinear:Lcom/github/mikephil/charting/data/LineDataSet;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSetLinear:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSetLinear:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v18, v0

    const/high16 v19, -0x10000

    invoke-virtual/range {v18 .. v19}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSetLinear:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f400000    # 0.75f

    invoke-virtual/range {v18 .. v19}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 206
    new-instance v18, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v19, "Throttle Curve"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v15, v1}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSetThrottleCurve:Lcom/github/mikephil/charting/data/LineDataSet;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSetThrottleCurve:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSetThrottleCurve:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v18, v0

    const/high16 v19, -0x1000000

    invoke-virtual/range {v18 .. v19}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSetThrottleCurve:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v18, v0

    const/high16 v19, 0x3fc00000    # 1.5f

    invoke-virtual/range {v18 .. v19}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSets:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSetLinear:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSets:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSetThrottleCurve:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v12

    .line 215
    .local v12, "xAxis":Lcom/github/mikephil/charting/components/XAxis;
    sget-object v18, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 216
    const/high16 v18, 0x40a00000    # 5.0f

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 217
    const/high16 v18, -0x1000000

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 218
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 219
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v16

    .line 223
    .local v16, "yLeft":Lcom/github/mikephil/charting/components/YAxis;
    const/high16 v18, 0x40a00000    # 5.0f

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    .line 225
    const/high16 v18, -0x1000000

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 226
    const/high16 v18, 0x42c80000    # 100.0f

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 227
    const/high16 v18, -0x3d380000    # -100.0f

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v17

    .line 232
    .local v17, "yRight":Lcom/github/mikephil/charting/components/YAxis;
    const/high16 v18, 0x40a00000    # 5.0f

    invoke-virtual/range {v17 .. v18}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    .line 233
    const/high16 v18, -0x1000000

    invoke-virtual/range {v17 .. v18}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 234
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 235
    const/high16 v18, 0x42c80000    # 100.0f

    invoke-virtual/range {v17 .. v18}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 236
    const/high16 v18, -0x3d380000    # -100.0f

    invoke-virtual/range {v17 .. v18}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 245
    new-instance v4, Lcom/github/mikephil/charting/components/Description;

    invoke-direct {v4}, Lcom/github/mikephil/charting/components/Description;-><init>()V

    .line 246
    .local v4, "description":Lcom/github/mikephil/charting/components/Description;
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/components/Description;->setText(Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setDescription(Lcom/github/mikephil/charting/components/Description;)V

    .line 252
    new-instance v18, Lcom/github/mikephil/charting/data/LineData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSets:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineData:Lcom/github/mikephil/charting/data/LineData;

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineData:Lcom/github/mikephil/charting/data/LineData;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/github/mikephil/charting/data/LineData;->setDrawValues(Z)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineData:Lcom/github/mikephil/charting/data/LineData;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleYEnabled(Z)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleXEnabled(Z)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 260
    return-void
.end method

.method private redrawChartExp()V
    .locals 20

    .prologue
    .line 263
    const v3, 0x7f080190

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v0, p0

    iput-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->clearValues()V

    .line 268
    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v14, "yAXESLinear":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v15, "yAXESThrottleCurve":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    const/16 v11, -0x64

    .local v11, "i":I
    :goto_0
    const/16 v3, 0x64

    if-gt v11, v3, :cond_1

    .line 272
    int-to-float v3, v11

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v12, v3, v4

    .line 273
    .local v12, "throttle":F
    new-instance v3, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v4, v11

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, v12

    invoke-direct {v3, v4, v5}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v18, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v0, v11

    move/from16 v19, v0

    float-to-double v4, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerThrottleExp:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x64

    int-to-float v3, v3

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v3, v6

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v3, v6

    float-to-double v6, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerThrottleExpBrake:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x64

    int-to-float v3, v3

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v3, v8

    const/high16 v8, 0x40a00000    # 5.0f

    mul-float/2addr v3, v8

    float-to-double v8, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->spinnerThrottleModeExp:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->utils_throttle_curve(DDDI)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v1, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 277
    .end local v12    # "throttle":F
    :cond_1
    new-instance v3, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v4, "Linear"

    invoke-direct {v3, v14, v4}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSetLinear:Lcom/github/mikephil/charting/data/LineDataSet;

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSetLinear:Lcom/github/mikephil/charting/data/LineDataSet;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSetLinear:Lcom/github/mikephil/charting/data/LineDataSet;

    const/high16 v4, -0x10000

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 280
    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSetLinear:Lcom/github/mikephil/charting/data/LineDataSet;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 282
    new-instance v3, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v4, "Throttle Curve"

    invoke-direct {v3, v15, v4}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSetThrottleCurve:Lcom/github/mikephil/charting/data/LineDataSet;

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSetThrottleCurve:Lcom/github/mikephil/charting/data/LineDataSet;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSetThrottleCurve:Lcom/github/mikephil/charting/data/LineDataSet;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSetThrottleCurve:Lcom/github/mikephil/charting/data/LineDataSet;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSets:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSetLinear:Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSets:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSetThrottleCurve:Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v13

    .line 291
    .local v13, "xAxis":Lcom/github/mikephil/charting/components/XAxis;
    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v13, v3}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 292
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v13, v3}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 293
    const/high16 v3, -0x1000000

    invoke-virtual {v13, v3}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 294
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 295
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v16

    .line 299
    .local v16, "yLeft":Lcom/github/mikephil/charting/components/YAxis;
    const/high16 v3, 0x40a00000    # 5.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    .line 301
    const/high16 v3, -0x1000000

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 302
    const/high16 v3, 0x42c80000    # 100.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 303
    const/high16 v3, -0x3d380000    # -100.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 307
    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v17

    .line 308
    .local v17, "yRight":Lcom/github/mikephil/charting/components/YAxis;
    const/high16 v3, 0x40a00000    # 5.0f

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    .line 309
    const/high16 v3, -0x1000000

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 310
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 311
    const/high16 v3, 0x42c80000    # 100.0f

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 312
    const/high16 v3, -0x3d380000    # -100.0f

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 321
    new-instance v2, Lcom/github/mikephil/charting/components/Description;

    invoke-direct {v2}, Lcom/github/mikephil/charting/components/Description;-><init>()V

    .line 322
    .local v2, "description":Lcom/github/mikephil/charting/components/Description;
    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/Description;->setText(Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setDescription(Lcom/github/mikephil/charting/components/Description;)V

    .line 328
    new-instance v3, Lcom/github/mikephil/charting/data/LineData;

    move-object/from16 v0, p0

    iget-object v4, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineDataSets:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineData:Lcom/github/mikephil/charting/data/LineData;

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineData:Lcom/github/mikephil/charting/data/LineData;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineData;->setDrawValues(Z)V

    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v0, p0

    iget-object v4, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineData:Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleYEnabled(Z)V

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleXEnabled(Z)V

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 336
    return-void
.end method

.method private saveSettings()V
    .locals 7

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v3, 0x43480000    # 200.0f

    .line 506
    const-string v1, "VESC_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 507
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->firwareVersion:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    iget v1, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v2, "THROTTLE_EXP"

    invoke-static {v1, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerThrottleExp:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x64

    int-to-float v2, v2

    div-float/2addr v2, v6

    mul-float/2addr v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 509
    iget v1, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v2, "THROTTLE_EXP_BRAKE"

    invoke-static {v1, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerThrottleExpBrake:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x64

    int-to-float v2, v2

    div-float/2addr v2, v6

    mul-float/2addr v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 510
    iget v1, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v2, "THROTTLE_EXP_MODE"

    invoke-static {v1, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->spinnerThrottleModeExp:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 530
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 531
    return-void

    .line 512
    :cond_0
    iget v1, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v2, "TC_NY3"

    invoke-static {v1, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNY3:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 513
    iget v1, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v2, "TC_NY2"

    invoke-static {v1, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNY2:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 514
    iget v1, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v2, "TC_NY1"

    invoke-static {v1, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNY1:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 515
    iget v1, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v2, "TC_Y1"

    invoke-static {v1, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerY1:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 516
    iget v1, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v2, "TC_Y2"

    invoke-static {v1, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerY2:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 517
    iget v1, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v2, "TC_Y3"

    invoke-static {v1, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerY3:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 519
    iget v1, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v2, "TC_NX3"

    invoke-static {v1, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNX3:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 520
    iget v1, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v2, "TC_NX2"

    invoke-static {v1, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNX2:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 521
    iget v1, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v2, "TC_NX1"

    invoke-static {v1, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNX1:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 522
    iget v1, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v2, "TC_X1"

    invoke-static {v1, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerX1:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 523
    iget v1, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v2, "TC_X2"

    invoke-static {v1, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerX2:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 524
    iget v1, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v2, "TC_X3"

    invoke-static {v1, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerX3:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 526
    iget v1, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v2, "TC_BEZIER_NEG"

    invoke-static {v1, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerBezierNeg:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 527
    iget v1, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v2, "TC_BEZIER_POS"

    invoke-static {v1, v2}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerBezierPos:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0
.end method


# virtual methods
.method neville([F[FFF)D
    .locals 8
    .param p1, "x"    # [F
    .param p2, "y"    # [F
    .param p3, "t"    # F
    .param p4, "factor"    # F

    .prologue
    .line 415
    const/4 v5, 0x1

    aget v5, p1, v5

    cmpg-float v5, p3, v5

    if-gez v5, :cond_0

    .line 416
    const/4 v5, 0x1

    aget v5, p2, v5

    const/4 v6, 0x1

    aget v6, p1, v6

    div-float/2addr v5, v6

    mul-float v0, v5, p3

    .line 428
    .local v0, "directSteps":F
    :goto_0
    const/4 v5, 0x5

    new-array v1, v5, [F

    .line 430
    .local v1, "f":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v5, 0x5

    if-ge v2, v5, :cond_4

    aget v5, p2, v2

    aput v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 417
    .end local v0    # "directSteps":F
    .end local v1    # "f":[F
    .end local v2    # "i":I
    :cond_0
    const/4 v5, 0x3

    aget v5, p1, v5

    cmpl-float v5, p3, v5

    if-lez v5, :cond_1

    .line 418
    const/4 v5, 0x4

    aget v5, p2, v5

    const/4 v6, 0x3

    aget v6, p2, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x4

    aget v6, p1, v6

    const/4 v7, 0x3

    aget v7, p1, v7

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    const/4 v6, 0x3

    aget v6, p1, v6

    sub-float v6, p3, v6

    mul-float/2addr v5, v6

    const/4 v6, 0x3

    aget v6, p2, v6

    add-float v0, v5, v6

    .restart local v0    # "directSteps":F
    goto :goto_0

    .line 419
    .end local v0    # "directSteps":F
    :cond_1
    const/4 v5, 0x2

    aget v5, p1, v5

    cmpl-float v5, p3, v5

    if-lez v5, :cond_2

    .line 420
    const/4 v5, 0x3

    aget v5, p2, v5

    const/4 v6, 0x2

    aget v6, p2, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x3

    aget v6, p1, v6

    const/4 v7, 0x2

    aget v7, p1, v7

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    const/4 v6, 0x2

    aget v6, p1, v6

    sub-float v6, p3, v6

    mul-float/2addr v5, v6

    const/4 v6, 0x2

    aget v6, p2, v6

    add-float v0, v5, v6

    .restart local v0    # "directSteps":F
    goto :goto_0

    .line 421
    .end local v0    # "directSteps":F
    :cond_2
    const/4 v5, 0x1

    aget v5, p1, v5

    cmpl-float v5, p3, v5

    if-lez v5, :cond_3

    .line 422
    const/4 v5, 0x2

    aget v5, p2, v5

    const/4 v6, 0x1

    aget v6, p2, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x2

    aget v6, p1, v6

    const/4 v7, 0x1

    aget v7, p1, v7

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, p1, v6

    sub-float v6, p3, v6

    mul-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, p2, v6

    add-float v0, v5, v6

    .restart local v0    # "directSteps":F
    goto :goto_0

    .line 424
    .end local v0    # "directSteps":F
    :cond_3
    const/4 v5, 0x1

    aget v0, p2, v5

    .restart local v0    # "directSteps":F
    goto :goto_0

    .line 432
    .restart local v1    # "f":[F
    .restart local v2    # "i":I
    :cond_4
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_2
    const/4 v5, 0x5

    if-ge v3, v5, :cond_6

    .line 433
    const/4 v2, 0x4

    :goto_3
    if-lt v2, v3, :cond_5

    .line 434
    sub-int v5, v2, v3

    aget v5, p1, v5

    sub-float v5, p3, v5

    aget v6, v1, v2

    mul-float/2addr v5, v6

    aget v6, p1, v2

    sub-float v6, p3, v6

    add-int/lit8 v7, v2, -0x1

    aget v7, v1, v7

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    aget v6, p1, v2

    sub-int v7, v2, v3

    aget v7, p1, v7

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    aput v5, v1, v2

    .line 433
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 432
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 437
    :cond_6
    const/4 v5, 0x4

    aget v5, v1, v5

    const/4 v6, 0x4

    aget v6, v1, v6

    sub-float/2addr v6, v0

    mul-float/2addr v6, p4

    sub-float v4, v5, v6

    .line 439
    .local v4, "spline":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_8

    .line 440
    const/high16 v4, 0x3f800000    # 1.0f

    .line 445
    :cond_7
    :goto_4
    float-to-double v6, v4

    return-wide v6

    .line 441
    :cond_8
    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_7

    .line 442
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 546
    invoke-direct {p0}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->saveSettings()V

    .line 547
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 548
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v10, 0x3e800000    # 0.25f

    const/4 v6, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const-string v4, "VESC_SETTINGS"

    invoke-virtual {p0, v4, v6}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 67
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v4, "FIRWMWARE_VERSION"

    invoke-static {v4}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2.18"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->firwareVersion:Ljava/lang/String;

    .line 69
    iget-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->firwareVersion:Ljava/lang/String;

    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    const v4, 0x7f0a0026

    invoke-virtual {p0, v4}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 74
    invoke-virtual {p0}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "MODE"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    .line 76
    const v4, 0x7f080102

    invoke-virtual {p0, v4}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerThrottleExp:Landroid/widget/NumberPicker;

    .line 77
    const v4, 0x7f080103

    invoke-virtual {p0, v4}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerThrottleExpBrake:Landroid/widget/NumberPicker;

    .line 79
    iget v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v5, "THROTTLE_EXP_MODE"

    invoke-static {v4, v5}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "THROTTLE_EXP_MODE"

    invoke-static {v5}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 80
    .local v3, "throttleExpMode":I
    const v4, 0x7f080158

    invoke-virtual {p0, v4}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->spinnerThrottleModeExp:Landroid/widget/Spinner;

    .line 81
    const/4 v4, 0x3

    invoke-static {v3, v6, v4}, Lackmaniac/vescmonitor/Utils;->truncateInt(III)I

    move-result v3

    .line 82
    iget-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->spinnerThrottleModeExp:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 84
    iget-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->spinnerThrottleModeExp:Landroid/widget/Spinner;

    new-instance v5, Lackmaniac/vescmonitor/ThrottleCurveActivity$1;

    invoke-direct {v5, p0}, Lackmaniac/vescmonitor/ThrottleCurveActivity$1;-><init>(Lackmaniac/vescmonitor/ThrottleCurveActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 94
    iget v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v5, "THROTTLE_EXP"

    invoke-static {v4, v5}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "THROTTLE_EXP"

    invoke-static {v5}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 95
    .local v1, "throttleExp":F
    iget v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v5, "THROTTLE_EXP_BRAKE"

    invoke-static {v4, v5}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "THROTTLE_EXP_BRAKE"

    invoke-static {v5}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 97
    .local v2, "throttleExpBrake":F
    const/high16 v4, -0x3f600000    # -5.0f

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v1, v4, v5}, Lackmaniac/vescmonitor/Utils;->truncateFloat(FFF)F

    move-result v1

    .line 98
    const/high16 v4, -0x3f600000    # -5.0f

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v2, v4, v5}, Lackmaniac/vescmonitor/Utils;->truncateFloat(FFF)F

    move-result v2

    .line 100
    iget-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerThrottleExp:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v1}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->initNumberPickerExp(Landroid/widget/NumberPicker;F)V

    .line 101
    iget-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerThrottleExpBrake:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v2}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->initNumberPickerExp(Landroid/widget/NumberPicker;F)V

    .line 103
    invoke-direct {p0}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->redrawChartExp()V

    .line 148
    .end local v1    # "throttleExp":F
    .end local v2    # "throttleExpBrake":F
    .end local v3    # "throttleExpMode":I
    :goto_0
    return-void

    .line 105
    :cond_0
    const v4, 0x7f0a0025

    invoke-virtual {p0, v4}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->setContentView(I)V

    .line 107
    invoke-virtual {p0}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 109
    invoke-virtual {p0}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "MODE"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    .line 111
    const v4, 0x7f080101

    invoke-virtual {p0, v4}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNY3:Landroid/widget/NumberPicker;

    .line 112
    const v4, 0x7f080100

    invoke-virtual {p0, v4}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNY2:Landroid/widget/NumberPicker;

    .line 113
    const v4, 0x7f0800ff

    invoke-virtual {p0, v4}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNY1:Landroid/widget/NumberPicker;

    .line 114
    const v4, 0x7f080107

    invoke-virtual {p0, v4}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerY1:Landroid/widget/NumberPicker;

    .line 115
    const v4, 0x7f080108

    invoke-virtual {p0, v4}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerY2:Landroid/widget/NumberPicker;

    .line 116
    const v4, 0x7f080109

    invoke-virtual {p0, v4}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerY3:Landroid/widget/NumberPicker;

    .line 118
    const v4, 0x7f0800fe

    invoke-virtual {p0, v4}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNX3:Landroid/widget/NumberPicker;

    .line 119
    const v4, 0x7f0800fd

    invoke-virtual {p0, v4}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNX2:Landroid/widget/NumberPicker;

    .line 120
    const v4, 0x7f0800fc

    invoke-virtual {p0, v4}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNX1:Landroid/widget/NumberPicker;

    .line 121
    const v4, 0x7f080104

    invoke-virtual {p0, v4}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerX1:Landroid/widget/NumberPicker;

    .line 122
    const v4, 0x7f080105

    invoke-virtual {p0, v4}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerX2:Landroid/widget/NumberPicker;

    .line 123
    const v4, 0x7f080106

    invoke-virtual {p0, v4}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerX3:Landroid/widget/NumberPicker;

    .line 125
    iget-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNY3:Landroid/widget/NumberPicker;

    iget v5, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v6, "TC_NY3"

    invoke-static {v5, v6}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TC_NY3"

    invoke-static {v6}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-direct {p0, v4, v5, v9}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->initNumberPicker(Landroid/widget/NumberPicker;FF)V

    .line 126
    iget-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNY2:Landroid/widget/NumberPicker;

    iget v5, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v6, "TC_NY2"

    invoke-static {v5, v6}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TC_NY2"

    invoke-static {v6}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v11}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-direct {p0, v4, v5, v9}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->initNumberPicker(Landroid/widget/NumberPicker;FF)V

    .line 127
    iget-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNY1:Landroid/widget/NumberPicker;

    iget v5, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v6, "TC_NY1"

    invoke-static {v5, v6}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TC_NY1"

    invoke-static {v6}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-direct {p0, v4, v5, v9}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->initNumberPicker(Landroid/widget/NumberPicker;FF)V

    .line 128
    iget-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerY1:Landroid/widget/NumberPicker;

    iget v5, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v6, "TC_Y1"

    invoke-static {v5, v6}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TC_Y1"

    invoke-static {v6}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-direct {p0, v4, v5, v8}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->initNumberPicker(Landroid/widget/NumberPicker;FF)V

    .line 129
    iget-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerY2:Landroid/widget/NumberPicker;

    iget v5, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v6, "TC_Y2"

    invoke-static {v5, v6}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TC_Y2"

    invoke-static {v6}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v11}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-direct {p0, v4, v5, v8}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->initNumberPicker(Landroid/widget/NumberPicker;FF)V

    .line 130
    iget-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerY3:Landroid/widget/NumberPicker;

    iget v5, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v6, "TC_Y3"

    invoke-static {v5, v6}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TC_Y3"

    invoke-static {v6}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-direct {p0, v4, v5, v8}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->initNumberPicker(Landroid/widget/NumberPicker;FF)V

    .line 132
    iget-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNX3:Landroid/widget/NumberPicker;

    iget v5, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v6, "TC_NX3"

    invoke-static {v5, v6}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TC_NX3"

    invoke-static {v6}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-direct {p0, v4, v5, v9}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->initNumberPicker(Landroid/widget/NumberPicker;FF)V

    .line 133
    iget-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNX2:Landroid/widget/NumberPicker;

    iget v5, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v6, "TC_NX2"

    invoke-static {v5, v6}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TC_NX2"

    invoke-static {v6}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v11}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-direct {p0, v4, v5, v9}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->initNumberPicker(Landroid/widget/NumberPicker;FF)V

    .line 134
    iget-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerNX1:Landroid/widget/NumberPicker;

    iget v5, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v6, "TC_NX1"

    invoke-static {v5, v6}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TC_NX1"

    invoke-static {v6}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-direct {p0, v4, v5, v9}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->initNumberPicker(Landroid/widget/NumberPicker;FF)V

    .line 135
    iget-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerX1:Landroid/widget/NumberPicker;

    iget v5, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v6, "TC_X1"

    invoke-static {v5, v6}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TC_X1"

    invoke-static {v6}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-direct {p0, v4, v5, v8}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->initNumberPicker(Landroid/widget/NumberPicker;FF)V

    .line 136
    iget-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerX2:Landroid/widget/NumberPicker;

    iget v5, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v6, "TC_X2"

    invoke-static {v5, v6}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TC_X2"

    invoke-static {v6}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v11}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-direct {p0, v4, v5, v8}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->initNumberPicker(Landroid/widget/NumberPicker;FF)V

    .line 137
    iget-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerX3:Landroid/widget/NumberPicker;

    iget v5, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v6, "TC_X3"

    invoke-static {v5, v6}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TC_X3"

    invoke-static {v6}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-direct {p0, v4, v5, v8}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->initNumberPicker(Landroid/widget/NumberPicker;FF)V

    .line 139
    const v4, 0x7f0800fa

    invoke-virtual {p0, v4}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerBezierNeg:Landroid/widget/NumberPicker;

    .line 140
    const v4, 0x7f0800fb

    invoke-virtual {p0, v4}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerBezierPos:Landroid/widget/NumberPicker;

    .line 142
    iget-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerBezierNeg:Landroid/widget/NumberPicker;

    iget v5, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v6, "TC_BEZIER_NEG"

    invoke-static {v5, v6}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TC_BEZIER_NEG"

    invoke-static {v6}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-direct {p0, v4, v5}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->initNumberPickerBezier(Landroid/widget/NumberPicker;F)V

    .line 143
    iget-object v4, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->numberPickerBezierPos:Landroid/widget/NumberPicker;

    iget v5, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity;->modeNumber:I

    const-string v6, "TC_BEZIER_POS"

    invoke-static {v5, v6}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TC_BEZIER_POS"

    invoke-static {v6}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-direct {p0, v4, v5}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->initNumberPickerBezier(Landroid/widget/NumberPicker;F)V

    .line 145
    invoke-direct {p0}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->redrawChart()V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 535
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 541
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 538
    :pswitch_0
    invoke-virtual {p0}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->onBackPressed()V

    .line 539
    const/4 v0, 0x1

    goto :goto_0

    .line 535
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method utils_throttle_curve(DDDI)F
    .locals 21
    .param p1, "val"    # D
    .param p3, "curve_acc"    # D
    .param p5, "curve_brake"    # D
    .param p7, "mode"    # I

    .prologue
    .line 341
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    cmpg-double v12, p1, v12

    if-gez v12, :cond_0

    .line 342
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    .line 345
    :cond_0
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, p1, v12

    if-lez v12, :cond_1

    .line 346
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 349
    :cond_1
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    .line 352
    .local v10, "val_a":D
    const-wide/16 v12, 0x0

    cmpl-double v12, p1, v12

    if-ltz v12, :cond_3

    .line 353
    move-wide/from16 v2, p3

    .line 360
    .local v2, "curve":D
    :goto_0
    if-nez p7, :cond_5

    .line 361
    const-wide/16 v12, 0x0

    cmpl-double v12, v2, v12

    if-ltz v12, :cond_4

    .line 362
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v10

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v16, v16, v2

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    sub-double v6, v12, v14

    .line 406
    .local v6, "ret":D
    :goto_1
    const-wide/16 v12, 0x0

    cmpg-double v12, p1, v12

    if-gez v12, :cond_2

    .line 407
    neg-double v6, v6

    .line 410
    :cond_2
    double-to-float v12, v6

    return v12

    .line 355
    .end local v2    # "curve":D
    .end local v6    # "ret":D
    :cond_3
    move-wide/from16 v2, p5

    .restart local v2    # "curve":D
    goto :goto_0

    .line 364
    :cond_4
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .restart local v6    # "ret":D
    goto :goto_1

    .line 366
    .end local v6    # "ret":D
    :cond_5
    const/4 v12, 0x1

    move/from16 v0, p7

    if-ne v0, v12, :cond_9

    .line 368
    const-wide/16 v12, 0x0

    cmpl-double v12, v2, v12

    if-ltz v12, :cond_6

    .line 369
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v10

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v16, v16, v2

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    sub-double v4, v12, v14

    .line 375
    .local v4, "first":D
    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v12, v12, v14

    if-gez v12, :cond_7

    .line 376
    move-wide v8, v10

    .line 385
    .local v8, "second":D
    :goto_3
    add-double v12, v4, v8

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v6, v12, v14

    .line 386
    .restart local v6    # "ret":D
    goto :goto_1

    .line 371
    .end local v4    # "first":D
    .end local v6    # "ret":D
    .end local v8    # "second":D
    :cond_6
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .restart local v4    # "first":D
    goto :goto_2

    .line 378
    :cond_7
    const-wide/16 v12, 0x0

    cmpl-double v12, v2, v12

    if-ltz v12, :cond_8

    .line 379
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v10

    mul-double/2addr v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v14, v14, v16

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v18

    div-double v14, v14, v16

    sub-double v8, v12, v14

    .restart local v8    # "second":D
    goto :goto_3

    .line 381
    .end local v8    # "second":D
    :cond_8
    neg-double v12, v2

    mul-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v14

    neg-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v14, v14, v16

    div-double v8, v12, v14

    .restart local v8    # "second":D
    goto :goto_3

    .line 386
    .end local v4    # "first":D
    .end local v8    # "second":D
    :cond_9
    const/4 v12, 0x2

    move/from16 v0, p7

    if-ne v0, v12, :cond_c

    .line 387
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v12, v12, v14

    if-gez v12, :cond_a

    .line 388
    move-wide v6, v10

    .restart local v6    # "ret":D
    goto/16 :goto_1

    .line 390
    .end local v6    # "ret":D
    :cond_a
    const-wide/16 v12, 0x0

    cmpl-double v12, v2, v12

    if-ltz v12, :cond_b

    .line 391
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v10

    mul-double/2addr v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v14, v14, v16

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v18

    div-double v14, v14, v16

    sub-double v6, v12, v14

    .restart local v6    # "ret":D
    goto/16 :goto_1

    .line 393
    .end local v6    # "ret":D
    :cond_b
    neg-double v12, v2

    mul-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v14

    neg-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v14, v14, v16

    div-double v6, v12, v14

    .restart local v6    # "ret":D
    goto/16 :goto_1

    .line 396
    .end local v6    # "ret":D
    :cond_c
    const/4 v12, 0x3

    move/from16 v0, p7

    if-ne v0, v12, :cond_e

    .line 397
    const-wide/16 v12, 0x0

    cmpl-double v12, v2, v12

    if-ltz v12, :cond_d

    .line 398
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v10

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v18, v2, v10

    add-double v16, v16, v18

    div-double v14, v14, v16

    sub-double v6, v12, v14

    .restart local v6    # "ret":D
    goto/16 :goto_1

    .line 400
    .end local v6    # "ret":D
    :cond_d
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v10

    mul-double/2addr v14, v2

    sub-double/2addr v12, v14

    div-double v6, v10, v12

    .restart local v6    # "ret":D
    goto/16 :goto_1

    .line 403
    .end local v6    # "ret":D
    :cond_e
    move-wide v6, v10

    .restart local v6    # "ret":D
    goto/16 :goto_1
.end method
