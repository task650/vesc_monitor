.class public Lcom/androidplot/xy/ZoomEstimator;
.super Lcom/androidplot/xy/Estimator;
.source "ZoomEstimator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/androidplot/xy/Estimator;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateZoom(Lcom/androidplot/xy/SampledXYSeries;Lcom/androidplot/xy/RectRegion;)D
    .locals 10
    .param p1, "series"    # Lcom/androidplot/xy/SampledXYSeries;
    .param p2, "visibleBounds"    # Lcom/androidplot/xy/RectRegion;

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/androidplot/xy/SampledXYSeries;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v6

    .line 20
    .local v6, "seriesBounds":Lcom/androidplot/xy/RectRegion;
    invoke-virtual {v6}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object v7

    invoke-virtual {p2}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/androidplot/Region;->ratio(Lcom/androidplot/Region;)Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 21
    .local v4, "ratio":D
    invoke-virtual {p1}, Lcom/androidplot/xy/SampledXYSeries;->getMaxZoomFactor()D

    move-result-wide v2

    .line 22
    .local v2, "maxFactor":D
    div-double v8, v2, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    long-to-double v0, v8

    .line 23
    .local v0, "factor":D
    const-wide/16 v8, 0x0

    cmpl-double v7, v0, v8

    if-lez v7, :cond_0

    .end local v0    # "factor":D
    :goto_0
    return-wide v0

    .restart local v0    # "factor":D
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0
.end method

.method public run(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/XYSeriesBundle;)V
    .locals 4
    .param p1, "plot"    # Lcom/androidplot/xy/XYPlot;
    .param p2, "sf"    # Lcom/androidplot/xy/XYSeriesBundle;

    .prologue
    .line 11
    invoke-virtual {p2}, Lcom/androidplot/xy/XYSeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v3

    instance-of v3, v3, Lcom/androidplot/xy/SampledXYSeries;

    if-eqz v3, :cond_0

    .line 12
    invoke-virtual {p2}, Lcom/androidplot/xy/XYSeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/SampledXYSeries;

    .line 13
    .local v2, "oxy":Lcom/androidplot/xy/SampledXYSeries;
    invoke-virtual {p1}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/androidplot/xy/ZoomEstimator;->calculateZoom(Lcom/androidplot/xy/SampledXYSeries;Lcom/androidplot/xy/RectRegion;)D

    move-result-wide v0

    .line 14
    .local v0, "factor":D
    invoke-virtual {v2, v0, v1}, Lcom/androidplot/xy/SampledXYSeries;->setZoomFactor(D)V

    .line 16
    .end local v0    # "factor":D
    .end local v2    # "oxy":Lcom/androidplot/xy/SampledXYSeries;
    :cond_0
    return-void
.end method
