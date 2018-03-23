.class public Lcom/androidplot/xy/AdvancedLineAndPointRenderer;
.super Lcom/androidplot/xy/XYSeriesRenderer;
.source "AdvancedLineAndPointRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/xy/XYSeriesRenderer",
        "<",
        "Lcom/androidplot/xy/XYSeries;",
        "Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;",
        ">;"
    }
.end annotation


# instance fields
.field private latestIndex:I


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYPlot;)V
    .locals 0
    .param p1, "plot"    # Lcom/androidplot/xy/XYPlot;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/androidplot/xy/XYSeriesRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected bridge synthetic doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .locals 0

    .prologue
    .line 35
    check-cast p3, Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/xy/AdvancedLineAndPointRenderer;->doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;)V

    return-void
.end method

.method protected doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "formatter"    # Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;

    .prologue
    .line 70
    invoke-virtual {p3}, Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 73
    :cond_0
    return-void
.end method

.method protected bridge synthetic onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 35
    move-object v3, p3

    check-cast v3, Lcom/androidplot/xy/XYSeries;

    move-object v4, p4

    check-cast v4, Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/AdvancedLineAndPointRenderer;->onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;Lcom/androidplot/ui/RenderStack;)V

    return-void
.end method

.method protected onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "plotArea"    # Landroid/graphics/RectF;
    .param p3, "series"    # Lcom/androidplot/xy/XYSeries;
    .param p4, "formatter"    # Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;
    .param p5, "stack"    # Lcom/androidplot/ui/RenderStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v7, 0x0

    .line 47
    .local v7, "lastPoint":Landroid/graphics/PointF;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {p3}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 48
    invoke-interface {p3, v6}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v10

    .line 49
    .local v10, "y":Ljava/lang/Number;
    invoke-interface {p3, v6}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v9

    .line 51
    .local v9, "x":Ljava/lang/Number;
    if-eqz v10, :cond_1

    if-eqz v9, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/androidplot/xy/AdvancedLineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v9, v10, p2}, Lcom/androidplot/xy/RectRegion;->transformScreen(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v8

    .line 59
    .local v8, "thisPoint":Landroid/graphics/PointF;
    :goto_1
    invoke-virtual {p4}, Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 61
    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v2, v7, Landroid/graphics/PointF;->y:F

    iget v3, v8, Landroid/graphics/PointF;->x:F

    iget v4, v8, Landroid/graphics/PointF;->y:F

    iget v0, p0, Lcom/androidplot/xy/AdvancedLineAndPointRenderer;->latestIndex:I

    invoke-interface {p3}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v5

    invoke-virtual {p4, v6, v0, v5}, Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;->getLinePaint(III)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 64
    :cond_0
    move-object v7, v8

    .line 47
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 55
    .end local v8    # "thisPoint":Landroid/graphics/PointF;
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "thisPoint":Landroid/graphics/PointF;
    goto :goto_1

    .line 66
    .end local v8    # "thisPoint":Landroid/graphics/PointF;
    .end local v9    # "x":Ljava/lang/Number;
    .end local v10    # "y":Ljava/lang/Number;
    :cond_2
    return-void
.end method

.method public setLatestIndex(I)V
    .locals 0
    .param p1, "latestIndex"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/androidplot/xy/AdvancedLineAndPointRenderer;->latestIndex:I

    .line 77
    return-void
.end method
