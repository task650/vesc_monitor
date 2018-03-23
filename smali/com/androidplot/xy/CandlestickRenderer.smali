.class public Lcom/androidplot/xy/CandlestickRenderer;
.super Lcom/androidplot/xy/GroupRenderer;
.source "CandlestickRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FormatterType:",
        "Lcom/androidplot/xy/CandlestickFormatter;",
        ">",
        "Lcom/androidplot/xy/GroupRenderer",
        "<TFormatterType;>;"
    }
.end annotation


# static fields
.field protected static final CLOSE_INDEX:I = 0x3

.field protected static final HIGH_INDEX:I = 0x0

.field protected static final LOW_INDEX:I = 0x1

.field protected static final OPEN_INDEX:I = 0x2


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYPlot;)V
    .locals 0
    .param p1, "plot"    # Lcom/androidplot/xy/XYPlot;

    .prologue
    .line 47
    .local p0, "this":Lcom/androidplot/xy/CandlestickRenderer;, "Lcom/androidplot/xy/CandlestickRenderer<TFormatterType;>;"
    invoke-direct {p0, p1}, Lcom/androidplot/xy/GroupRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected bridge synthetic doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .locals 0

    .prologue
    .line 39
    .local p0, "this":Lcom/androidplot/xy/CandlestickRenderer;, "Lcom/androidplot/xy/CandlestickRenderer<TFormatterType;>;"
    check-cast p3, Lcom/androidplot/xy/CandlestickFormatter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/xy/CandlestickRenderer;->doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/CandlestickFormatter;)V

    return-void
.end method

.method protected doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/CandlestickFormatter;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "TFormatterType;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/androidplot/xy/CandlestickRenderer;, "Lcom/androidplot/xy/CandlestickRenderer<TFormatterType;>;"
    .local p3, "formatter":Lcom/androidplot/xy/CandlestickFormatter;, "TFormatterType;"
    return-void
.end method

.method protected drawBody(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/androidplot/xy/CandlestickFormatter;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "open"    # Landroid/graphics/PointF;
    .param p3, "close"    # Landroid/graphics/PointF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            "TFormatterType;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/androidplot/xy/CandlestickRenderer;, "Lcom/androidplot/xy/CandlestickRenderer<TFormatterType;>;"
    .local p4, "formatter":Lcom/androidplot/xy/CandlestickFormatter;, "TFormatterType;"
    invoke-virtual {p4}, Lcom/androidplot/xy/CandlestickFormatter;->getBodyWidth()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v2, v4, v5

    .line 107
    .local v2, "halfWidth":F
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v2

    iget v5, p2, Landroid/graphics/PointF;->y:F

    iget v6, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v2

    iget v7, p3, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 109
    .local v3, "rect":Landroid/graphics/RectF;
    iget v4, p2, Landroid/graphics/PointF;->y:F

    iget v5, p3, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 110
    invoke-virtual {p4}, Lcom/androidplot/xy/CandlestickFormatter;->getRisingBodyFillPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 112
    .local v0, "bodyFillPaint":Landroid/graphics/Paint;
    :goto_0
    iget v4, p2, Landroid/graphics/PointF;->y:F

    iget v5, p3, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 113
    invoke-virtual {p4}, Lcom/androidplot/xy/CandlestickFormatter;->getRisingBodyStrokePaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 115
    .local v1, "bodyStrokePaint":Landroid/graphics/Paint;
    :goto_1
    sget-object v4, Lcom/androidplot/xy/CandlestickRenderer$1;->$SwitchMap$com$androidplot$xy$CandlestickFormatter$BodyStyle:[I

    invoke-virtual {p4}, Lcom/androidplot/xy/CandlestickFormatter;->getBodyStyle()Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 123
    :goto_2
    return-void

    .line 110
    .end local v0    # "bodyFillPaint":Landroid/graphics/Paint;
    .end local v1    # "bodyStrokePaint":Landroid/graphics/Paint;
    :cond_0
    invoke-virtual {p4}, Lcom/androidplot/xy/CandlestickFormatter;->getFallingBodyFillPaint()Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    .line 113
    .restart local v0    # "bodyFillPaint":Landroid/graphics/Paint;
    :cond_1
    invoke-virtual {p4}, Lcom/androidplot/xy/CandlestickFormatter;->getFallingBodyStrokePaint()Landroid/graphics/Paint;

    move-result-object v1

    goto :goto_1

    .line 117
    .restart local v1    # "bodyStrokePaint":Landroid/graphics/Paint;
    :pswitch_0
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 118
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 121
    :pswitch_1
    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/androidplot/xy/CandlestickRenderer;->drawTriangle(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected drawLowerCap(Landroid/graphics/Canvas;Landroid/graphics/PointF;Lcom/androidplot/xy/CandlestickFormatter;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "val"    # Landroid/graphics/PointF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/PointF;",
            "TFormatterType;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/androidplot/xy/CandlestickRenderer;, "Lcom/androidplot/xy/CandlestickRenderer<TFormatterType;>;"
    .local p3, "formatter":Lcom/androidplot/xy/CandlestickFormatter;, "TFormatterType;"
    invoke-virtual {p3}, Lcom/androidplot/xy/CandlestickFormatter;->getLowerCapWidth()F

    move-result v6

    .line 132
    .local v6, "halfWidth":F
    iget v0, p2, Landroid/graphics/PointF;->x:F

    sub-float v1, v0, v6

    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v0, p2, Landroid/graphics/PointF;->x:F

    add-float v3, v0, v6

    iget v4, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3}, Lcom/androidplot/xy/CandlestickFormatter;->getLowerCapPaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 133
    return-void
.end method

.method protected drawTextLabel(Landroid/graphics/Canvas;Landroid/graphics/PointF;Ljava/lang/String;Lcom/androidplot/xy/PointLabelFormatter;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "coords"    # Landroid/graphics/PointF;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "plf"    # Lcom/androidplot/xy/PointLabelFormatter;

    .prologue
    .line 96
    .local p0, "this":Lcom/androidplot/xy/CandlestickRenderer;, "Lcom/androidplot/xy/CandlestickRenderer<TFormatterType;>;"
    if-eqz p3, :cond_0

    .line 97
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p4, Lcom/androidplot/xy/PointLabelFormatter;->hOffset:F

    add-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v2, p4, Lcom/androidplot/xy/PointLabelFormatter;->vOffset:F

    add-float/2addr v1, v2

    invoke-virtual {p4}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 99
    :cond_0
    return-void
.end method

.method protected drawTriangle(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "fillPaint"    # Landroid/graphics/Paint;
    .param p4, "strokePaint"    # Landroid/graphics/Paint;

    .prologue
    .line 142
    .local p0, "this":Lcom/androidplot/xy/CandlestickRenderer;, "Lcom/androidplot/xy/CandlestickRenderer<TFormatterType;>;"
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 143
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 144
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 145
    iget v1, p2, Landroid/graphics/RectF;->right:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 146
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 147
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 148
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 149
    return-void
.end method

.method protected drawUpperCap(Landroid/graphics/Canvas;Landroid/graphics/PointF;Lcom/androidplot/xy/CandlestickFormatter;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "val"    # Landroid/graphics/PointF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/PointF;",
            "TFormatterType;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lcom/androidplot/xy/CandlestickRenderer;, "Lcom/androidplot/xy/CandlestickRenderer<TFormatterType;>;"
    .local p3, "formatter":Lcom/androidplot/xy/CandlestickFormatter;, "TFormatterType;"
    invoke-virtual {p3}, Lcom/androidplot/xy/CandlestickFormatter;->getUpperCapWidth()F

    move-result v6

    .line 127
    .local v6, "halfWidth":F
    iget v0, p2, Landroid/graphics/PointF;->x:F

    sub-float v1, v0, v6

    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v0, p2, Landroid/graphics/PointF;->x:F

    add-float v3, v0, v6

    iget v4, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3}, Lcom/androidplot/xy/CandlestickFormatter;->getUpperCapPaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 128
    return-void
.end method

.method protected drawWick(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/androidplot/xy/CandlestickFormatter;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "min"    # Landroid/graphics/PointF;
    .param p3, "max"    # Landroid/graphics/PointF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            "TFormatterType;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/androidplot/xy/CandlestickRenderer;, "Lcom/androidplot/xy/CandlestickRenderer<TFormatterType;>;"
    .local p4, "formatter":Lcom/androidplot/xy/CandlestickFormatter;, "TFormatterType;"
    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p3, Landroid/graphics/PointF;->x:F

    iget v4, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p4}, Lcom/androidplot/xy/CandlestickFormatter;->getWickPaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 103
    return-void
.end method

.method public onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/util/List;ILcom/androidplot/ui/RenderStack;)V
    .locals 23
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
    .line 55
    .local p0, "this":Lcom/androidplot/xy/CandlestickRenderer;, "Lcom/androidplot/xy/CandlestickRenderer<TFormatterType;>;"
    .local p3, "sfList":Ljava/util/List;, "Ljava/util/List<Lcom/androidplot/ui/SeriesBundle<Lcom/androidplot/xy/XYSeries;+TFormatterType;>;>;"
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/androidplot/ui/SeriesBundle;

    invoke-virtual/range {v22 .. v22}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v8

    check-cast v8, Lcom/androidplot/xy/CandlestickFormatter;

    .line 56
    .local v8, "formatter":Lcom/androidplot/xy/CandlestickFormatter;, "TFormatterType;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, p4

    if-ge v12, v0, :cond_2

    .line 58
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/androidplot/ui/SeriesBundle;

    invoke-virtual/range {v22 .. v22}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v11

    check-cast v11, Lcom/androidplot/xy/XYSeries;

    .line 59
    .local v11, "highSeries":Lcom/androidplot/xy/XYSeries;
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/androidplot/ui/SeriesBundle;

    invoke-virtual/range {v22 .. v22}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v15

    check-cast v15, Lcom/androidplot/xy/XYSeries;

    .line 60
    .local v15, "lowSeries":Lcom/androidplot/xy/XYSeries;
    const/16 v22, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/androidplot/ui/SeriesBundle;

    invoke-virtual/range {v22 .. v22}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v18

    check-cast v18, Lcom/androidplot/xy/XYSeries;

    .line 61
    .local v18, "openSeries":Lcom/androidplot/xy/XYSeries;
    const/16 v22, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/androidplot/ui/SeriesBundle;

    invoke-virtual/range {v22 .. v22}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v7

    check-cast v7, Lcom/androidplot/xy/XYSeries;

    .line 64
    .local v7, "closeSeries":Lcom/androidplot/xy/XYSeries;
    invoke-interface {v11, v12}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v21

    .line 66
    .local v21, "x":Ljava/lang/Number;
    invoke-interface {v11, v12}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v9

    .line 67
    .local v9, "high":Ljava/lang/Number;
    invoke-interface {v15, v12}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v13

    .line 68
    .local v13, "low":Ljava/lang/Number;
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v16

    .line 69
    .local v16, "open":Ljava/lang/Number;
    invoke-interface {v7, v12}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v5

    .line 72
    .local v5, "close":Ljava/lang/Number;
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/CandlestickRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v22

    check-cast v22, Lcom/androidplot/xy/XYPlot;

    invoke-virtual/range {v22 .. v22}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v9, v2}, Lcom/androidplot/xy/RectRegion;->transformScreen(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v10

    .line 73
    .local v10, "highPix":Landroid/graphics/PointF;
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/CandlestickRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v22

    check-cast v22, Lcom/androidplot/xy/XYPlot;

    invoke-virtual/range {v22 .. v22}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v13, v2}, Lcom/androidplot/xy/RectRegion;->transformScreen(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v14

    .line 74
    .local v14, "lowPix":Landroid/graphics/PointF;
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/CandlestickRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v22

    check-cast v22, Lcom/androidplot/xy/XYPlot;

    invoke-virtual/range {v22 .. v22}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/androidplot/xy/RectRegion;->transformScreen(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v17

    .line 75
    .local v17, "openPix":Landroid/graphics/PointF;
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/CandlestickRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v22

    check-cast v22, Lcom/androidplot/xy/XYPlot;

    invoke-virtual/range {v22 .. v22}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v5, v2}, Lcom/androidplot/xy/RectRegion;->transformScreen(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v6

    .line 77
    .local v6, "closePix":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v14, v8}, Lcom/androidplot/xy/CandlestickRenderer;->drawWick(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/androidplot/xy/CandlestickFormatter;)V

    .line 78
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v6, v8}, Lcom/androidplot/xy/CandlestickRenderer;->drawBody(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/androidplot/xy/CandlestickFormatter;)V

    .line 79
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v8}, Lcom/androidplot/xy/CandlestickRenderer;->drawUpperCap(Landroid/graphics/Canvas;Landroid/graphics/PointF;Lcom/androidplot/xy/CandlestickFormatter;)V

    .line 80
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v8}, Lcom/androidplot/xy/CandlestickRenderer;->drawLowerCap(Landroid/graphics/Canvas;Landroid/graphics/PointF;Lcom/androidplot/xy/CandlestickFormatter;)V

    .line 83
    invoke-virtual {v8}, Lcom/androidplot/xy/CandlestickFormatter;->hasPointLabelFormatter()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 84
    invoke-virtual {v8}, Lcom/androidplot/xy/CandlestickFormatter;->getPointLabelFormatter()Lcom/androidplot/xy/PointLabelFormatter;

    move-result-object v19

    .line 85
    .local v19, "plf":Lcom/androidplot/xy/PointLabelFormatter;
    :goto_1
    invoke-virtual {v8}, Lcom/androidplot/xy/CandlestickFormatter;->getPointLabeler()Lcom/androidplot/xy/PointLabeler;

    move-result-object v20

    .line 86
    .local v20, "pointLabeler":Lcom/androidplot/xy/PointLabeler;
    if-eqz v19, :cond_0

    if-eqz v20, :cond_0

    .line 87
    move-object/from16 v0, v20

    invoke-interface {v0, v11, v12}, Lcom/androidplot/xy/PointLabeler;->getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/androidplot/xy/CandlestickRenderer;->drawTextLabel(Landroid/graphics/Canvas;Landroid/graphics/PointF;Ljava/lang/String;Lcom/androidplot/xy/PointLabelFormatter;)V

    .line 88
    move-object/from16 v0, v20

    invoke-interface {v0, v15, v12}, Lcom/androidplot/xy/PointLabeler;->getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v14, v2, v3}, Lcom/androidplot/xy/CandlestickRenderer;->drawTextLabel(Landroid/graphics/Canvas;Landroid/graphics/PointF;Ljava/lang/String;Lcom/androidplot/xy/PointLabelFormatter;)V

    .line 89
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v12}, Lcom/androidplot/xy/PointLabeler;->getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v22

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/androidplot/xy/CandlestickRenderer;->drawTextLabel(Landroid/graphics/Canvas;Landroid/graphics/PointF;Ljava/lang/String;Lcom/androidplot/xy/PointLabelFormatter;)V

    .line 90
    move-object/from16 v0, v20

    invoke-interface {v0, v7, v12}, Lcom/androidplot/xy/PointLabeler;->getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/androidplot/xy/CandlestickRenderer;->drawTextLabel(Landroid/graphics/Canvas;Landroid/graphics/PointF;Ljava/lang/String;Lcom/androidplot/xy/PointLabelFormatter;)V

    .line 56
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 84
    .end local v19    # "plf":Lcom/androidplot/xy/PointLabelFormatter;
    .end local v20    # "pointLabeler":Lcom/androidplot/xy/PointLabeler;
    :cond_1
    const/16 v19, 0x0

    goto :goto_1

    .line 93
    .end local v5    # "close":Ljava/lang/Number;
    .end local v6    # "closePix":Landroid/graphics/PointF;
    .end local v7    # "closeSeries":Lcom/androidplot/xy/XYSeries;
    .end local v9    # "high":Ljava/lang/Number;
    .end local v10    # "highPix":Landroid/graphics/PointF;
    .end local v11    # "highSeries":Lcom/androidplot/xy/XYSeries;
    .end local v13    # "low":Ljava/lang/Number;
    .end local v14    # "lowPix":Landroid/graphics/PointF;
    .end local v15    # "lowSeries":Lcom/androidplot/xy/XYSeries;
    .end local v16    # "open":Ljava/lang/Number;
    .end local v17    # "openPix":Landroid/graphics/PointF;
    .end local v18    # "openSeries":Lcom/androidplot/xy/XYSeries;
    .end local v21    # "x":Ljava/lang/Number;
    :cond_2
    return-void
.end method
