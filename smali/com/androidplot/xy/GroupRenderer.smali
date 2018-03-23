.class public abstract Lcom/androidplot/xy/GroupRenderer;
.super Lcom/androidplot/xy/XYSeriesRenderer;
.source "GroupRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FormatterType:",
        "Lcom/androidplot/xy/XYSeriesFormatter",
        "<",
        "Lcom/androidplot/xy/XYRegionFormatter;",
        ">;>",
        "Lcom/androidplot/xy/XYSeriesRenderer",
        "<",
        "Lcom/androidplot/xy/XYSeries;",
        "TFormatterType;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/androidplot/xy/GroupRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/androidplot/xy/GroupRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/androidplot/xy/XYPlot;)V
    .locals 0
    .param p1, "plot"    # Lcom/androidplot/xy/XYPlot;

    .prologue
    .line 40
    .local p0, "this":Lcom/androidplot/xy/GroupRenderer;, "Lcom/androidplot/xy/GroupRenderer<TFormatterType;>;"
    invoke-direct {p0, p1}, Lcom/androidplot/xy/XYSeriesRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected bridge synthetic onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/androidplot/xy/GroupRenderer;, "Lcom/androidplot/xy/GroupRenderer<TFormatterType;>;"
    move-object v3, p3

    check-cast v3, Lcom/androidplot/xy/XYSeries;

    move-object v4, p4

    check-cast v4, Lcom/androidplot/xy/XYSeriesFormatter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/GroupRenderer;->onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeriesFormatter;Lcom/androidplot/ui/RenderStack;)V

    return-void
.end method

.method protected onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeriesFormatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "plotArea"    # Landroid/graphics/RectF;
    .param p3, "series"    # Lcom/androidplot/xy/XYSeries;
    .param p5, "stack"    # Lcom/androidplot/ui/RenderStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "Lcom/androidplot/xy/XYSeries;",
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
    .line 49
    .local p0, "this":Lcom/androidplot/xy/GroupRenderer;, "Lcom/androidplot/xy/GroupRenderer<TFormatterType;>;"
    .local p4, "formatter":Lcom/androidplot/xy/XYSeriesFormatter;, "TFormatterType;"
    invoke-virtual {p0}, Lcom/androidplot/xy/GroupRenderer;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object v3

    .line 52
    .local v3, "sfList":Ljava/util/List;, "Ljava/util/List<Lcom/androidplot/ui/SeriesBundle<Lcom/androidplot/xy/XYSeries;+TFormatterType;>;>;"
    if-nez v3, :cond_0

    .line 74
    :goto_0
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/SeriesBundle;

    invoke-virtual {v0}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v4

    .line 59
    .local v4, "seriesLength":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 60
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/SeriesBundle;

    invoke-virtual {v0}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 62
    sget-object v0, Lcom/androidplot/xy/GroupRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": not all associated series are of same size."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/androidplot/ui/RenderStack;->disable(Ljava/lang/Class;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/GroupRenderer;->onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/util/List;ILcom/androidplot/ui/RenderStack;)V

    goto :goto_0
.end method

.method public abstract onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/util/List;ILcom/androidplot/ui/RenderStack;)V
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
.end method
