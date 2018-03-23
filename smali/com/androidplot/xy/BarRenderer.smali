.class public Lcom/androidplot/xy/BarRenderer;
.super Lcom/androidplot/xy/GroupRenderer;
.source "BarRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/BarRenderer$BarComparator;,
        Lcom/androidplot/xy/BarRenderer$BarGroup;,
        Lcom/androidplot/xy/BarRenderer$Bar;,
        Lcom/androidplot/xy/BarRenderer$BarWidthMode;,
        Lcom/androidplot/xy/BarRenderer$Style;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FormatterType:",
        "Lcom/androidplot/xy/BarFormatter;",
        ">",
        "Lcom/androidplot/xy/GroupRenderer",
        "<TFormatterType;>;"
    }
.end annotation


# instance fields
.field private barComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/androidplot/xy/BarRenderer",
            "<TFormatterType;>.Bar;>;"
        }
    .end annotation
.end field

.field private barGap:F

.field private barWidth:F

.field private barWidthMode:Lcom/androidplot/xy/BarRenderer$BarWidthMode;

.field private style:Lcom/androidplot/xy/BarRenderer$Style;


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYPlot;)V
    .locals 1
    .param p1, "plot"    # Lcom/androidplot/xy/XYPlot;

    .prologue
    .line 61
    .local p0, "this":Lcom/androidplot/xy/BarRenderer;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>;"
    invoke-direct {p0, p1}, Lcom/androidplot/xy/GroupRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    .line 37
    sget-object v0, Lcom/androidplot/xy/BarRenderer$Style;->OVERLAID:Lcom/androidplot/xy/BarRenderer$Style;

    iput-object v0, p0, Lcom/androidplot/xy/BarRenderer;->style:Lcom/androidplot/xy/BarRenderer$Style;

    .line 38
    sget-object v0, Lcom/androidplot/xy/BarRenderer$BarWidthMode;->FIXED_WIDTH:Lcom/androidplot/xy/BarRenderer$BarWidthMode;

    iput-object v0, p0, Lcom/androidplot/xy/BarRenderer;->barWidthMode:Lcom/androidplot/xy/BarRenderer$BarWidthMode;

    .line 39
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/androidplot/xy/BarRenderer;->barWidth:F

    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/androidplot/xy/BarRenderer;->barGap:F

    .line 41
    new-instance v0, Lcom/androidplot/xy/BarRenderer$BarComparator;

    invoke-direct {v0, p0}, Lcom/androidplot/xy/BarRenderer$BarComparator;-><init>(Lcom/androidplot/xy/BarRenderer;)V

    iput-object v0, p0, Lcom/androidplot/xy/BarRenderer;->barComparator:Ljava/util/Comparator;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/androidplot/xy/BarRenderer;)Lcom/androidplot/xy/BarRenderer$Style;
    .locals 1
    .param p0, "x0"    # Lcom/androidplot/xy/BarRenderer;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/androidplot/xy/BarRenderer;->style:Lcom/androidplot/xy/BarRenderer$Style;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Lcom/androidplot/xy/BarRenderer;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>;"
    check-cast p3, Lcom/androidplot/xy/BarFormatter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/xy/BarRenderer;->doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/BarFormatter;)V

    return-void
.end method

.method public doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/BarFormatter;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "formatter"    # Lcom/androidplot/xy/BarFormatter;

    .prologue
    .line 119
    .local p0, "this":Lcom/androidplot/xy/BarRenderer;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>;"
    invoke-virtual {p3}, Lcom/androidplot/xy/BarFormatter;->hasFillPaint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p3}, Lcom/androidplot/xy/BarFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 122
    :cond_0
    invoke-virtual {p3}, Lcom/androidplot/xy/BarFormatter;->getBorderPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 123
    return-void
.end method

.method public getBarWidthMode()Lcom/androidplot/xy/BarRenderer$BarWidthMode;
    .locals 1

    .prologue
    .line 93
    .local p0, "this":Lcom/androidplot/xy/BarRenderer;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>;"
    iget-object v0, p0, Lcom/androidplot/xy/BarRenderer;->barWidthMode:Lcom/androidplot/xy/BarRenderer$BarWidthMode;

    return-object v0
.end method

.method public getFormatter(ILcom/androidplot/xy/XYSeries;)Lcom/androidplot/xy/BarFormatter;
    .locals 1
    .param p1, "index"    # I
    .param p2, "series"    # Lcom/androidplot/xy/XYSeries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/androidplot/xy/XYSeries;",
            ")TFormatterType;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lcom/androidplot/xy/BarRenderer;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStyle()Lcom/androidplot/xy/BarRenderer$Style;
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lcom/androidplot/xy/BarRenderer;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>;"
    iget-object v0, p0, Lcom/androidplot/xy/BarRenderer;->style:Lcom/androidplot/xy/BarRenderer$Style;

    return-object v0
.end method

.method public onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/util/List;ILcom/androidplot/ui/RenderStack;)V
    .locals 40
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "plotArea"    # Landroid/graphics/RectF;
    .param p4, "seriesSize"    # I
    .param p5, "stack"    # Lcom/androidplot/ui/RenderStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/ui/SeriesBundle",
            "<",
            "Lcom/androidplot/xy/XYSeries;",
            "+TFormatterType;>;>;I",
            "Lcom/androidplot/ui/RenderStack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/androidplot/xy/BarRenderer;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>;"
    .local p3, "sfList":Ljava/util/List;, "Ljava/util/List<Lcom/androidplot/ui/SeriesBundle<Lcom/androidplot/xy/XYSeries;+TFormatterType;>;>;"
    new-instance v21, Ljava/util/TreeMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/TreeMap;-><init>()V

    .line 148
    .local v21, "axisMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Number;Lcom/androidplot/xy/BarRenderer<TFormatterType;>.BarGroup;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/androidplot/ui/SeriesBundle;

    .line 152
    .local v37, "thisPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<Lcom/androidplot/xy/XYSeries;+TFormatterType;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move/from16 v0, p4

    if-ge v8, v0, :cond_0

    .line 154
    invoke-virtual/range {v37 .. v37}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v5

    check-cast v5, Lcom/androidplot/xy/XYSeries;

    invoke-interface {v5, v8}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 157
    new-instance v4, Lcom/androidplot/xy/BarRenderer$Bar;

    invoke-virtual/range {v37 .. v37}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v6

    check-cast v6, Lcom/androidplot/xy/XYSeries;

    invoke-virtual/range {v37 .. v37}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v7

    check-cast v7, Lcom/androidplot/xy/BarFormatter;

    move-object/from16 v5, p0

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/androidplot/xy/BarRenderer$Bar;-><init>(Lcom/androidplot/xy/BarRenderer;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/BarFormatter;ILandroid/graphics/RectF;)V

    .line 160
    .local v4, "bar":Lcom/androidplot/xy/BarRenderer$Bar;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.Bar;"
    iget v5, v4, Lcom/androidplot/xy/BarRenderer$Bar;->intX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 161
    iget v5, v4, Lcom/androidplot/xy/BarRenderer$Bar;->intX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/androidplot/xy/BarRenderer$BarGroup;

    .line 166
    .local v23, "barGroup":Lcom/androidplot/xy/BarRenderer$BarGroup;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.BarGroup;"
    :goto_1
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/androidplot/xy/BarRenderer$BarGroup;->addBar(Lcom/androidplot/xy/BarRenderer$Bar;)V

    .line 152
    .end local v4    # "bar":Lcom/androidplot/xy/BarRenderer$Bar;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.Bar;"
    .end local v23    # "barGroup":Lcom/androidplot/xy/BarRenderer$BarGroup;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.BarGroup;"
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 163
    .restart local v4    # "bar":Lcom/androidplot/xy/BarRenderer$Bar;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.Bar;"
    :cond_2
    new-instance v23, Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v5, v4, Lcom/androidplot/xy/BarRenderer$Bar;->intX:I

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v5, v2}, Lcom/androidplot/xy/BarRenderer$BarGroup;-><init>(Lcom/androidplot/xy/BarRenderer;ILandroid/graphics/RectF;)V

    .line 164
    .restart local v23    # "barGroup":Lcom/androidplot/xy/BarRenderer$BarGroup;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.BarGroup;"
    iget v5, v4, Lcom/androidplot/xy/BarRenderer$Bar;->intX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 173
    .end local v4    # "bar":Lcom/androidplot/xy/BarRenderer$Bar;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.Bar;"
    .end local v8    # "i":I
    .end local v23    # "barGroup":Lcom/androidplot/xy/BarRenderer$BarGroup;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.BarGroup;"
    .end local v37    # "thisPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<Lcom/androidplot/xy/XYSeries;+TFormatterType;>;"
    :cond_3
    const/16 v35, 0x0

    .line 174
    .local v35, "prev":Lcom/androidplot/xy/BarRenderer$BarGroup;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.BarGroup;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/Map$Entry;

    .line 175
    .local v32, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Number;Lcom/androidplot/xy/BarRenderer<TFormatterType;>.BarGroup;>;"
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/androidplot/xy/BarRenderer$BarGroup;

    .line 176
    .local v25, "current":Lcom/androidplot/xy/BarRenderer$BarGroup;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.BarGroup;"
    move-object/from16 v0, v35

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/androidplot/xy/BarRenderer$BarGroup;->prev:Lcom/androidplot/xy/BarRenderer$BarGroup;

    .line 177
    move-object/from16 v35, v25

    .line 178
    goto :goto_2

    .line 181
    .end local v25    # "current":Lcom/androidplot/xy/BarRenderer$BarGroup;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.BarGroup;"
    .end local v32    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Number;Lcom/androidplot/xy/BarRenderer<TFormatterType;>.BarGroup;>;"
    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/androidplot/xy/BarRenderer;->barGap:F

    float-to-int v0, v5

    move/from16 v28, v0

    .line 185
    .local v28, "gap":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual/range {v21 .. v21}, Ljava/util/TreeMap;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int v6, v6, v28

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual/range {v21 .. v21}, Ljava/util/TreeMap;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float v26, v5, v6

    .line 186
    .local v26, "f_rough_width":F
    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v36, v0

    .line 187
    .local v36, "rough_width":I
    if-gez v36, :cond_5

    const/16 v36, 0x0

    .line 188
    :cond_5
    move/from16 v0, v28

    move/from16 v1, v36

    if-le v0, v1, :cond_6

    .line 189
    div-int/lit8 v28, v36, 0x2

    .line 196
    :cond_6
    invoke-virtual/range {v21 .. v21}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Number;

    .line 198
    .local v30, "key":Ljava/lang/Number;
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/androidplot/xy/BarRenderer$BarGroup;

    .line 201
    .restart local v23    # "barGroup":Lcom/androidplot/xy/BarRenderer$BarGroup;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.BarGroup;"
    sget-object v5, Lcom/androidplot/xy/BarRenderer$1;->$SwitchMap$com$androidplot$xy$BarRenderer$BarWidthMode:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/androidplot/xy/BarRenderer;->barWidthMode:Lcom/androidplot/xy/BarRenderer$BarWidthMode;

    invoke-virtual {v7}, Lcom/androidplot/xy/BarRenderer$BarWidthMode;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    .line 238
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/BarRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v5

    check-cast v5, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v5}, Lcom/androidplot/xy/XYPlot;->getRangeOrigin()Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    .line 239
    .local v10, "rangeOrigin":D
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/BarRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v5

    check-cast v5, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v5}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v5

    iget-object v9, v5, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-double v12, v5

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v14, v5

    const/16 v16, 0x1

    .line 240
    invoke-virtual/range {v9 .. v16}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide v12

    double-to-float v14, v12

    .line 242
    .local v14, "basePositionY":F
    sget-object v5, Lcom/androidplot/xy/BarRenderer$1;->$SwitchMap$com$androidplot$xy$BarRenderer$Style:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/androidplot/xy/BarRenderer;->style:Lcom/androidplot/xy/BarRenderer$Style;

    invoke-virtual {v7}, Lcom/androidplot/xy/BarRenderer$Style;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_1

    goto :goto_3

    .line 244
    :pswitch_0
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->bars:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/androidplot/xy/BarRenderer;->barComparator:Ljava/util/Comparator;

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 245
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->bars:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/androidplot/xy/BarRenderer$Bar;

    .line 246
    .restart local v4    # "bar":Lcom/androidplot/xy/BarRenderer$Bar;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.Bar;"
    invoke-virtual {v4}, Lcom/androidplot/xy/BarRenderer$Bar;->getFormatter()Lcom/androidplot/xy/BarFormatter;

    move-result-object v27

    .line 247
    .local v27, "formatter":Lcom/androidplot/xy/BarFormatter;
    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->hasPointLabelFormatter()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 248
    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->getPointLabelFormatter()Lcom/androidplot/xy/PointLabelFormatter;

    move-result-object v33

    .line 249
    .local v33, "plf":Lcom/androidplot/xy/PointLabelFormatter;
    :goto_6
    const/16 v34, 0x0

    .line 250
    .local v34, "pointLabeler":Lcom/androidplot/xy/PointLabeler;
    if-eqz v27, :cond_9

    .line 251
    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->getPointLabeler()Lcom/androidplot/xy/PointLabeler;

    move-result-object v34

    .line 254
    :cond_9
    iget-wide v12, v4, Lcom/androidplot/xy/BarRenderer$Bar;->yVal:D

    cmpg-double v7, v12, v10

    if-gez v7, :cond_f

    .line 255
    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->hasFillPaint()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v4, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v7, v7, Lcom/androidplot/xy/BarRenderer$BarGroup;->width:I

    const/4 v9, 0x2

    if-lt v7, v9, :cond_a

    .line 256
    iget-object v7, v4, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v7, v7, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftX:I

    int-to-float v13, v7

    iget-object v7, v4, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v7, v7, Lcom/androidplot/xy/BarRenderer$BarGroup;->rightX:I

    int-to-float v15, v7

    iget v7, v4, Lcom/androidplot/xy/BarRenderer$Bar;->intY:I

    int-to-float v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v17

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 258
    :cond_a
    iget-object v7, v4, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v7, v7, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftX:I

    int-to-float v13, v7

    iget-object v7, v4, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v7, v7, Lcom/androidplot/xy/BarRenderer$BarGroup;->rightX:I

    int-to-float v15, v7

    iget v7, v4, Lcom/androidplot/xy/BarRenderer$Bar;->intY:I

    int-to-float v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->getBorderPaint()Landroid/graphics/Paint;

    move-result-object v17

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 265
    :goto_7
    if-eqz v33, :cond_8

    invoke-virtual/range {v33 .. v33}, Lcom/androidplot/xy/PointLabelFormatter;->hasTextPaint()Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v34, :cond_8

    .line 266
    iget-object v7, v4, Lcom/androidplot/xy/BarRenderer$Bar;->series:Lcom/androidplot/xy/XYSeries;

    iget v9, v4, Lcom/androidplot/xy/BarRenderer$Bar;->seriesIndex:I

    move-object/from16 v0, v34

    invoke-interface {v0, v7, v9}, Lcom/androidplot/xy/PointLabeler;->getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;

    move-result-object v7

    iget v9, v4, Lcom/androidplot/xy/BarRenderer$Bar;->intX:I

    int-to-float v9, v9

    move-object/from16 v0, v33

    iget v12, v0, Lcom/androidplot/xy/PointLabelFormatter;->hOffset:F

    add-float/2addr v9, v12

    iget v12, v4, Lcom/androidplot/xy/BarRenderer$Bar;->intY:I

    int-to-float v12, v12

    move-object/from16 v0, v33

    iget v13, v0, Lcom/androidplot/xy/PointLabelFormatter;->vOffset:F

    add-float/2addr v12, v13

    invoke-virtual/range {v33 .. v33}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v9, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 204
    .end local v4    # "bar":Lcom/androidplot/xy/BarRenderer$Bar;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.Bar;"
    .end local v10    # "rangeOrigin":D
    .end local v14    # "basePositionY":F
    .end local v27    # "formatter":Lcom/androidplot/xy/BarFormatter;
    .end local v33    # "plf":Lcom/androidplot/xy/PointLabelFormatter;
    .end local v34    # "pointLabeler":Lcom/androidplot/xy/PointLabeler;
    :pswitch_1
    move-object/from16 v0, v23

    iget v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->intX:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/androidplot/xy/BarRenderer;->barWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    float-to-int v7, v7

    sub-int/2addr v5, v7

    move-object/from16 v0, v23

    iput v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftX:I

    .line 205
    move-object/from16 v0, p0

    iget v5, v0, Lcom/androidplot/xy/BarRenderer;->barWidth:F

    float-to-int v5, v5

    move-object/from16 v0, v23

    iput v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->width:I

    .line 206
    move-object/from16 v0, v23

    iget v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftX:I

    move-object/from16 v0, v23

    iget v7, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->width:I

    add-int/2addr v5, v7

    move-object/from16 v0, v23

    iput v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->rightX:I

    goto/16 :goto_4

    .line 209
    :pswitch_2
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->prev:Lcom/androidplot/xy/BarRenderer$BarGroup;

    if-eqz v5, :cond_d

    .line 210
    move-object/from16 v0, v23

    iget v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->intX:I

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->prev:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v7, v7, Lcom/androidplot/xy/BarRenderer$BarGroup;->intX:I

    sub-int/2addr v5, v7

    sub-int v5, v5, v28

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v36

    int-to-double v12, v0

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    mul-double v12, v12, v16

    double-to-int v7, v12

    if-le v5, v7, :cond_b

    .line 212
    move-object/from16 v0, v23

    iget v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->intX:I

    div-int/lit8 v7, v36, 0x2

    sub-int/2addr v5, v7

    move-object/from16 v0, v23

    iput v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftX:I

    .line 213
    move/from16 v0, v36

    move-object/from16 v1, v23

    iput v0, v1, Lcom/androidplot/xy/BarRenderer$BarGroup;->width:I

    .line 214
    move-object/from16 v0, v23

    iget v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftX:I

    move-object/from16 v0, v23

    iget v7, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->width:I

    add-int/2addr v5, v7

    move-object/from16 v0, v23

    iput v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->rightX:I

    goto/16 :goto_4

    .line 217
    :cond_b
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->prev:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v5, v5, Lcom/androidplot/xy/BarRenderer$BarGroup;->rightX:I

    add-int v5, v5, v28

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v23

    iput v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftX:I

    .line 218
    move-object/from16 v0, v23

    iget v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftX:I

    move-object/from16 v0, v23

    iget v7, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->intX:I

    if-le v5, v7, :cond_c

    move-object/from16 v0, v23

    iget v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->intX:I

    move-object/from16 v0, v23

    iput v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftX:I

    .line 220
    :cond_c
    move-object/from16 v0, v23

    iget v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->intX:I

    div-int/lit8 v7, v36, 0x2

    add-int/2addr v5, v7

    move-object/from16 v0, v23

    iput v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->rightX:I

    .line 222
    move-object/from16 v0, v23

    iget v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->rightX:I

    move-object/from16 v0, v23

    iget v7, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftX:I

    sub-int/2addr v5, v7

    move-object/from16 v0, v23

    iput v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->width:I

    goto/16 :goto_4

    .line 226
    :cond_d
    move-object/from16 v0, v23

    iget v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->intX:I

    div-int/lit8 v7, v36, 0x2

    sub-int/2addr v5, v7

    move-object/from16 v0, v23

    iput v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftX:I

    .line 227
    move/from16 v0, v36

    move-object/from16 v1, v23

    iput v0, v1, Lcom/androidplot/xy/BarRenderer$BarGroup;->width:I

    .line 228
    move-object/from16 v0, v23

    iget v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftX:I

    move-object/from16 v0, v23

    iget v7, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->width:I

    add-int/2addr v5, v7

    move-object/from16 v0, v23

    iput v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->rightX:I

    goto/16 :goto_4

    .line 248
    .restart local v4    # "bar":Lcom/androidplot/xy/BarRenderer$Bar;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.Bar;"
    .restart local v10    # "rangeOrigin":D
    .restart local v14    # "basePositionY":F
    .restart local v27    # "formatter":Lcom/androidplot/xy/BarFormatter;
    :cond_e
    const/16 v33, 0x0

    goto/16 :goto_6

    .line 260
    .restart local v33    # "plf":Lcom/androidplot/xy/PointLabelFormatter;
    .restart local v34    # "pointLabeler":Lcom/androidplot/xy/PointLabeler;
    :cond_f
    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->hasFillPaint()Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, v4, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v7, v7, Lcom/androidplot/xy/BarRenderer$BarGroup;->width:I

    const/4 v9, 0x2

    if-lt v7, v9, :cond_10

    .line 261
    iget-object v7, v4, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v7, v7, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftX:I

    int-to-float v0, v7

    move/from16 v16, v0

    iget v7, v4, Lcom/androidplot/xy/BarRenderer$Bar;->intY:I

    int-to-float v0, v7

    move/from16 v17, v0

    iget-object v7, v4, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v7, v7, Lcom/androidplot/xy/BarRenderer$BarGroup;->rightX:I

    int-to-float v0, v7

    move/from16 v18, v0

    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v20

    move-object/from16 v15, p1

    move/from16 v19, v14

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 263
    :cond_10
    iget-object v7, v4, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v7, v7, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftX:I

    int-to-float v0, v7

    move/from16 v16, v0

    iget v7, v4, Lcom/androidplot/xy/BarRenderer$Bar;->intY:I

    int-to-float v0, v7

    move/from16 v17, v0

    iget-object v7, v4, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v7, v7, Lcom/androidplot/xy/BarRenderer$BarGroup;->rightX:I

    int-to-float v0, v7

    move/from16 v18, v0

    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->getBorderPaint()Landroid/graphics/Paint;

    move-result-object v20

    move-object/from16 v15, p1

    move/from16 v19, v14

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 271
    .end local v4    # "bar":Lcom/androidplot/xy/BarRenderer$Bar;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.Bar;"
    .end local v27    # "formatter":Lcom/androidplot/xy/BarFormatter;
    .end local v33    # "plf":Lcom/androidplot/xy/PointLabelFormatter;
    .end local v34    # "pointLabeler":Lcom/androidplot/xy/PointLabeler;
    :pswitch_3
    move-object/from16 v0, v23

    iget v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->width:I

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->bars:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int v39, v5, v7

    .line 272
    .local v39, "width":I
    move-object/from16 v0, v23

    iget v0, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftX:I

    move/from16 v31, v0

    .line 273
    .local v31, "leftX":I
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->bars:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/androidplot/xy/BarRenderer;->barComparator:Ljava/util/Comparator;

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 274
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->bars:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/androidplot/xy/BarRenderer$Bar;

    .line 275
    .restart local v4    # "bar":Lcom/androidplot/xy/BarRenderer$Bar;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.Bar;"
    invoke-virtual {v4}, Lcom/androidplot/xy/BarRenderer$Bar;->getFormatter()Lcom/androidplot/xy/BarFormatter;

    move-result-object v27

    .line 276
    .restart local v27    # "formatter":Lcom/androidplot/xy/BarFormatter;
    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->hasPointLabelFormatter()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 277
    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->getPointLabelFormatter()Lcom/androidplot/xy/PointLabelFormatter;

    move-result-object v33

    .line 278
    .restart local v33    # "plf":Lcom/androidplot/xy/PointLabelFormatter;
    :goto_9
    const/16 v34, 0x0

    .line 279
    .restart local v34    # "pointLabeler":Lcom/androidplot/xy/PointLabeler;
    if-eqz v27, :cond_11

    .line 280
    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->getPointLabeler()Lcom/androidplot/xy/PointLabeler;

    move-result-object v34

    .line 283
    :cond_11
    iget-wide v12, v4, Lcom/androidplot/xy/BarRenderer$Bar;->yVal:D

    cmpg-double v7, v12, v10

    if-gez v7, :cond_15

    .line 284
    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->hasFillPaint()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, v4, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v7, v7, Lcom/androidplot/xy/BarRenderer$BarGroup;->width:I

    const/4 v9, 0x2

    if-lt v7, v9, :cond_12

    .line 285
    move/from16 v0, v31

    int-to-float v13, v0

    add-int v7, v31, v39

    int-to-float v15, v7

    iget v7, v4, Lcom/androidplot/xy/BarRenderer$Bar;->intY:I

    int-to-float v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v17

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 287
    :cond_12
    move/from16 v0, v31

    int-to-float v13, v0

    add-int v7, v31, v39

    int-to-float v15, v7

    iget v7, v4, Lcom/androidplot/xy/BarRenderer$Bar;->intY:I

    int-to-float v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->getBorderPaint()Landroid/graphics/Paint;

    move-result-object v17

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 294
    :goto_a
    if-eqz v33, :cond_13

    invoke-virtual/range {v33 .. v33}, Lcom/androidplot/xy/PointLabelFormatter;->hasTextPaint()Z

    move-result v7

    if-eqz v7, :cond_13

    if-eqz v34, :cond_13

    .line 295
    iget-object v7, v4, Lcom/androidplot/xy/BarRenderer$Bar;->series:Lcom/androidplot/xy/XYSeries;

    iget v9, v4, Lcom/androidplot/xy/BarRenderer$Bar;->seriesIndex:I

    move-object/from16 v0, v34

    invoke-interface {v0, v7, v9}, Lcom/androidplot/xy/PointLabeler;->getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;

    move-result-object v7

    div-int/lit8 v9, v39, 0x2

    add-int v9, v9, v31

    int-to-float v9, v9

    move-object/from16 v0, v33

    iget v12, v0, Lcom/androidplot/xy/PointLabelFormatter;->hOffset:F

    add-float/2addr v9, v12

    iget v12, v4, Lcom/androidplot/xy/BarRenderer$Bar;->intY:I

    int-to-float v12, v12

    move-object/from16 v0, v33

    iget v13, v0, Lcom/androidplot/xy/PointLabelFormatter;->vOffset:F

    add-float/2addr v12, v13

    invoke-virtual/range {v33 .. v33}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v9, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 297
    :cond_13
    add-int v31, v31, v39

    .line 298
    goto/16 :goto_8

    .line 277
    .end local v33    # "plf":Lcom/androidplot/xy/PointLabelFormatter;
    .end local v34    # "pointLabeler":Lcom/androidplot/xy/PointLabeler;
    :cond_14
    const/16 v33, 0x0

    goto :goto_9

    .line 289
    .restart local v33    # "plf":Lcom/androidplot/xy/PointLabelFormatter;
    .restart local v34    # "pointLabeler":Lcom/androidplot/xy/PointLabeler;
    :cond_15
    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->hasFillPaint()Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, v4, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v7, v7, Lcom/androidplot/xy/BarRenderer$BarGroup;->width:I

    const/4 v9, 0x2

    if-lt v7, v9, :cond_16

    .line 290
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v16, v0

    iget v7, v4, Lcom/androidplot/xy/BarRenderer$Bar;->intY:I

    int-to-float v0, v7

    move/from16 v17, v0

    add-int v7, v31, v39

    int-to-float v0, v7

    move/from16 v18, v0

    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v20

    move-object/from16 v15, p1

    move/from16 v19, v14

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 292
    :cond_16
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v16, v0

    iget v7, v4, Lcom/androidplot/xy/BarRenderer$Bar;->intY:I

    int-to-float v0, v7

    move/from16 v17, v0

    add-int v7, v31, v39

    int-to-float v0, v7

    move/from16 v18, v0

    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->getBorderPaint()Landroid/graphics/Paint;

    move-result-object v20

    move-object/from16 v15, p1

    move/from16 v19, v14

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_a

    .line 301
    .end local v4    # "bar":Lcom/androidplot/xy/BarRenderer$Bar;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.Bar;"
    .end local v27    # "formatter":Lcom/androidplot/xy/BarFormatter;
    .end local v31    # "leftX":I
    .end local v33    # "plf":Lcom/androidplot/xy/PointLabelFormatter;
    .end local v34    # "pointLabeler":Lcom/androidplot/xy/PointLabeler;
    .end local v39    # "width":I
    :pswitch_4
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->plotArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v5

    move/from16 v24, v0

    .line 302
    .local v24, "bottom":I
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->bars:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/androidplot/xy/BarRenderer;->barComparator:Ljava/util/Comparator;

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 303
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->bars:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/androidplot/xy/BarRenderer$Bar;

    .line 304
    .local v22, "b":Lcom/androidplot/xy/BarRenderer$Bar;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.Bar;"
    invoke-virtual/range {v22 .. v22}, Lcom/androidplot/xy/BarRenderer$Bar;->getFormatter()Lcom/androidplot/xy/BarFormatter;

    move-result-object v27

    .line 305
    .restart local v27    # "formatter":Lcom/androidplot/xy/BarFormatter;
    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->hasPointLabelFormatter()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 306
    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->getPointLabelFormatter()Lcom/androidplot/xy/PointLabelFormatter;

    move-result-object v33

    .line 307
    .restart local v33    # "plf":Lcom/androidplot/xy/PointLabelFormatter;
    :goto_c
    const/16 v34, 0x0

    .line 308
    .restart local v34    # "pointLabeler":Lcom/androidplot/xy/PointLabeler;
    if-eqz v27, :cond_17

    .line 309
    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->getPointLabeler()Lcom/androidplot/xy/PointLabeler;

    move-result-object v34

    .line 311
    :cond_17
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget-object v7, v7, Lcom/androidplot/xy/BarRenderer$BarGroup;->plotArea:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    move-object/from16 v0, v22

    iget v9, v0, Lcom/androidplot/xy/BarRenderer$Bar;->intY:I

    sub-int v29, v7, v9

    .line 312
    .local v29, "height":I
    sub-int v38, v24, v29

    .line 313
    .local v38, "top":I
    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->hasFillPaint()Z

    move-result v7

    if-eqz v7, :cond_18

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v7, v7, Lcom/androidplot/xy/BarRenderer$BarGroup;->width:I

    const/4 v9, 0x2

    if-lt v7, v9, :cond_18

    .line 314
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v7, v7, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftX:I

    int-to-float v0, v7

    move/from16 v16, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v7, v7, Lcom/androidplot/xy/BarRenderer$BarGroup;->rightX:I

    int-to-float v0, v7

    move/from16 v18, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v20

    move-object/from16 v15, p1

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 317
    :cond_18
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v7, v7, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftX:I

    int-to-float v0, v7

    move/from16 v16, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v7, v7, Lcom/androidplot/xy/BarRenderer$BarGroup;->rightX:I

    int-to-float v0, v7

    move/from16 v18, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/BarFormatter;->getBorderPaint()Landroid/graphics/Paint;

    move-result-object v20

    move-object/from16 v15, p1

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 318
    if-eqz v33, :cond_19

    invoke-virtual/range {v33 .. v33}, Lcom/androidplot/xy/PointLabelFormatter;->hasTextPaint()Z

    move-result v7

    if-eqz v7, :cond_19

    if-eqz v34, :cond_19

    .line 321
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/androidplot/xy/BarRenderer$Bar;->series:Lcom/androidplot/xy/XYSeries;

    move-object/from16 v0, v22

    iget v9, v0, Lcom/androidplot/xy/BarRenderer$Bar;->seriesIndex:I

    move-object/from16 v0, v34

    invoke-interface {v0, v7, v9}, Lcom/androidplot/xy/PointLabeler;->getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    iget v9, v0, Lcom/androidplot/xy/BarRenderer$Bar;->intX:I

    int-to-float v9, v9

    move-object/from16 v0, v33

    iget v12, v0, Lcom/androidplot/xy/PointLabelFormatter;->hOffset:F

    add-float/2addr v9, v12

    move/from16 v0, v38

    int-to-float v12, v0

    move-object/from16 v0, v33

    iget v13, v0, Lcom/androidplot/xy/PointLabelFormatter;->vOffset:F

    add-float/2addr v12, v13

    invoke-virtual/range {v33 .. v33}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v9, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 323
    :cond_19
    move/from16 v24, v38

    .line 324
    goto/16 :goto_b

    .line 306
    .end local v29    # "height":I
    .end local v33    # "plf":Lcom/androidplot/xy/PointLabelFormatter;
    .end local v34    # "pointLabeler":Lcom/androidplot/xy/PointLabeler;
    .end local v38    # "top":I
    :cond_1a
    const/16 v33, 0x0

    goto/16 :goto_c

    .line 330
    .end local v10    # "rangeOrigin":D
    .end local v14    # "basePositionY":F
    .end local v22    # "b":Lcom/androidplot/xy/BarRenderer$Bar;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.Bar;"
    .end local v23    # "barGroup":Lcom/androidplot/xy/BarRenderer$BarGroup;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.BarGroup;"
    .end local v24    # "bottom":I
    .end local v27    # "formatter":Lcom/androidplot/xy/BarFormatter;
    .end local v30    # "key":Ljava/lang/Number;
    :cond_1b
    return-void

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 242
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setBarComparator(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/androidplot/xy/BarRenderer",
            "<TFormatterType;>.Bar;>;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/androidplot/xy/BarRenderer;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>;"
    .local p1, "barComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/androidplot/xy/BarRenderer<TFormatterType;>.Bar;>;"
    iput-object p1, p0, Lcom/androidplot/xy/BarRenderer;->barComparator:Ljava/util/Comparator;

    .line 115
    return-void
.end method

.method public setBarGap(F)V
    .locals 0
    .param p1, "barGap"    # F

    .prologue
    .line 77
    .local p0, "this":Lcom/androidplot/xy/BarRenderer;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>;"
    iput p1, p0, Lcom/androidplot/xy/BarRenderer;->barGap:F

    .line 78
    return-void
.end method

.method public setBarWidth(F)V
    .locals 0
    .param p1, "barWidth"    # F

    .prologue
    .line 69
    .local p0, "this":Lcom/androidplot/xy/BarRenderer;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>;"
    iput p1, p0, Lcom/androidplot/xy/BarRenderer;->barWidth:F

    .line 70
    return-void
.end method

.method public setBarWidth(Lcom/androidplot/xy/BarRenderer$BarWidthMode;F)V
    .locals 2
    .param p1, "mode"    # Lcom/androidplot/xy/BarRenderer$BarWidthMode;
    .param p2, "value"    # F

    .prologue
    .line 97
    .local p0, "this":Lcom/androidplot/xy/BarRenderer;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>;"
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/BarRenderer;->setBarWidthMode(Lcom/androidplot/xy/BarRenderer$BarWidthMode;)V

    .line 98
    sget-object v0, Lcom/androidplot/xy/BarRenderer$1;->$SwitchMap$com$androidplot$xy$BarRenderer$BarWidthMode:[I

    invoke-virtual {p1}, Lcom/androidplot/xy/BarRenderer$BarWidthMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 100
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/BarRenderer;->setBarWidth(F)V

    goto :goto_0

    .line 103
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/BarRenderer;->setBarGap(F)V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBarWidthMode(Lcom/androidplot/xy/BarRenderer$BarWidthMode;)V
    .locals 0
    .param p1, "widthStyle"    # Lcom/androidplot/xy/BarRenderer$BarWidthMode;

    .prologue
    .line 89
    .local p0, "this":Lcom/androidplot/xy/BarRenderer;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>;"
    iput-object p1, p0, Lcom/androidplot/xy/BarRenderer;->barWidthMode:Lcom/androidplot/xy/BarRenderer$BarWidthMode;

    .line 90
    return-void
.end method

.method public setStyle(Lcom/androidplot/xy/BarRenderer$Style;)V
    .locals 0
    .param p1, "renderStyle"    # Lcom/androidplot/xy/BarRenderer$Style;

    .prologue
    .line 81
    .local p0, "this":Lcom/androidplot/xy/BarRenderer;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>;"
    iput-object p1, p0, Lcom/androidplot/xy/BarRenderer;->style:Lcom/androidplot/xy/BarRenderer$Style;

    .line 82
    return-void
.end method
