.class public abstract Lcom/androidplot/ui/SeriesRenderer;
.super Ljava/lang/Object;
.source "SeriesRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PlotType:",
        "Lcom/androidplot/Plot;",
        "SeriesType::",
        "Lcom/androidplot/Series;",
        "SeriesFormatterType:",
        "Lcom/androidplot/ui/Formatter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private plot:Lcom/androidplot/Plot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPlotType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/androidplot/Plot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPlotType;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/androidplot/ui/SeriesRenderer;, "Lcom/androidplot/ui/SeriesRenderer<TPlotType;TSeriesType;TSeriesFormatterType;>;"
    .local p1, "plot":Lcom/androidplot/Plot;, "TPlotType;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/androidplot/ui/SeriesRenderer;->plot:Lcom/androidplot/Plot;

    .line 36
    return-void
.end method


# virtual methods
.method protected abstract doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "TSeriesFormatterType;)V"
        }
    .end annotation
.end method

.method public drawSeriesLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "TSeriesFormatterType;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/androidplot/ui/SeriesRenderer;, "Lcom/androidplot/ui/SeriesRenderer<TPlotType;TSeriesType;TSeriesFormatterType;>;"
    .local p3, "formatter":Lcom/androidplot/ui/Formatter;, "TSeriesFormatterType;"
    const/16 v0, 0x1f

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 85
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 86
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/ui/SeriesRenderer;->doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v0
.end method

.method public getFormatter(Lcom/androidplot/Series;)Lcom/androidplot/ui/Formatter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;)TSeriesFormatterType;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/androidplot/ui/SeriesRenderer;, "Lcom/androidplot/ui/SeriesRenderer<TPlotType;TSeriesType;TSeriesFormatterType;>;"
    .local p1, "series":Lcom/androidplot/Series;, "TSeriesType;"
    iget-object v0, p0, Lcom/androidplot/ui/SeriesRenderer;->plot:Lcom/androidplot/Plot;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/androidplot/Plot;->getFormatter(Lcom/androidplot/Series;Ljava/lang/Class;)Lcom/androidplot/ui/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public getPlot()Lcom/androidplot/Plot;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPlotType;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/androidplot/ui/SeriesRenderer;, "Lcom/androidplot/ui/SeriesRenderer<TPlotType;TSeriesType;TSeriesFormatterType;>;"
    iget-object v0, p0, Lcom/androidplot/ui/SeriesRenderer;->plot:Lcom/androidplot/Plot;

    return-object v0
.end method

.method public getSeriesAndFormatterList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/ui/SeriesBundle",
            "<TSeriesType;+TSeriesFormatterType;>;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/androidplot/ui/SeriesRenderer;, "Lcom/androidplot/ui/SeriesRenderer<TPlotType;TSeriesType;TSeriesFormatterType;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/androidplot/ui/SeriesBundle<TSeriesType;+TSeriesFormatterType;>;>;"
    invoke-virtual {p0}, Lcom/androidplot/ui/SeriesRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidplot/Plot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidplot/SeriesRegistry;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object v1

    .line 100
    .local v1, "sfList":Ljava/util/List;, "Ljava/util/List<Lcom/androidplot/ui/SeriesBundle;>;"
    invoke-virtual {p0}, Lcom/androidplot/ui/SeriesRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidplot/Plot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidplot/SeriesRegistry;->getSeriesAndFormatterList()Ljava/util/List;

    .line 101
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidplot/ui/SeriesBundle;

    .line 102
    .local v2, "thisPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<TSeriesType;+TSeriesFormatterType;>;"
    invoke-virtual {v2, p0}, Lcom/androidplot/ui/SeriesBundle;->rendersWith(Lcom/androidplot/ui/SeriesRenderer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    .end local v2    # "thisPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<TSeriesType;+TSeriesFormatterType;>;"
    :cond_1
    return-object v0
.end method

.method public getSeriesList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TSeriesType;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/androidplot/ui/SeriesRenderer;, "Lcom/androidplot/ui/SeriesRenderer<TPlotType;TSeriesType;TSeriesFormatterType;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<TSeriesType;>;"
    invoke-virtual {p0}, Lcom/androidplot/ui/SeriesRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidplot/Plot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidplot/SeriesRegistry;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object v1

    .line 118
    .local v1, "sfList":Ljava/util/List;, "Ljava/util/List<Lcom/androidplot/ui/SeriesBundle;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidplot/ui/SeriesBundle;

    .line 119
    .local v2, "thisPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<TSeriesType;+TSeriesFormatterType;>;"
    invoke-virtual {v2, p0}, Lcom/androidplot/ui/SeriesBundle;->rendersWith(Lcom/androidplot/ui/SeriesRenderer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    invoke-virtual {v2}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    .end local v2    # "thisPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<TSeriesType;+TSeriesFormatterType;>;"
    :cond_1
    return-object v0
.end method

.method protected abstract onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;Lcom/androidplot/ui/RenderStack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "TSeriesType;TSeriesFormatterType;",
            "Lcom/androidplot/ui/RenderStack;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation
.end method

.method public render(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/SeriesBundle;Lcom/androidplot/ui/RenderStack;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "plotArea"    # Landroid/graphics/RectF;
    .param p4, "stack"    # Lcom/androidplot/ui/RenderStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "Lcom/androidplot/ui/SeriesBundle",
            "<TSeriesType;TSeriesFormatterType;>;",
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
    .line 59
    .local p0, "this":Lcom/androidplot/ui/SeriesRenderer;, "Lcom/androidplot/ui/SeriesRenderer<TPlotType;TSeriesType;TSeriesFormatterType;>;"
    .local p3, "sfPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<TSeriesType;TSeriesFormatterType;>;"
    invoke-virtual {p3}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v3

    invoke-virtual {p3}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/ui/SeriesRenderer;->onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;Lcom/androidplot/ui/RenderStack;)V

    .line 60
    return-void
.end method

.method public setPlot(Lcom/androidplot/Plot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPlotType;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/androidplot/ui/SeriesRenderer;, "Lcom/androidplot/ui/SeriesRenderer<TPlotType;TSeriesType;TSeriesFormatterType;>;"
    .local p1, "plot":Lcom/androidplot/Plot;, "TPlotType;"
    iput-object p1, p0, Lcom/androidplot/ui/SeriesRenderer;->plot:Lcom/androidplot/Plot;

    .line 44
    return-void
.end method
