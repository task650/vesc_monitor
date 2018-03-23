.class public Lcom/androidplot/xy/FastLineAndPointRenderer;
.super Lcom/androidplot/xy/XYSeriesRenderer;
.source "FastLineAndPointRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/xy/XYSeriesRenderer",
        "<",
        "Lcom/androidplot/xy/XYSeries;",
        "Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;",
        ">;"
    }
.end annotation


# instance fields
.field private points:[F

.field segmentLengths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field segmentOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYPlot;)V
    .locals 1
    .param p1, "plot"    # Lcom/androidplot/xy/XYPlot;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/androidplot/xy/XYSeriesRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->segmentOffsets:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->segmentLengths:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method protected bridge synthetic doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .locals 0

    .prologue
    .line 33
    check-cast p3, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/xy/FastLineAndPointRenderer;->doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;)V

    return-void
.end method

.method protected doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "formatter"    # Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;

    .prologue
    .line 121
    invoke-virtual {p3}, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->hasLinePaint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 124
    :cond_0
    return-void
.end method

.method protected drawSegment(Landroid/graphics/Canvas;[FIILcom/androidplot/xy/FastLineAndPointRenderer$Formatter;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "points"    # [F
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .param p5, "formatter"    # Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;

    .prologue
    .line 99
    iget-object v0, p5, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->linePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x4

    if-lt p4, v0, :cond_0

    .line 103
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_2

    .line 104
    add-int/lit8 v0, p4, -0x2

    iget-object v1, p5, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 105
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p4, -0x2

    iget-object v2, p5, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 113
    :cond_0
    :goto_0
    iget-object v0, p5, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->vertexPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p5, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->vertexPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 117
    :cond_1
    return-void

    .line 107
    :cond_2
    iget-object v0, p5, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 108
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p4, -0x4

    iget-object v2, p5, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected bridge synthetic onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 33
    move-object v3, p3

    check-cast v3, Lcom/androidplot/xy/XYSeries;

    move-object v4, p4

    check-cast v4, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/FastLineAndPointRenderer;->onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;Lcom/androidplot/ui/RenderStack;)V

    return-void
.end method

.method protected onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "plotArea"    # Landroid/graphics/RectF;
    .param p3, "series"    # Lcom/androidplot/xy/XYSeries;
    .param p4, "formatter"    # Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;
    .param p5, "stack"    # Lcom/androidplot/ui/RenderStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v1, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->segmentOffsets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 46
    iget-object v1, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->segmentLengths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 48
    invoke-interface/range {p3 .. p3}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v1

    mul-int/lit8 v10, v1, 0x2

    .line 49
    .local v10, "numPoints":I
    iget-object v1, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->points:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->points:[F

    array-length v1, v1

    if-eq v1, v10, :cond_1

    .line 51
    :cond_0
    invoke-interface/range {p3 .. p3}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->points:[F

    .line 59
    :cond_1
    const/4 v11, 0x0

    .line 60
    .local v11, "segmentLen":I
    const/4 v8, 0x1

    .line 61
    .local v8, "isLastPointNull":Z
    const/4 v7, 0x0

    .local v7, "i":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_0
    invoke-interface/range {p3 .. p3}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v1

    if-ge v7, v1, :cond_5

    .line 62
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v14

    .line 63
    .local v14, "y":Ljava/lang/Number;
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v13

    .line 66
    .local v13, "x":Ljava/lang/Number;
    if-eqz v14, :cond_4

    if-eqz v13, :cond_4

    .line 67
    if-eqz v8, :cond_2

    .line 68
    iget-object v1, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->segmentOffsets:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    const/4 v11, 0x0

    .line 70
    const/4 v8, 0x0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/androidplot/xy/FastLineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v13, v14, v0}, Lcom/androidplot/xy/RectRegion;->transformScreen(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v12

    .line 74
    .local v12, "thisPoint":Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->points:[F

    iget v2, v12, Landroid/graphics/PointF;->x:F

    aput v2, v1, v9

    .line 75
    iget-object v1, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->points:[F

    add-int/lit8 v2, v9, 0x1

    iget v3, v12, Landroid/graphics/PointF;->y:F

    aput v3, v1, v2

    .line 76
    add-int/lit8 v11, v11, 0x2

    .line 79
    invoke-interface/range {p3 .. p3}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v7, v1, :cond_3

    .line 80
    iget-object v1, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->segmentLengths:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .end local v12    # "thisPoint":Landroid/graphics/PointF;
    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, 0x2

    goto :goto_0

    .line 82
    :cond_4
    if-nez v8, :cond_3

    .line 83
    iget-object v1, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->segmentLengths:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    const/4 v8, 0x1

    goto :goto_1

    .line 89
    .end local v13    # "x":Ljava/lang/Number;
    .end local v14    # "y":Ljava/lang/Number;
    :cond_5
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->linePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_6

    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->vertexPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_7

    .line 90
    :cond_6
    const/4 v7, 0x0

    :goto_2
    iget-object v1, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->segmentOffsets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_7

    .line 91
    iget-object v1, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->segmentLengths:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 92
    .local v5, "len":I
    iget-object v1, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->segmentOffsets:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 93
    .local v4, "offset":I
    iget-object v3, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->points:[F

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/androidplot/xy/FastLineAndPointRenderer;->drawSegment(Landroid/graphics/Canvas;[FIILcom/androidplot/xy/FastLineAndPointRenderer$Formatter;)V

    .line 90
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 96
    .end local v4    # "offset":I
    .end local v5    # "len":I
    :cond_7
    return-void
.end method
