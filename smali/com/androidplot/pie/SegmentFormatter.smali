.class public Lcom/androidplot/pie/SegmentFormatter;
.super Lcom/androidplot/ui/Formatter;
.source "SegmentFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/ui/Formatter",
        "<",
        "Lcom/androidplot/pie/PieChart;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_EDGE_COLOR:I = -0x1000000

.field private static final DEFAULT_EDGE_THICKNESS:F = 3.0f

.field private static final DEFAULT_FILL_COLOR:I = 0x0

.field private static final DEFAULT_LABEL_COLOR:I = -0x1

.field private static final DEFAULT_LABEL_FONT_SIZE:F = 18.0f

.field private static final DEFAULT_LABEL_MARKER_THICKNESS:F = 3.0f


# instance fields
.field private fillPaint:Landroid/graphics/Paint;

.field private innerEdgePaint:Landroid/graphics/Paint;

.field private innerInset:F

.field private labelMarkerPaint:Landroid/graphics/Paint;

.field private labelPaint:Landroid/graphics/Paint;

.field private offset:F

.field private outerEdgePaint:Landroid/graphics/Paint;

.field private outerInset:F

.field private radialEdgePaint:Landroid/graphics/Paint;

.field private radialInset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlCfgId"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    .line 88
    invoke-direct {p0}, Lcom/androidplot/ui/Formatter;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setFillPaint(Landroid/graphics/Paint;)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setOuterEdgePaint(Landroid/graphics/Paint;)V

    .line 51
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setInnerEdgePaint(Landroid/graphics/Paint;)V

    .line 57
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setRadialEdgePaint(Landroid/graphics/Paint;)V

    .line 63
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setLabelPaint(Landroid/graphics/Paint;)V

    .line 69
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 71
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setLabelMarkerPaint(Landroid/graphics/Paint;)V

    .line 76
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelMarkerPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelMarkerPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/pie/SegmentFormatter;->configure(Landroid/content/Context;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "fillColor"    # Ljava/lang/Integer;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    .line 80
    invoke-direct {p0}, Lcom/androidplot/ui/Formatter;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setFillPaint(Landroid/graphics/Paint;)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setOuterEdgePaint(Landroid/graphics/Paint;)V

    .line 51
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setInnerEdgePaint(Landroid/graphics/Paint;)V

    .line 57
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setRadialEdgePaint(Landroid/graphics/Paint;)V

    .line 63
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setLabelPaint(Landroid/graphics/Paint;)V

    .line 69
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 71
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/pie/SegmentFormatter;->setLabelMarkerPaint(Landroid/graphics/Paint;)V

    .line 76
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelMarkerPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getLabelMarkerPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "fillColor"    # Ljava/lang/Integer;
    .param p2, "borderColor"    # Ljava/lang/Integer;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/androidplot/pie/SegmentFormatter;-><init>(Ljava/lang/Integer;)V

    .line 94
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "fillColor"    # Ljava/lang/Integer;
    .param p2, "outerEdgeColor"    # Ljava/lang/Integer;
    .param p3, "innerEdgeColor"    # Ljava/lang/Integer;
    .param p4, "radialEdgeColor"    # Ljava/lang/Integer;

    .prologue
    const/high16 v2, -0x1000000

    .line 101
    invoke-direct {p0, p1}, Lcom/androidplot/pie/SegmentFormatter;-><init>(Ljava/lang/Integer;)V

    .line 102
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    :goto_1
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    :goto_2
    return-void

    .line 105
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/pie/SegmentFormatter;->outerEdgePaint:Landroid/graphics/Paint;

    .line 106
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 112
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/pie/SegmentFormatter;->outerEdgePaint:Landroid/graphics/Paint;

    .line 113
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 119
    :cond_2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/pie/SegmentFormatter;->radialEdgePaint:Landroid/graphics/Paint;

    .line 120
    invoke-virtual {p0}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2
.end method


# virtual methods
.method public bridge synthetic doGetRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lcom/androidplot/pie/PieChart;

    invoke-virtual {p0, p1}, Lcom/androidplot/pie/SegmentFormatter;->doGetRendererInstance(Lcom/androidplot/pie/PieChart;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object v0

    return-object v0
.end method

.method public doGetRendererInstance(Lcom/androidplot/pie/PieChart;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1
    .param p1, "plot"    # Lcom/androidplot/pie/PieChart;

    .prologue
    .line 131
    new-instance v0, Lcom/androidplot/pie/PieRenderer;

    invoke-direct {v0, p1}, Lcom/androidplot/pie/PieRenderer;-><init>(Lcom/androidplot/pie/PieChart;)V

    return-object v0
.end method

.method public getFillPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/androidplot/pie/SegmentFormatter;->fillPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getInnerEdgePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/androidplot/pie/SegmentFormatter;->innerEdgePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getInnerInset()F
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/androidplot/pie/SegmentFormatter;->innerInset:F

    return v0
.end method

.method public getLabelMarkerPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/androidplot/pie/SegmentFormatter;->labelMarkerPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLabelPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/androidplot/pie/SegmentFormatter;->labelPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getOffset()F
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/androidplot/pie/SegmentFormatter;->offset:F

    return v0
.end method

.method public getOuterEdgePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/androidplot/pie/SegmentFormatter;->outerEdgePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getOuterInset()F
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/androidplot/pie/SegmentFormatter;->outerInset:F

    return v0
.end method

.method public getRadialEdgePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/androidplot/pie/SegmentFormatter;->radialEdgePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRadialInset()F
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/androidplot/pie/SegmentFormatter;->radialInset:F

    return v0
.end method

.method public getRendererClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/androidplot/ui/SeriesRenderer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    const-class v0, Lcom/androidplot/pie/PieRenderer;

    return-object v0
.end method

.method public setFillPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "fillPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/androidplot/pie/SegmentFormatter;->fillPaint:Landroid/graphics/Paint;

    .line 164
    return-void
.end method

.method public setInnerEdgePaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "innerEdgePaint"    # Landroid/graphics/Paint;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/androidplot/pie/SegmentFormatter;->innerEdgePaint:Landroid/graphics/Paint;

    .line 140
    return-void
.end method

.method public setInnerInset(F)V
    .locals 0
    .param p1, "innerInset"    # F

    .prologue
    .line 213
    iput p1, p0, Lcom/androidplot/pie/SegmentFormatter;->innerInset:F

    .line 214
    return-void
.end method

.method public setLabelMarkerPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "labelMarkerPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/androidplot/pie/SegmentFormatter;->labelMarkerPaint:Landroid/graphics/Paint;

    .line 180
    return-void
.end method

.method public setLabelPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "labelPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/androidplot/pie/SegmentFormatter;->labelPaint:Landroid/graphics/Paint;

    .line 172
    return-void
.end method

.method public setOffset(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 192
    iput p1, p0, Lcom/androidplot/pie/SegmentFormatter;->offset:F

    .line 193
    return-void
.end method

.method public setOuterEdgePaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "outerEdgePaint"    # Landroid/graphics/Paint;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/androidplot/pie/SegmentFormatter;->outerEdgePaint:Landroid/graphics/Paint;

    .line 148
    return-void
.end method

.method public setOuterInset(F)V
    .locals 0
    .param p1, "outerInset"    # F

    .prologue
    .line 221
    iput p1, p0, Lcom/androidplot/pie/SegmentFormatter;->outerInset:F

    .line 222
    return-void
.end method

.method public setRadialEdgePaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "radialEdgePaint"    # Landroid/graphics/Paint;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/androidplot/pie/SegmentFormatter;->radialEdgePaint:Landroid/graphics/Paint;

    .line 156
    return-void
.end method

.method public setRadialInset(F)V
    .locals 0
    .param p1, "radialInset"    # F

    .prologue
    .line 205
    iput p1, p0, Lcom/androidplot/pie/SegmentFormatter;->radialInset:F

    .line 206
    return-void
.end method
