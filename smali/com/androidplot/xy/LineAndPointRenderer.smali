.class public Lcom/androidplot/xy/LineAndPointRenderer;
.super Lcom/androidplot/xy/XYSeriesRenderer;
.source "LineAndPointRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FormatterType:",
        "Lcom/androidplot/xy/LineAndPointFormatter;",
        ">",
        "Lcom/androidplot/xy/XYSeriesRenderer",
        "<",
        "Lcom/androidplot/xy/XYSeries;",
        "TFormatterType;>;"
    }
.end annotation


# static fields
.field protected static final ONE:I = 0x1

.field protected static final ZERO:I


# instance fields
.field private final path:Landroid/graphics/Path;

.field protected final pointsCaches:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/androidplot/xy/XYSeries;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYPlot;)V
    .locals 3
    .param p1, "plot"    # Lcom/androidplot/xy/XYPlot;

    .prologue
    .local p0, "this":Lcom/androidplot/xy/LineAndPointRenderer;, "Lcom/androidplot/xy/LineAndPointRenderer<TFormatterType;>;"
    const/4 v2, 0x2

    .line 51
    invoke-direct {p0, p1}, Lcom/androidplot/xy/XYSeriesRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    .line 45
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/LineAndPointRenderer;->path:Landroid/graphics/Path;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/androidplot/xy/LineAndPointRenderer;->pointsCaches:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    new-instance v0, Lcom/androidplot/xy/LineAndPointRenderer$1;

    invoke-direct {v0, p0}, Lcom/androidplot/xy/LineAndPointRenderer$1;-><init>(Lcom/androidplot/xy/LineAndPointRenderer;)V

    invoke-virtual {p1, v0}, Lcom/androidplot/xy/XYPlot;->addListener(Lcom/androidplot/PlotListener;)Z

    .line 63
    return-void
.end method


# virtual methods
.method protected appendToPath(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "thisPoint"    # Landroid/graphics/PointF;
    .param p3, "lastPoint"    # Landroid/graphics/PointF;

    .prologue
    .line 94
    .local p0, "this":Lcom/androidplot/xy/LineAndPointRenderer;, "Lcom/androidplot/xy/LineAndPointRenderer<TFormatterType;>;"
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 95
    return-void
.end method

.method protected convertPoint(Lcom/androidplot/xy/XYCoords;Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 1
    .param p1, "coord"    # Lcom/androidplot/xy/XYCoords;
    .param p2, "plotArea"    # Landroid/graphics/RectF;

    .prologue
    .line 237
    .local p0, "this":Lcom/androidplot/xy/LineAndPointRenderer;, "Lcom/androidplot/xy/LineAndPointRenderer<TFormatterType;>;"
    invoke-virtual {p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/xy/RectRegion;->transformScreen(Lcom/androidplot/xy/XYCoords;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method protected cullPointsCache()V
    .locals 4

    .prologue
    .line 125
    .local p0, "this":Lcom/androidplot/xy/LineAndPointRenderer;, "Lcom/androidplot/xy/LineAndPointRenderer<TFormatterType;>;"
    iget-object v1, p0, Lcom/androidplot/xy/LineAndPointRenderer;->pointsCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYSeries;

    .line 126
    .local v0, "series":Lcom/androidplot/xy/XYSeries;
    invoke-virtual {p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/XYSeriesRegistry;

    const-class v3, Lcom/androidplot/xy/LineAndPointFormatter;

    invoke-virtual {v1, v0, v3}, Lcom/androidplot/xy/XYSeriesRegistry;->contains(Lcom/androidplot/Series;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/androidplot/xy/LineAndPointRenderer;->pointsCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 131
    .end local v0    # "series":Lcom/androidplot/xy/XYSeries;
    :cond_1
    return-void
.end method

.method public bridge synthetic doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .locals 0

    .prologue
    .line 40
    .local p0, "this":Lcom/androidplot/xy/LineAndPointRenderer;, "Lcom/androidplot/xy/LineAndPointRenderer<TFormatterType;>;"
    check-cast p3, Lcom/androidplot/xy/LineAndPointFormatter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/xy/LineAndPointRenderer;->doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/LineAndPointFormatter;)V

    return-void
.end method

.method public doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/LineAndPointFormatter;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "formatter"    # Lcom/androidplot/xy/LineAndPointFormatter;

    .prologue
    .line 73
    .local p0, "this":Lcom/androidplot/xy/LineAndPointRenderer;, "Lcom/androidplot/xy/LineAndPointRenderer<TFormatterType;>;"
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    .line 74
    .local v7, "centerY":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    .line 76
    .local v6, "centerX":F
    invoke-virtual {p3}, Lcom/androidplot/xy/LineAndPointFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p3}, Lcom/androidplot/xy/LineAndPointFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 79
    :cond_0
    invoke-virtual {p3}, Lcom/androidplot/xy/LineAndPointFormatter;->hasLinePaint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Lcom/androidplot/xy/LineAndPointFormatter;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 83
    :cond_1
    invoke-virtual {p3}, Lcom/androidplot/xy/LineAndPointFormatter;->hasVertexPaint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {p3}, Lcom/androidplot/xy/LineAndPointFormatter;->getVertexPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v6, v7, v0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 86
    :cond_2
    return-void
.end method

.method protected drawSeries(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/LineAndPointFormatter;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "plotArea"    # Landroid/graphics/RectF;
    .param p3, "series"    # Lcom/androidplot/xy/XYSeries;
    .param p4, "formatter"    # Lcom/androidplot/xy/LineAndPointFormatter;

    .prologue
    .line 135
    .local p0, "this":Lcom/androidplot/xy/LineAndPointRenderer;, "Lcom/androidplot/xy/LineAndPointRenderer<TFormatterType;>;"
    const/4 v9, 0x0

    .line 136
    .local v9, "lastPoint":Landroid/graphics/PointF;
    const/4 v8, 0x0

    .line 137
    .local v8, "firstPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/androidplot/xy/LineAndPointRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 138
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/LineAndPointRenderer;->getPointsCache(Lcom/androidplot/xy/XYSeries;)Ljava/util/ArrayList;

    move-result-object v16

    .line 140
    .local v16, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/PointF;>;"
    const/4 v14, 0x0

    .line 141
    .local v14, "iStart":I
    invoke-interface/range {p3 .. p3}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v15

    .line 142
    .local v15, "iEnd":I
    invoke-static/range {p3 .. p3}, Lcom/androidplot/util/SeriesUtils;->getXYOrder(Lcom/androidplot/xy/XYSeries;)Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    move-result-object v4

    sget-object v5, Lcom/androidplot/xy/OrderedXYSeries$XOrder;->ASCENDING:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    if-ne v4, v5, :cond_1

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v4

    check-cast v4, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/androidplot/util/SeriesUtils;->iBounds(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/Region;

    move-result-object v19

    .line 144
    .local v19, "iBounds":Lcom/androidplot/Region;
    invoke-virtual/range {v19 .. v19}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v14

    .line 145
    if-lez v14, :cond_0

    .line 146
    add-int/lit8 v14, v14, -0x1

    .line 148
    :cond_0
    invoke-virtual/range {v19 .. v19}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    add-int/lit8 v15, v4, 0x1

    .line 149
    invoke-interface/range {p3 .. p3}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v15, v4, :cond_1

    .line 150
    add-int/lit8 v15, v15, 0x1

    .line 153
    .end local v19    # "iBounds":Lcom/androidplot/Region;
    :cond_1
    move/from16 v18, v14

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v15, :cond_9

    .line 154
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v24

    .line 155
    .local v24, "y":Ljava/lang/Number;
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v23

    .line 156
    .local v23, "x":Ljava/lang/Number;
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/PointF;

    .line 158
    .local v20, "iPoint":Landroid/graphics/PointF;
    if-eqz v24, :cond_6

    if-eqz v23, :cond_6

    .line 159
    if-nez v20, :cond_2

    .line 160
    new-instance v20, Landroid/graphics/PointF;

    .end local v20    # "iPoint":Landroid/graphics/PointF;
    invoke-direct/range {v20 .. v20}, Landroid/graphics/PointF;-><init>()V

    .line 161
    .restart local v20    # "iPoint":Landroid/graphics/PointF;
    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_2
    move-object/from16 v22, v20

    .line 164
    .local v22, "thisPoint":Landroid/graphics/PointF;
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v4

    check-cast v4, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v4

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, p2

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/androidplot/xy/RectRegion;->transformScreen(Landroid/graphics/PointF;Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;)V

    .line 172
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/xy/LineAndPointFormatter;->hasLinePaint()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/xy/LineAndPointFormatter;->getInterpolationParams()Lcom/androidplot/xy/InterpolationParams;

    move-result-object v4

    if-nez v4, :cond_5

    .line 173
    if-eqz v22, :cond_7

    .line 176
    if-nez v8, :cond_3

    .line 177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/androidplot/xy/LineAndPointRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 178
    move-object/from16 v8, v22

    .line 181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/androidplot/xy/LineAndPointRenderer;->path:Landroid/graphics/Path;

    iget v5, v8, Landroid/graphics/PointF;->x:F

    iget v6, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 184
    :cond_3
    if-eqz v9, :cond_4

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/androidplot/xy/LineAndPointRenderer;->path:Landroid/graphics/Path;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1, v9}, Lcom/androidplot/xy/LineAndPointRenderer;->appendToPath(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 188
    :cond_4
    move-object/from16 v9, v22

    .line 153
    :cond_5
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 166
    .end local v22    # "thisPoint":Landroid/graphics/PointF;
    :cond_6
    const/16 v22, 0x0

    .line 167
    .restart local v22    # "thisPoint":Landroid/graphics/PointF;
    const/16 v20, 0x0

    .line 168
    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 190
    :cond_7
    if-eqz v9, :cond_8

    .line 191
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/androidplot/xy/LineAndPointRenderer;->path:Landroid/graphics/Path;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v10}, Lcom/androidplot/xy/LineAndPointRenderer;->renderPath(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/androidplot/xy/LineAndPointFormatter;)V

    .line 193
    :cond_8
    const/4 v8, 0x0

    .line 194
    const/4 v9, 0x0

    goto :goto_2

    .line 199
    .end local v20    # "iPoint":Landroid/graphics/PointF;
    .end local v22    # "thisPoint":Landroid/graphics/PointF;
    .end local v23    # "x":Ljava/lang/Number;
    .end local v24    # "y":Ljava/lang/Number;
    :cond_9
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/xy/LineAndPointFormatter;->hasLinePaint()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 200
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/xy/LineAndPointFormatter;->getInterpolationParams()Lcom/androidplot/xy/InterpolationParams;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 202
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/xy/LineAndPointFormatter;->getInterpolationParams()Lcom/androidplot/xy/InterpolationParams;

    move-result-object v4

    .line 201
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/androidplot/xy/LineAndPointRenderer;->getInterpolator(Lcom/androidplot/xy/InterpolationParams;)Lcom/androidplot/xy/Interpolator;

    move-result-object v4

    .line 203
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/xy/LineAndPointFormatter;->getInterpolationParams()Lcom/androidplot/xy/InterpolationParams;

    move-result-object v5

    .line 202
    move-object/from16 v0, p3

    invoke-interface {v4, v0, v5}, Lcom/androidplot/xy/Interpolator;->interpolate(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/InterpolationParams;)Ljava/util/List;

    move-result-object v21

    .line 204
    .local v21, "interpolatedPoints":Ljava/util/List;, "Ljava/util/List<Lcom/androidplot/xy/XYCoords;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/androidplot/xy/XYCoords;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/androidplot/xy/LineAndPointRenderer;->convertPoint(Lcom/androidplot/xy/XYCoords;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v8

    .line 205
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/androidplot/xy/XYCoords;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/androidplot/xy/LineAndPointRenderer;->convertPoint(Lcom/androidplot/xy/XYCoords;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v9

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/androidplot/xy/LineAndPointRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/androidplot/xy/LineAndPointRenderer;->path:Landroid/graphics/Path;

    iget v5, v8, Landroid/graphics/PointF;->x:F

    iget v6, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 208
    const/16 v18, 0x1

    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_a

    .line 209
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/androidplot/xy/XYCoords;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/androidplot/xy/LineAndPointRenderer;->convertPoint(Lcom/androidplot/xy/XYCoords;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v22

    .line 210
    .restart local v22    # "thisPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/androidplot/xy/LineAndPointRenderer;->path:Landroid/graphics/Path;

    move-object/from16 v0, v22

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v22

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 208
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 214
    .end local v21    # "interpolatedPoints":Ljava/util/List;, "Ljava/util/List<Lcom/androidplot/xy/XYCoords;>;"
    .end local v22    # "thisPoint":Landroid/graphics/PointF;
    :cond_a
    if-eqz v8, :cond_b

    .line 215
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/androidplot/xy/LineAndPointRenderer;->path:Landroid/graphics/Path;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v10}, Lcom/androidplot/xy/LineAndPointRenderer;->renderPath(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/androidplot/xy/LineAndPointFormatter;)V

    :cond_b
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v17, p4

    .line 218
    invoke-virtual/range {v10 .. v17}, Lcom/androidplot/xy/LineAndPointRenderer;->renderPoints(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;IILjava/util/List;Lcom/androidplot/xy/LineAndPointFormatter;)V

    .line 219
    return-void
.end method

.method protected getInterpolator(Lcom/androidplot/xy/InterpolationParams;)Lcom/androidplot/xy/Interpolator;
    .locals 2
    .param p1, "params"    # Lcom/androidplot/xy/InterpolationParams;

    .prologue
    .line 228
    .local p0, "this":Lcom/androidplot/xy/LineAndPointRenderer;, "Lcom/androidplot/xy/LineAndPointRenderer<TFormatterType;>;"
    :try_start_0
    invoke-interface {p1}, Lcom/androidplot/xy/InterpolationParams;->getInterpolatorClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/Interpolator;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 231
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getPointsCache(Lcom/androidplot/xy/XYSeries;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "series"    # Lcom/androidplot/xy/XYSeries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/xy/XYSeries;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/androidplot/xy/LineAndPointRenderer;, "Lcom/androidplot/xy/LineAndPointRenderer<TFormatterType;>;"
    iget-object v2, p0, Lcom/androidplot/xy/LineAndPointRenderer;->pointsCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 106
    .local v0, "pointsCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    invoke-interface {p1}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v1

    .line 107
    .local v1, "seriesSize":I
    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "pointsCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .restart local v0    # "pointsCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    iget-object v2, p0, Lcom/androidplot/xy/LineAndPointRenderer;->pointsCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 113
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v1, :cond_2

    .line 114
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 117
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 118
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 121
    :cond_2
    return-object v0
.end method

.method public bridge synthetic onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/androidplot/xy/LineAndPointRenderer;, "Lcom/androidplot/xy/LineAndPointRenderer<TFormatterType;>;"
    move-object v3, p3

    check-cast v3, Lcom/androidplot/xy/XYSeries;

    move-object v4, p4

    check-cast v4, Lcom/androidplot/xy/LineAndPointFormatter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/LineAndPointRenderer;->onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/LineAndPointFormatter;Lcom/androidplot/ui/RenderStack;)V

    return-void
.end method

.method public onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/LineAndPointFormatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 0
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
    .line 67
    .local p0, "this":Lcom/androidplot/xy/LineAndPointRenderer;, "Lcom/androidplot/xy/LineAndPointRenderer<TFormatterType;>;"
    .local p4, "formatter":Lcom/androidplot/xy/LineAndPointFormatter;, "TFormatterType;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/androidplot/xy/LineAndPointRenderer;->drawSeries(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/LineAndPointFormatter;)V

    .line 68
    return-void
.end method

.method protected renderPath(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/androidplot/xy/LineAndPointFormatter;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "plotArea"    # Landroid/graphics/RectF;
    .param p3, "path"    # Landroid/graphics/Path;
    .param p4, "firstPoint"    # Landroid/graphics/PointF;
    .param p5, "lastPoint"    # Landroid/graphics/PointF;
    .param p6, "formatter"    # Lcom/androidplot/xy/LineAndPointFormatter;

    .prologue
    .line 265
    .local p0, "this":Lcom/androidplot/xy/LineAndPointRenderer;, "Lcom/androidplot/xy/LineAndPointRenderer<TFormatterType;>;"
    new-instance v12, Landroid/graphics/Path;

    move-object/from16 v0, p3

    invoke-direct {v12, v0}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 270
    .local v12, "outlinePath":Landroid/graphics/Path;
    sget-object v3, Lcom/androidplot/xy/LineAndPointRenderer$2;->$SwitchMap$com$androidplot$xy$FillDirection:[I

    invoke-virtual/range {p6 .. p6}, Lcom/androidplot/xy/LineAndPointFormatter;->getFillDirection()Lcom/androidplot/xy/FillDirection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/androidplot/xy/FillDirection;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 290
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fill direction not yet implemented: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 291
    invoke-virtual/range {p6 .. p6}, Lcom/androidplot/xy/LineAndPointFormatter;->getFillDirection()Lcom/androidplot/xy/FillDirection;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 272
    :pswitch_0
    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 273
    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->close()V

    .line 294
    :goto_0
    invoke-virtual/range {p6 .. p6}, Lcom/androidplot/xy/LineAndPointFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 295
    invoke-virtual/range {p6 .. p6}, Lcom/androidplot/xy/LineAndPointFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 298
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v3

    check-cast v3, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v3}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v2

    .line 299
    .local v2, "bounds":Lcom/androidplot/xy/RectRegion;
    new-instance v13, Lcom/androidplot/xy/RectRegion;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Lcom/androidplot/xy/RectRegion;-><init>(Landroid/graphics/RectF;)V

    .line 302
    .local v13, "plotRegion":Lcom/androidplot/xy/RectRegion;
    invoke-virtual/range {p6 .. p6}, Lcom/androidplot/xy/LineAndPointFormatter;->getRegions()Lcom/androidplot/util/Layerable;

    move-result-object v3

    invoke-interface {v3}, Lcom/androidplot/util/Layerable;->elements()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/androidplot/xy/RectRegion;->intersects(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/androidplot/xy/RectRegion;

    .line 303
    .local v15, "thisRegion":Lcom/androidplot/xy/RectRegion;
    move-object/from16 v0, p6

    invoke-virtual {v0, v15}, Lcom/androidplot/xy/LineAndPointFormatter;->getRegionFormatter(Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/XYRegionFormatter;

    move-result-object v14

    .line 304
    .local v14, "regionFormatter":Lcom/androidplot/xy/XYRegionFormatter;
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 305
    invoke-virtual {v2, v15, v13, v4, v5}, Lcom/androidplot/xy/RectRegion;->transform(Lcom/androidplot/xy/RectRegion;Lcom/androidplot/xy/RectRegion;ZZ)Lcom/androidplot/xy/RectRegion;

    move-result-object v17

    .line 306
    .local v17, "thisRegionTransformed":Lcom/androidplot/xy/RectRegion;
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/androidplot/xy/RectRegion;->intersect(Lcom/androidplot/xy/RectRegion;)V

    .line 307
    invoke-virtual {v15}, Lcom/androidplot/xy/RectRegion;->isFullyDefined()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 308
    invoke-virtual/range {v17 .. v17}, Lcom/androidplot/xy/RectRegion;->asRectF()Landroid/graphics/RectF;

    move-result-object v16

    .line 309
    .local v16, "thisRegionRectF":Landroid/graphics/RectF;
    if-eqz v16, :cond_1

    .line 311
    const/16 v4, 0x1f

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 312
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 313
    invoke-virtual {v14}, Lcom/androidplot/xy/XYRegionFormatter;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 277
    .end local v2    # "bounds":Lcom/androidplot/xy/RectRegion;
    .end local v13    # "plotRegion":Lcom/androidplot/xy/RectRegion;
    .end local v14    # "regionFormatter":Lcom/androidplot/xy/XYRegionFormatter;
    .end local v15    # "thisRegion":Lcom/androidplot/xy/RectRegion;
    .end local v16    # "thisRegionRectF":Landroid/graphics/RectF;
    .end local v17    # "thisRegionTransformed":Lcom/androidplot/xy/RectRegion;
    :pswitch_1
    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 278
    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->close()V

    goto/16 :goto_0

    .line 282
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v3

    check-cast v3, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v3}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object v3

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v4

    check-cast v4, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYPlot;->getRangeOrigin()Ljava/lang/Number;

    move-result-object v4

    .line 284
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/RectF;->top:F

    float-to-double v6, v6

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v8, v8

    const/4 v10, 0x1

    .line 283
    invoke-virtual/range {v3 .. v10}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide v4

    double-to-float v11, v4

    .line 285
    .local v11, "originPix":F
    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 286
    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 287
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->close()V

    goto/16 :goto_0

    .line 315
    .end local v11    # "originPix":F
    .restart local v2    # "bounds":Lcom/androidplot/xy/RectRegion;
    .restart local v13    # "plotRegion":Lcom/androidplot/xy/RectRegion;
    .restart local v14    # "regionFormatter":Lcom/androidplot/xy/XYRegionFormatter;
    .restart local v15    # "thisRegion":Lcom/androidplot/xy/RectRegion;
    .restart local v16    # "thisRegionRectF":Landroid/graphics/RectF;
    .restart local v17    # "thisRegionTransformed":Lcom/androidplot/xy/RectRegion;
    :catchall_0
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    throw v3

    .line 322
    .end local v14    # "regionFormatter":Lcom/androidplot/xy/XYRegionFormatter;
    .end local v15    # "thisRegion":Lcom/androidplot/xy/RectRegion;
    .end local v16    # "thisRegionRectF":Landroid/graphics/RectF;
    .end local v17    # "thisRegionTransformed":Lcom/androidplot/xy/RectRegion;
    :cond_2
    invoke-virtual/range {p6 .. p6}, Lcom/androidplot/xy/LineAndPointFormatter;->hasLinePaint()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 323
    invoke-virtual/range {p6 .. p6}, Lcom/androidplot/xy/LineAndPointFormatter;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 326
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->rewind()V

    .line 327
    return-void

    .line 270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected renderPoints(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;IILjava/util/List;Lcom/androidplot/xy/LineAndPointFormatter;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "plotArea"    # Landroid/graphics/RectF;
    .param p3, "series"    # Lcom/androidplot/xy/XYSeries;
    .param p4, "iStart"    # I
    .param p5, "iEnd"    # I
    .param p7, "formatter"    # Lcom/androidplot/xy/LineAndPointFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "Lcom/androidplot/xy/XYSeries;",
            "II",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/androidplot/xy/LineAndPointFormatter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lcom/androidplot/xy/LineAndPointRenderer;, "Lcom/androidplot/xy/LineAndPointRenderer<TFormatterType;>;"
    .local p6, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/PointF;>;"
    invoke-virtual/range {p7 .. p7}, Lcom/androidplot/xy/LineAndPointFormatter;->hasVertexPaint()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p7 .. p7}, Lcom/androidplot/xy/LineAndPointFormatter;->hasPointLabelFormatter()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 243
    :cond_0
    invoke-virtual/range {p7 .. p7}, Lcom/androidplot/xy/LineAndPointFormatter;->hasVertexPaint()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual/range {p7 .. p7}, Lcom/androidplot/xy/LineAndPointFormatter;->getVertexPaint()Landroid/graphics/Paint;

    move-result-object v6

    .line 244
    .local v6, "vertexPaint":Landroid/graphics/Paint;
    :goto_0
    invoke-virtual/range {p7 .. p7}, Lcom/androidplot/xy/LineAndPointFormatter;->hasPointLabelFormatter()Z

    move-result v1

    .line 245
    .local v1, "hasPointLabelFormatter":Z
    if-eqz v1, :cond_4

    invoke-virtual/range {p7 .. p7}, Lcom/androidplot/xy/LineAndPointFormatter;->getPointLabelFormatter()Lcom/androidplot/xy/PointLabelFormatter;

    move-result-object v4

    .line 246
    .local v4, "plf":Lcom/androidplot/xy/PointLabelFormatter;
    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual/range {p7 .. p7}, Lcom/androidplot/xy/LineAndPointFormatter;->getPointLabeler()Lcom/androidplot/xy/PointLabeler;

    move-result-object v5

    .line 247
    .local v5, "pointLabeler":Lcom/androidplot/xy/PointLabeler;
    :goto_2
    move v2, p4

    .local v2, "i":I
    :goto_3
    move/from16 v0, p5

    if-ge v2, v0, :cond_6

    .line 248
    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 251
    .local v3, "p":Landroid/graphics/PointF;
    if-eqz v6, :cond_1

    .line 252
    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v7, v8, v6}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 256
    :cond_1
    if-eqz v5, :cond_2

    .line 257
    invoke-interface {v5, p3, v2}, Lcom/androidplot/xy/PointLabeler;->getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;

    move-result-object v7

    iget v8, v3, Landroid/graphics/PointF;->x:F

    iget v9, v4, Lcom/androidplot/xy/PointLabelFormatter;->hOffset:F

    add-float/2addr v8, v9

    iget v9, v3, Landroid/graphics/PointF;->y:F

    iget v10, v4, Lcom/androidplot/xy/PointLabelFormatter;->vOffset:F

    add-float/2addr v9, v10

    .line 258
    invoke-virtual {v4}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v10

    .line 257
    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 247
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 243
    .end local v1    # "hasPointLabelFormatter":Z
    .end local v2    # "i":I
    .end local v3    # "p":Landroid/graphics/PointF;
    .end local v4    # "plf":Lcom/androidplot/xy/PointLabelFormatter;
    .end local v5    # "pointLabeler":Lcom/androidplot/xy/PointLabeler;
    .end local v6    # "vertexPaint":Landroid/graphics/Paint;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 245
    .restart local v1    # "hasPointLabelFormatter":Z
    .restart local v6    # "vertexPaint":Landroid/graphics/Paint;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 246
    .restart local v4    # "plf":Lcom/androidplot/xy/PointLabelFormatter;
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 262
    .end local v1    # "hasPointLabelFormatter":Z
    .end local v4    # "plf":Lcom/androidplot/xy/PointLabelFormatter;
    .end local v6    # "vertexPaint":Landroid/graphics/Paint;
    :cond_6
    return-void
.end method
