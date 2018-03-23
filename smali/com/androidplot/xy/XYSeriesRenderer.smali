.class public abstract Lcom/androidplot/xy/XYSeriesRenderer;
.super Lcom/androidplot/ui/SeriesRenderer;
.source "XYSeriesRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SeriesType::",
        "Lcom/androidplot/xy/XYSeries;",
        "XYFormatterType:",
        "Lcom/androidplot/xy/XYSeriesFormatter;",
        ">",
        "Lcom/androidplot/ui/SeriesRenderer",
        "<",
        "Lcom/androidplot/xy/XYPlot;",
        "TSeriesType;TXYFormatterType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYPlot;)V
    .locals 0
    .param p1, "plot"    # Lcom/androidplot/xy/XYPlot;

    .prologue
    .line 33
    .local p0, "this":Lcom/androidplot/xy/XYSeriesRenderer;, "Lcom/androidplot/xy/XYSeriesRenderer<TSeriesType;TXYFormatterType;>;"
    invoke-direct {p0, p1}, Lcom/androidplot/ui/SeriesRenderer;-><init>(Lcom/androidplot/Plot;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getUniqueRegionFormatters()Ljava/util/Hashtable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/androidplot/xy/XYRegionFormatter;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/androidplot/xy/XYSeriesRenderer;, "Lcom/androidplot/xy/XYSeriesRenderer<TSeriesType;TXYFormatterType;>;"
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 43
    .local v1, "found":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/androidplot/xy/XYRegionFormatter;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/androidplot/xy/XYSeriesRenderer;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/androidplot/ui/SeriesBundle;

    .line 44
    .local v4, "sfPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<TSeriesType;+TXYFormatterType;>;"
    invoke-virtual {v4}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v5

    check-cast v5, Lcom/androidplot/xy/XYSeriesFormatter;

    invoke-virtual {v5}, Lcom/androidplot/xy/XYSeriesFormatter;->getRegions()Lcom/androidplot/util/Layerable;

    move-result-object v3

    .line 45
    .local v3, "regionIndexer":Lcom/androidplot/util/Layerable;, "Lcom/androidplot/util/Layerable<Lcom/androidplot/xy/RectRegion;>;"
    invoke-interface {v3}, Lcom/androidplot/util/Layerable;->elements()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/RectRegion;

    .line 46
    .local v2, "region":Lcom/androidplot/xy/RectRegion;
    invoke-virtual {v4}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v5

    check-cast v5, Lcom/androidplot/xy/XYSeriesFormatter;

    invoke-virtual {v5, v2}, Lcom/androidplot/xy/XYSeriesFormatter;->getRegionFormatter(Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/XYRegionFormatter;

    move-result-object v0

    .line 47
    .local v0, "f":Lcom/androidplot/xy/XYRegionFormatter;
    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 50
    .end local v0    # "f":Lcom/androidplot/xy/XYRegionFormatter;
    .end local v2    # "region":Lcom/androidplot/xy/RectRegion;
    .end local v3    # "regionIndexer":Lcom/androidplot/util/Layerable;, "Lcom/androidplot/util/Layerable<Lcom/androidplot/xy/RectRegion;>;"
    .end local v4    # "sfPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<TSeriesType;+TXYFormatterType;>;"
    :cond_1
    return-object v1
.end method
