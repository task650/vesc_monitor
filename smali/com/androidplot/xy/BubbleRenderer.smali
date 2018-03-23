.class public Lcom/androidplot/xy/BubbleRenderer;
.super Lcom/androidplot/xy/XYSeriesRenderer;
.source "BubbleRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FormatterType:",
        "Lcom/androidplot/xy/BubbleFormatter;",
        ">",
        "Lcom/androidplot/xy/XYSeriesRenderer",
        "<",
        "Lcom/androidplot/xy/BubbleSeries;",
        "TFormatterType;>;"
    }
.end annotation


# static fields
.field protected static final MAX_BUBBLE_RADIUS_DEFAULT_DP:F = 25.0f

.field protected static final MIN_BUBBLE_RADIUS_DEFAULT_DP:F = 9.0f


# instance fields
.field private bubbleBounds:Lcom/androidplot/Region;

.field private bubbleScaleMode:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYPlot;)V
    .locals 3
    .param p1, "plot"    # Lcom/androidplot/xy/XYPlot;

    .prologue
    .line 39
    .local p0, "this":Lcom/androidplot/xy/BubbleRenderer;, "Lcom/androidplot/xy/BubbleRenderer<TFormatterType;>;"
    invoke-direct {p0, p1}, Lcom/androidplot/xy/XYSeriesRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    .line 22
    sget-object v0, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;->SQUARE_ROOT:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    iput-object v0, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleScaleMode:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    .line 41
    new-instance v0, Lcom/androidplot/Region;

    const/high16 v1, 0x41100000    # 9.0f

    .line 42
    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x41c80000    # 25.0f

    .line 43
    invoke-static {v2}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/androidplot/Region;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    iput-object v0, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleBounds:Lcom/androidplot/Region;

    .line 44
    return-void
.end method


# virtual methods
.method protected calculateBounds()Lcom/androidplot/Region;
    .locals 8

    .prologue
    .local p0, "this":Lcom/androidplot/xy/BubbleRenderer;, "Lcom/androidplot/xy/BubbleRenderer<TFormatterType;>;"
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 123
    new-instance v0, Lcom/androidplot/Region;

    invoke-direct {v0}, Lcom/androidplot/Region;-><init>()V

    .line 124
    .local v0, "bounds":Lcom/androidplot/Region;
    invoke-virtual {p0}, Lcom/androidplot/xy/BubbleRenderer;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/ui/SeriesBundle;

    .line 125
    .local v1, "f":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<Lcom/androidplot/xy/BubbleSeries;+TFormatterType;>;"
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/util/List;

    invoke-virtual {v1}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/BubbleSeries;

    invoke-virtual {v2}, Lcom/androidplot/xy/BubbleSeries;->getZVals()Ljava/util/List;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0, v4}, Lcom/androidplot/util/SeriesUtils;->minMax(Lcom/androidplot/Region;[Ljava/util/List;)Lcom/androidplot/Region;

    goto :goto_0

    .line 128
    .end local v1    # "f":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<Lcom/androidplot/xy/BubbleSeries;+TFormatterType;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_3

    .line 129
    iget-object v2, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleScaleMode:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    sget-object v3, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;->SQUARE_ROOT:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    if-ne v2, v3, :cond_1

    .line 132
    invoke-virtual {v0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    .line 139
    :cond_1
    invoke-virtual {v0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_4

    .line 141
    iget-object v2, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleScaleMode:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    sget-object v3, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;->SQUARE_ROOT:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    if-ne v2, v3, :cond_2

    .line 144
    invoke-virtual {v0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    .line 150
    .end local v0    # "bounds":Lcom/androidplot/Region;
    :cond_2
    :goto_1
    return-object v0

    .line 136
    .restart local v0    # "bounds":Lcom/androidplot/Region;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 148
    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    goto :goto_1
.end method

.method protected bridge synthetic doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .locals 0

    .prologue
    .line 15
    .local p0, "this":Lcom/androidplot/xy/BubbleRenderer;, "Lcom/androidplot/xy/BubbleRenderer<TFormatterType;>;"
    check-cast p3, Lcom/androidplot/xy/BubbleFormatter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/xy/BubbleRenderer;->doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/BubbleFormatter;)V

    return-void
.end method

.method protected doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/BubbleFormatter;)V
    .locals 7
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
    .line 94
    .local p0, "this":Lcom/androidplot/xy/BubbleRenderer;, "Lcom/androidplot/xy/BubbleRenderer<TFormatterType;>;"
    .local p3, "formatter":Lcom/androidplot/xy/BubbleFormatter;, "TFormatterType;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/PointF;

    .line 95
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-direct {v5, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40200000    # 2.5f

    div-float v6, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .line 94
    invoke-virtual/range {v0 .. v6}, Lcom/androidplot/xy/BubbleRenderer;->drawBubble(Landroid/graphics/Canvas;Lcom/androidplot/xy/BubbleFormatter;Lcom/androidplot/xy/BubbleSeries;ILandroid/graphics/PointF;F)V

    .line 96
    return-void
.end method

.method protected drawBubble(Landroid/graphics/Canvas;Lcom/androidplot/xy/BubbleFormatter;Lcom/androidplot/xy/BubbleSeries;ILandroid/graphics/PointF;F)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "series"    # Lcom/androidplot/xy/BubbleSeries;
    .param p4, "index"    # I
    .param p5, "centerPoint"    # Landroid/graphics/PointF;
    .param p6, "radius"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "TFormatterType;",
            "Lcom/androidplot/xy/BubbleSeries;",
            "I",
            "Landroid/graphics/PointF;",
            "F)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/androidplot/xy/BubbleRenderer;, "Lcom/androidplot/xy/BubbleRenderer<TFormatterType;>;"
    .local p2, "formatter":Lcom/androidplot/xy/BubbleFormatter;, "TFormatterType;"
    iget v0, p5, Landroid/graphics/PointF;->x:F

    iget v1, p5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Lcom/androidplot/xy/BubbleFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, p6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 81
    iget v0, p5, Landroid/graphics/PointF;->x:F

    iget v1, p5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Lcom/androidplot/xy/BubbleFormatter;->getStrokePaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, p6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 82
    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/androidplot/xy/BubbleFormatter;->hasPointLabelFormatter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/androidplot/xy/BubbleFormatter;->getPointLabeler()Lcom/androidplot/xy/PointLabeler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p2}, Lcom/androidplot/xy/BubbleFormatter;->getPointLabeler()Lcom/androidplot/xy/PointLabeler;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/androidplot/xy/PointLabeler;->getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;

    move-result-object v0

    iget v1, p5, Landroid/graphics/PointF;->x:F

    iget v2, p5, Landroid/graphics/PointF;->y:F

    .line 88
    invoke-virtual {p2}, Lcom/androidplot/xy/BubbleFormatter;->getPointLabelFormatter()Lcom/androidplot/xy/PointLabelFormatter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 83
    invoke-static {p1, v0, v1, v2, v3}, Lcom/androidplot/util/FontUtils;->drawTextVerticallyCentered(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 90
    :cond_0
    return-void
.end method

.method public getBubbleScaleMode()Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;
    .locals 1

    .prologue
    .line 115
    .local p0, "this":Lcom/androidplot/xy/BubbleRenderer;, "Lcom/androidplot/xy/BubbleRenderer<TFormatterType;>;"
    iget-object v0, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleScaleMode:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    return-object v0
.end method

.method public getMaxBubbleRadius()F
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lcom/androidplot/xy/BubbleRenderer;, "Lcom/androidplot/xy/BubbleRenderer<TFormatterType;>;"
    iget-object v0, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleBounds:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMinBubbleRadius()F
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lcom/androidplot/xy/BubbleRenderer;, "Lcom/androidplot/xy/BubbleRenderer<TFormatterType;>;"
    iget-object v0, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleBounds:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method protected bridge synthetic onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Lcom/androidplot/xy/BubbleRenderer;, "Lcom/androidplot/xy/BubbleRenderer<TFormatterType;>;"
    move-object v3, p3

    check-cast v3, Lcom/androidplot/xy/BubbleSeries;

    move-object v4, p4

    check-cast v4, Lcom/androidplot/xy/BubbleFormatter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/BubbleRenderer;->onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/BubbleSeries;Lcom/androidplot/xy/BubbleFormatter;Lcom/androidplot/ui/RenderStack;)V

    return-void
.end method

.method protected onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/BubbleSeries;Lcom/androidplot/xy/BubbleFormatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "plotArea"    # Landroid/graphics/RectF;
    .param p3, "series"    # Lcom/androidplot/xy/BubbleSeries;
    .param p5, "stack"    # Lcom/androidplot/ui/RenderStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "Lcom/androidplot/xy/BubbleSeries;",
            "TFormatterType;",
            "Lcom/androidplot/ui/RenderStack;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/androidplot/xy/BubbleRenderer;, "Lcom/androidplot/xy/BubbleRenderer<TFormatterType;>;"
    .local p4, "formatter":Lcom/androidplot/xy/BubbleFormatter;, "TFormatterType;"
    invoke-virtual {p0}, Lcom/androidplot/xy/BubbleRenderer;->calculateBounds()Lcom/androidplot/Region;

    move-result-object v8

    .line 51
    .local v8, "magnitudeBounds":Lcom/androidplot/Region;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p3}, Lcom/androidplot/xy/BubbleSeries;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 54
    invoke-virtual {p3, v7}, Lcom/androidplot/xy/BubbleSeries;->getY(I)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, v7}, Lcom/androidplot/xy/BubbleSeries;->getZ(I)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/androidplot/xy/BubbleRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    .line 57
    invoke-virtual {p3, v7}, Lcom/androidplot/xy/BubbleSeries;->getX(I)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p3, v7}, Lcom/androidplot/xy/BubbleSeries;->getY(I)Ljava/lang/Number;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/RectRegion;->transform(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;ZZ)Landroid/graphics/PointF;

    move-result-object v5

    .line 60
    .local v5, "centerPoint":Landroid/graphics/PointF;
    iget-object v0, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleScaleMode:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    sget-object v1, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;->SQUARE_ROOT:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    if-ne v0, v1, :cond_1

    .line 62
    invoke-virtual {p3, v7}, Lcom/androidplot/xy/BubbleSeries;->getZ(I)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 63
    :goto_1
    iget-object v2, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleBounds:Lcom/androidplot/Region;

    .line 61
    invoke-virtual {v8, v0, v1, v2}, Lcom/androidplot/Region;->transform(DLcom/androidplot/Region;)Ljava/lang/Number;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v6

    .local v6, "bubbleRadius":F
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p3

    move v4, v7

    .line 64
    invoke-virtual/range {v0 .. v6}, Lcom/androidplot/xy/BubbleRenderer;->drawBubble(Landroid/graphics/Canvas;Lcom/androidplot/xy/BubbleFormatter;Lcom/androidplot/xy/BubbleSeries;ILandroid/graphics/PointF;F)V

    .line 51
    .end local v5    # "centerPoint":Landroid/graphics/PointF;
    .end local v6    # "bubbleRadius":F
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 63
    .restart local v5    # "centerPoint":Landroid/graphics/PointF;
    :cond_1
    invoke-virtual {p3, v7}, Lcom/androidplot/xy/BubbleSeries;->getZ(I)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_1

    .line 67
    .end local v5    # "centerPoint":Landroid/graphics/PointF;
    :cond_2
    return-void
.end method

.method public setBubbleScaleMode(Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;)V
    .locals 0
    .param p1, "bubbleScaleMode"    # Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    .prologue
    .line 119
    .local p0, "this":Lcom/androidplot/xy/BubbleRenderer;, "Lcom/androidplot/xy/BubbleRenderer<TFormatterType;>;"
    iput-object p1, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleScaleMode:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    .line 120
    return-void
.end method

.method public setMaxBubbleRadius(F)V
    .locals 2
    .param p1, "maxBubbleRadius"    # F

    .prologue
    .line 111
    .local p0, "this":Lcom/androidplot/xy/BubbleRenderer;, "Lcom/androidplot/xy/BubbleRenderer<TFormatterType;>;"
    iget-object v0, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleBounds:Lcom/androidplot/Region;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    .line 112
    return-void
.end method

.method public setMinBubbleRadius(F)V
    .locals 2
    .param p1, "minBubbleRadius"    # F

    .prologue
    .line 103
    .local p0, "this":Lcom/androidplot/xy/BubbleRenderer;, "Lcom/androidplot/xy/BubbleRenderer<TFormatterType;>;"
    iget-object v0, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleBounds:Lcom/androidplot/Region;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    .line 104
    return-void
.end method
