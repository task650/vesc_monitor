.class public Lcom/github/mikephil/charting/charts/CombinedChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source "CombinedChart.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/dataprovider/CombinedDataProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<",
        "Lcom/github/mikephil/charting/data/CombinedData;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/dataprovider/CombinedDataProvider;"
    }
.end annotation


# instance fields
.field private mDrawBarShadow:Z

.field protected mDrawOrder:[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

.field private mDrawValueAboveBar:Z

.field protected mHighlightFullBarEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawValueAboveBar:Z

    .line 40
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mHighlightFullBarEnabled:Z

    .line 46
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawBarShadow:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawValueAboveBar:Z

    .line 40
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mHighlightFullBarEnabled:Z

    .line 46
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawBarShadow:Z

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawValueAboveBar:Z

    .line 40
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mHighlightFullBarEnabled:Z

    .line 46
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawBarShadow:Z

    .line 68
    return-void
.end method


# virtual methods
.method protected drawMarkers(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 239
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/CombinedChart;->isDrawMarkersEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/CombinedChart;->valuesToHighlight()Z

    move-result v6

    if-nez v6, :cond_1

    .line 270
    :cond_0
    return-void

    .line 242
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 244
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    aget-object v2, v6, v3

    .line 246
    .local v2, "highlight":Lcom/github/mikephil/charting/highlight/Highlight;
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v6, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {v6, v2}, Lcom/github/mikephil/charting/data/CombinedData;->getDataSetByHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;

    move-result-object v5

    .line 248
    .local v5, "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v6, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {v6, v2}, Lcom/github/mikephil/charting/data/CombinedData;->getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 249
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    if-nez v0, :cond_3

    .line 242
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
    :cond_3
    invoke-interface {v5, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v1

    .line 255
    .local v1, "entryIndex":I
    int-to-float v6, v1

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v8

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_2

    .line 258
    invoke-virtual {p0, v2}, Lcom/github/mikephil/charting/charts/CombinedChart;->getMarkerPosition(Lcom/github/mikephil/charting/highlight/Highlight;)[F

    move-result-object v4

    .line 261
    .local v4, "pos":[F
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    aget v7, v4, v9

    aget v8, v4, v10

    invoke-virtual {v6, v7, v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBounds(FF)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 265
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    invoke-interface {v6, v0, v2}, Lcom/github/mikephil/charting/components/IMarker;->refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 268
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    aget v7, v4, v9

    aget v8, v4, v10

    invoke-interface {v6, p1, v7, v8}, Lcom/github/mikephil/charting/components/IMarker;->draw(Landroid/graphics/Canvas;FF)V

    goto :goto_1
.end method

.method public getBarData()Lcom/github/mikephil/charting/data/BarData;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CombinedData;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    goto :goto_0
.end method

.method public getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CombinedData;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v0

    goto :goto_0
.end method

.method public getCandleData()Lcom/github/mikephil/charting/data/CandleData;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CombinedData;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v0

    goto :goto_0
.end method

.method public getCombinedData()Lcom/github/mikephil/charting/data/CombinedData;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/CombinedData;

    return-object v0
.end method

.method public getDrawOrder()[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawOrder:[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    return-object v0
.end method

.method public getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 112
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    .line 113
    const-string v0, "MPAndroidChart"

    const-string v1, "Can\'t select by touch. No data set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getHighlighter()Lcom/github/mikephil/charting/highlight/IHighlighter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/github/mikephil/charting/highlight/IHighlighter;->getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v8

    .line 117
    .local v8, "h":Lcom/github/mikephil/charting/highlight/Highlight;
    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/CombinedChart;->isHighlightFullBarEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v8

    goto :goto_0

    .line 120
    :cond_2
    new-instance v0, Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v1

    invoke-virtual {v8}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    move-result v2

    .line 121
    invoke-virtual {v8}, Lcom/github/mikephil/charting/highlight/Highlight;->getXPx()F

    move-result v3

    invoke-virtual {v8}, Lcom/github/mikephil/charting/highlight/Highlight;->getYPx()F

    move-result v4

    .line 122
    invoke-virtual {v8}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v8}, Lcom/github/mikephil/charting/highlight/Highlight;->getAxis()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFFFIILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    goto :goto_0
.end method

.method public getLineData()Lcom/github/mikephil/charting/data/LineData;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CombinedData;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    goto :goto_0
.end method

.method public getScatterData()Lcom/github/mikephil/charting/data/ScatterData;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CombinedData;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v0

    goto :goto_0
.end method

.method protected init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 72
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->init()V

    .line 75
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    const/4 v1, 0x0

    sget-object v2, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->BAR:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v2, v0, v1

    sget-object v1, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->BUBBLE:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->LINE:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->CANDLE:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->SCATTER:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawOrder:[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .line 79
    new-instance v0, Lcom/github/mikephil/charting/highlight/CombinedHighlighter;

    invoke-direct {v0, p0, p0}, Lcom/github/mikephil/charting/highlight/CombinedHighlighter;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/CombinedDataProvider;Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->setHighlighter(Lcom/github/mikephil/charting/highlight/ChartHighlighter;)V

    .line 82
    invoke-virtual {p0, v3}, Lcom/github/mikephil/charting/charts/CombinedChart;->setHighlightFullBarEnabled(Z)V

    .line 84
    new-instance v0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;-><init>(Lcom/github/mikephil/charting/charts/CombinedChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 85
    return-void
.end method

.method public isDrawBarShadowEnabled()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawBarShadow:Z

    return v0
.end method

.method public isDrawValueAboveBarEnabled()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawValueAboveBar:Z

    return v0
.end method

.method public isHighlightFullBarEnabled()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mHighlightFullBarEnabled:Z

    return v0
.end method

.method public bridge synthetic setData(Lcom/github/mikephil/charting/data/ChartData;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/CombinedChart;->setData(Lcom/github/mikephil/charting/data/CombinedData;)V

    return-void
.end method

.method public setData(Lcom/github/mikephil/charting/data/CombinedData;)V
    .locals 1
    .param p1, "data"    # Lcom/github/mikephil/charting/data/CombinedData;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 95
    new-instance v0, Lcom/github/mikephil/charting/highlight/CombinedHighlighter;

    invoke-direct {v0, p0, p0}, Lcom/github/mikephil/charting/highlight/CombinedHighlighter;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/CombinedDataProvider;Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->setHighlighter(Lcom/github/mikephil/charting/highlight/ChartHighlighter;)V

    .line 96
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->createRenderers()V

    .line 97
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/DataRenderer;->initBuffers()V

    .line 98
    return-void
.end method

.method public setDrawBarShadow(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawBarShadow:Z

    .line 190
    return-void
.end method

.method public setDrawOrder([Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;)V
    .locals 1
    .param p1, "order"    # [Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .prologue
    .line 228
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawOrder:[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    goto :goto_0
.end method

.method public setDrawValueAboveBar(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawValueAboveBar:Z

    .line 179
    return-void
.end method

.method public setHighlightFullBarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mHighlightFullBarEnabled:Z

    .line 200
    return-void
.end method
