.class public Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;
.super Lcom/github/mikephil/charting/renderer/YAxisRenderer;
.source "YAxisRendererHorizontalBarChart.java"


# instance fields
.field protected mDrawZeroLinePathBuffer:Landroid/graphics/Path;

.field protected mRenderLimitLinesBuffer:[F

.field protected mRenderLimitLinesPathBuffer:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V
    .locals 2
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p2, "yAxis"    # Lcom/github/mikephil/charting/components/YAxis;
    .param p3, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    .line 186
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mDrawZeroLinePathBuffer:Landroid/graphics/Path;

    .line 214
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mRenderLimitLinesPathBuffer:Landroid/graphics/Path;

    .line 215
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mRenderLimitLinesBuffer:[F

    .line 27
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 28
    return-void
.end method


# virtual methods
.method public computeAxis(FFZ)V
    .locals 5
    .param p1, "yMin"    # F
    .param p2, "yMax"    # F
    .param p3, "inverted"    # Z

    .prologue
    .line 41
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentHeight()F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isFullyZoomedOutX()Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 44
    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v4

    .line 43
    invoke-virtual {v2, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    .line 45
    .local v0, "p1":Lcom/github/mikephil/charting/utils/MPPointD;
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 46
    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v4

    .line 45
    invoke-virtual {v2, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v1

    .line 48
    .local v1, "p2":Lcom/github/mikephil/charting/utils/MPPointD;
    if-nez p3, :cond_1

    .line 49
    iget-wide v2, v0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float p1, v2

    .line 50
    iget-wide v2, v1, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float p2, v2

    .line 56
    :goto_0
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 57
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 60
    .end local v0    # "p1":Lcom/github/mikephil/charting/utils/MPPointD;
    .end local v1    # "p2":Lcom/github/mikephil/charting/utils/MPPointD;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->computeAxisValues(FF)V

    .line 61
    return-void

    .line 52
    .restart local v0    # "p1":Lcom/github/mikephil/charting/utils/MPPointD;
    .restart local v1    # "p2":Lcom/github/mikephil/charting/utils/MPPointD;
    :cond_1
    iget-wide v2, v1, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float p1, v2

    .line 53
    iget-wide v2, v0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float p2, v2

    goto :goto_0
.end method

.method protected drawYLabels(Landroid/graphics/Canvas;F[FF)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "fixedPosition"    # F
    .param p3, "positions"    # [F
    .param p4, "offset"    # F

    .prologue
    .line 136
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/YAxis;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 137
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/YAxis;->getTextSize()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 138
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/YAxis;->getTextColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->isDrawBottomYLabelEntryEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    .line 141
    .local v0, "from":I
    :goto_0
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->isDrawTopYLabelEntryEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v3, v4, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    .line 145
    .local v3, "to":I
    :goto_1
    move v1, v0

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_2

    .line 147
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/components/YAxis;->getFormattedLabel(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "text":Ljava/lang/String;
    mul-int/lit8 v4, v1, 0x2

    aget v4, p3, v4

    sub-float v5, p2, p4

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 140
    .end local v0    # "from":I
    .end local v1    # "i":I
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "to":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 141
    .restart local v0    # "from":I
    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v4, v4, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    add-int/lit8 v3, v4, -0x1

    goto :goto_1

    .line 151
    .restart local v1    # "i":I
    .restart local v3    # "to":I
    :cond_2
    return-void
.end method

.method protected drawZeroLine(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 192
    .local v0, "clipRestoreCount":I
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mZeroLineClippingRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 193
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mZeroLineClippingRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->getZeroLineWidth()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 194
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLineClippingRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 197
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v3, v5, v5}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v1

    .line 199
    .local v1, "pos":Lcom/github/mikephil/charting/utils/MPPointD;
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mZeroLinePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->getZeroLineColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mZeroLinePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->getZeroLineWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 202
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mDrawZeroLinePathBuffer:Landroid/graphics/Path;

    .line 203
    .local v2, "zeroLinePath":Landroid/graphics/Path;
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 205
    iget-wide v4, v1, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v3, v4

    sub-float/2addr v3, v6

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 206
    iget-wide v4, v1, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v3, v4

    sub-float/2addr v3, v6

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 209
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mZeroLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 211
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 212
    return-void
.end method

.method public getGridClippingRect()Landroid/graphics/RectF;
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mGridClippingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 173
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mGridClippingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/AxisBase;->getGridLineWidth()F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 174
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mGridClippingRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected getTransformedPositions()[F
    .locals 4

    .prologue
    .line 156
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mGetTransformedPositionsBuffer:[F

    array-length v2, v2

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    mul-int/lit8 v3, v3, 0x2

    if-eq v2, v3, :cond_0

    .line 157
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mGetTransformedPositionsBuffer:[F

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mGetTransformedPositionsBuffer:[F

    .line 161
    .local v1, "positions":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v2, v2, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    div-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    aput v2, v1, v0

    .line 161
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 167
    return-object v1
.end method

.method protected linePath(Landroid/graphics/Path;I[F)Landroid/graphics/Path;
    .locals 2
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "i"    # I
    .param p3, "positions"    # [F

    .prologue
    .line 180
    aget v0, p3, p2

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 181
    aget v0, p3, p2

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 183
    return-object p1
.end method

.method public renderAxisLabels(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 69
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/YAxis;->isDrawLabelsEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->getTransformedPositions()[F

    move-result-object v3

    .line 74
    .local v3, "positions":[F
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/YAxis;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 75
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/YAxis;->getTextSize()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 76
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/YAxis;->getTextColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 79
    const/high16 v6, 0x40200000    # 2.5f

    invoke-static {v6}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    .line 80
    .local v0, "baseYOffset":F
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    const-string v7, "Q"

    invoke-static {v6, v7}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v6

    int-to-float v4, v6

    .line 82
    .local v4, "textHeight":F
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/YAxis;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    .line 83
    .local v1, "dependency":Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/YAxis;->getLabelPosition()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    move-result-object v2

    .line 85
    .local v2, "labelPosition":Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;
    const/4 v5, 0x0

    .line 87
    .local v5, "yPos":F
    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v1, v6, :cond_3

    .line 89
    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v2, v6, :cond_2

    .line 90
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v6

    sub-float v5, v6, v0

    .line 104
    :goto_1
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/YAxis;->getYOffset()F

    move-result v6

    invoke-virtual {p0, p1, v5, v3, v6}, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->drawYLabels(Landroid/graphics/Canvas;F[FF)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v6

    sub-float v5, v6, v0

    goto :goto_1

    .line 97
    :cond_3
    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v2, v6, :cond_4

    .line 98
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v6

    add-float/2addr v6, v4

    add-float v5, v6, v0

    goto :goto_1

    .line 100
    :cond_4
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v6

    add-float/2addr v6, v4

    add-float v5, v6, v0

    goto :goto_1
.end method

.method public renderAxisLine(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isDrawAxisLineEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->getAxisLineColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->getAxisLineWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v0, v1, :cond_2

    .line 117
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 118
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 119
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 117
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 122
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 123
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 121
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public renderLimitLines(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 225
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/YAxis;->getLimitLines()Ljava/util/List;

    move-result-object v6

    .line 227
    .local v6, "limitLines":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/components/LimitLine;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_1

    .line 309
    :cond_0
    return-void

    .line 230
    :cond_1
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mRenderLimitLinesBuffer:[F

    .line 231
    .local v8, "pts":[F
    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v8, v11

    .line 232
    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v8, v11

    .line 233
    const/4 v11, 0x2

    const/4 v12, 0x0

    aput v12, v8, v11

    .line 234
    const/4 v11, 0x3

    const/4 v12, 0x0

    aput v12, v8, v11

    .line 235
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mRenderLimitLinesPathBuffer:Landroid/graphics/Path;

    .line 236
    .local v5, "limitLinePath":Landroid/graphics/Path;
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 238
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_0

    .line 240
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/components/LimitLine;

    .line 242
    .local v2, "l":Lcom/github/mikephil/charting/components/LimitLine;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_2

    .line 238
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 246
    .local v0, "clipRestoreCount":I
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLineClippingRect:Landroid/graphics/RectF;

    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 247
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLineClippingRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v12

    neg-float v12, v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/graphics/RectF;->inset(FF)V

    .line 248
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLineClippingRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 250
    const/4 v11, 0x0

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLimit()F

    move-result v12

    aput v12, v8, v11

    .line 251
    const/4 v11, 0x2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLimit()F

    move-result v12

    aput v12, v8, v11

    .line 253
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v11, v8}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 255
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v12

    aput v12, v8, v11

    .line 256
    const/4 v11, 0x3

    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v12

    aput v12, v8, v11

    .line 258
    const/4 v11, 0x0

    aget v11, v8, v11

    const/4 v12, 0x1

    aget v12, v8, v12

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 259
    const/4 v11, 0x2

    aget v11, v8, v11

    const/4 v12, 0x3

    aget v12, v8, v12

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 261
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 262
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineColor()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 264
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 266
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 267
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 269
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "label":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v11, ""

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 274
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getTextStyle()Landroid/graphics/Paint$Style;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 275
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 276
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getTextColor()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 277
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 278
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 279
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getTextSize()F

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 281
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v11

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getXOffset()F

    move-result v12

    add-float v9, v11, v12

    .line 282
    .local v9, "xOffset":F
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v11}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v11

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getYOffset()F

    move-result v12

    add-float v10, v11, v12

    .line 284
    .local v10, "yOffset":F
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLabelPosition()Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    move-result-object v7

    .line 286
    .local v7, "position":Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    sget-object v11, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v7, v11, :cond_4

    .line 288
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-static {v11, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v11

    int-to-float v4, v11

    .line 289
    .local v4, "labelLineHeight":F
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 290
    const/4 v11, 0x0

    aget v11, v8, v11

    add-float/2addr v11, v9

    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v12

    add-float/2addr v12, v10

    add-float/2addr v12, v4

    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 307
    .end local v4    # "labelLineHeight":F
    .end local v7    # "position":Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    .end local v9    # "xOffset":F
    .end local v10    # "yOffset":F
    :cond_3
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_1

    .line 291
    .restart local v7    # "position":Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    .restart local v9    # "xOffset":F
    .restart local v10    # "yOffset":F
    :cond_4
    sget-object v11, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_BOTTOM:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v7, v11, :cond_5

    .line 293
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 294
    const/4 v11, 0x0

    aget v11, v8, v11

    add-float/2addr v11, v9

    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v12

    sub-float/2addr v12, v10

    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 295
    :cond_5
    sget-object v11, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->LEFT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v7, v11, :cond_6

    .line 297
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 298
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-static {v11, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v11

    int-to-float v4, v11

    .line 299
    .restart local v4    # "labelLineHeight":F
    const/4 v11, 0x0

    aget v11, v8, v11

    sub-float/2addr v11, v9

    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v12

    add-float/2addr v12, v10

    add-float/2addr v12, v4

    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 302
    .end local v4    # "labelLineHeight":F
    :cond_6
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 303
    const/4 v11, 0x0

    aget v11, v8, v11

    sub-float/2addr v11, v9

    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v12

    sub-float/2addr v12, v10

    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method
