.class public Lcom/androidplot/xy/XYLegendWidget;
.super Lcom/androidplot/ui/widget/Widget;
.source "XYLegendWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/XYLegendWidget$CellType;,
        Lcom/androidplot/xy/XYLegendWidget$RegionEntryComparator;
    }
.end annotation


# static fields
.field private static final regionEntryComparator:Lcom/androidplot/xy/XYLegendWidget$RegionEntryComparator;


# instance fields
.field private drawIconBackgroundEnabled:Z

.field private drawIconBorderEnabled:Z

.field private iconBorderPaint:Landroid/graphics/Paint;

.field private iconSize:Lcom/androidplot/ui/Size;

.field private plot:Lcom/androidplot/xy/XYPlot;

.field private tableModel:Lcom/androidplot/ui/TableModel;

.field private textPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/androidplot/xy/XYLegendWidget$RegionEntryComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/androidplot/xy/XYLegendWidget$RegionEntryComparator;-><init>(Lcom/androidplot/xy/XYLegendWidget$1;)V

    sput-object v0, Lcom/androidplot/xy/XYLegendWidget;->regionEntryComparator:Lcom/androidplot/xy/XYLegendWidget$RegionEntryComparator;

    return-void
.end method

.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/xy/XYPlot;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/TableModel;Lcom/androidplot/ui/Size;)V
    .locals 3
    .param p1, "layoutManager"    # Lcom/androidplot/ui/LayoutManager;
    .param p2, "plot"    # Lcom/androidplot/xy/XYPlot;
    .param p3, "widgetSize"    # Lcom/androidplot/ui/Size;
    .param p4, "tableModel"    # Lcom/androidplot/ui/TableModel;
    .param p5, "iconSize"    # Lcom/androidplot/ui/Size;

    .prologue
    const/4 v2, 0x1

    .line 76
    invoke-direct {p0, p1, p3}, Lcom/androidplot/ui/widget/Widget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;)V

    .line 55
    iput-boolean v2, p0, Lcom/androidplot/xy/XYLegendWidget;->drawIconBackgroundEnabled:Z

    .line 56
    iput-boolean v2, p0, Lcom/androidplot/xy/XYLegendWidget;->drawIconBorderEnabled:Z

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYLegendWidget;->textPaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/androidplot/xy/XYLegendWidget;->textPaint:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v0, p0, Lcom/androidplot/xy/XYLegendWidget;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYLegendWidget;->iconBorderPaint:Landroid/graphics/Paint;

    .line 68
    iget-object v0, p0, Lcom/androidplot/xy/XYLegendWidget;->iconBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iput-object p2, p0, Lcom/androidplot/xy/XYLegendWidget;->plot:Lcom/androidplot/xy/XYPlot;

    .line 78
    invoke-virtual {p0, p4}, Lcom/androidplot/xy/XYLegendWidget;->setTableModel(Lcom/androidplot/ui/TableModel;)V

    .line 79
    iput-object p5, p0, Lcom/androidplot/xy/XYLegendWidget;->iconSize:Lcom/androidplot/ui/Size;

    .line 80
    return-void
.end method

.method private beginDrawingCell(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "iconRect"    # Landroid/graphics/RectF;

    .prologue
    .line 102
    iget-object v1, p0, Lcom/androidplot/xy/XYLegendWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/xy/XYGraphWidget;->getGridBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 103
    .local v0, "bgPaint":Landroid/graphics/Paint;
    iget-boolean v1, p0, Lcom/androidplot/xy/XYLegendWidget;->drawIconBackgroundEnabled:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 106
    :cond_0
    return-void
.end method

.method private drawRegionLegendCell(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYRegionFormatter;Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "formatter"    # Lcom/androidplot/xy/XYRegionFormatter;
    .param p3, "cellRect"    # Landroid/graphics/RectF;
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0, p3}, Lcom/androidplot/xy/XYLegendWidget;->getIconRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 131
    .local v0, "iconRect":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v0}, Lcom/androidplot/xy/XYLegendWidget;->beginDrawingCell(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 133
    invoke-virtual {p0, p1, v0, p2}, Lcom/androidplot/xy/XYLegendWidget;->drawRegionLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYRegionFormatter;)V

    .line 138
    invoke-direct {p0, p1, p3, v0, p4}, Lcom/androidplot/xy/XYLegendWidget;->finishDrawingCell(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method private drawSeriesLegendCell(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYSeriesRenderer;Lcom/androidplot/xy/XYSeriesFormatter;Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "renderer"    # Lcom/androidplot/xy/XYSeriesRenderer;
    .param p3, "formatter"    # Lcom/androidplot/xy/XYSeriesFormatter;
    .param p4, "cellRect"    # Landroid/graphics/RectF;
    .param p5, "seriesTitle"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-direct {p0, p4}, Lcom/androidplot/xy/XYLegendWidget;->getIconRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 143
    .local v0, "iconRect":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v0}, Lcom/androidplot/xy/XYLegendWidget;->beginDrawingCell(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 145
    invoke-virtual {p2, p1, v0, p3}, Lcom/androidplot/xy/XYSeriesRenderer;->drawSeriesLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V

    .line 149
    invoke-direct {p0, p1, p4, v0, p5}, Lcom/androidplot/xy/XYLegendWidget;->finishDrawingCell(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method private finishDrawingCell(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cellRect"    # Landroid/graphics/RectF;
    .param p3, "iconRect"    # Landroid/graphics/RectF;
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 110
    iget-object v2, p0, Lcom/androidplot/xy/XYLegendWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/XYGraphWidget;->getGridBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 111
    .local v0, "bgPaint":Landroid/graphics/Paint;
    iget-boolean v2, p0, Lcom/androidplot/xy/XYLegendWidget;->drawIconBorderEnabled:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 112
    iget-object v2, p0, Lcom/androidplot/xy/XYLegendWidget;->iconBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object v2, p0, Lcom/androidplot/xy/XYLegendWidget;->iconBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 116
    :cond_0
    invoke-static {p2}, Lcom/androidplot/xy/XYLegendWidget;->getRectCenterY(Landroid/graphics/RectF;)F

    move-result v2

    iget-object v3, p0, Lcom/androidplot/xy/XYLegendWidget;->textPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/androidplot/util/FontUtils;->getFontHeight(Landroid/graphics/Paint;)F

    move-result v3

    div-float/2addr v3, v4

    add-float v1, v2, v3

    .line 118
    .local v1, "centeredTextOriginY":F
    iget-object v2, p0, Lcom/androidplot/xy/XYLegendWidget;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint$Align;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    iget v2, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v4

    iget-object v3, p0, Lcom/androidplot/xy/XYLegendWidget;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_1
    iget v2, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v4

    iget-object v3, p0, Lcom/androidplot/xy/XYLegendWidget;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getIconRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 6
    .param p1, "cellRect"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 87
    iget v3, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v5

    add-float v0, v3, v4

    .line 88
    .local v0, "cellRectCenterY":F
    iget-object v3, p0, Lcom/androidplot/xy/XYLegendWidget;->iconSize:Lcom/androidplot/ui/Size;

    invoke-virtual {v3, p1}, Lcom/androidplot/ui/Size;->getRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    .line 91
    .local v2, "iconRect":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v5

    sub-float v1, v0, v3

    .line 92
    .local v1, "centeredIconOriginY":F
    iget v3, p1, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 93
    return-object v2
.end method

.method private static getRectCenterY(Landroid/graphics/RectF;)F
    .locals 3
    .param p0, "cellRect"    # Landroid/graphics/RectF;

    .prologue
    .line 97
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected declared-synchronized doOnDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "widgetRect"    # Landroid/graphics/RectF;

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYLegendWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    :cond_0
    monitor-exit p0

    return-void

    .line 171
    :cond_1
    :try_start_1
    new-instance v14, Ljava/util/TreeSet;

    new-instance v2, Lcom/androidplot/xy/XYLegendWidget$RegionEntryComparator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/androidplot/xy/XYLegendWidget$RegionEntryComparator;-><init>(Lcom/androidplot/xy/XYLegendWidget$1;)V

    invoke-direct {v14, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 174
    .local v14, "sortedRegions":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/util/Map$Entry<Lcom/androidplot/xy/XYRegionFormatter;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYLegendWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYSeriesRegistry;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYSeriesRegistry;->size()I

    move-result v12

    .line 176
    .local v12, "seriesCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYLegendWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getRendererList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/androidplot/xy/XYSeriesRenderer;

    .line 177
    .local v11, "renderer":Lcom/androidplot/xy/XYSeriesRenderer;
    invoke-virtual {v11}, Lcom/androidplot/xy/XYSeriesRenderer;->getUniqueRegionFormatters()Ljava/util/Hashtable;

    move-result-object v15

    .line 178
    .local v15, "urf":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/androidplot/xy/XYRegionFormatter;Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    .end local v11    # "renderer":Lcom/androidplot/xy/XYSeriesRenderer;
    .end local v12    # "seriesCount":I
    .end local v14    # "sortedRegions":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/util/Map$Entry<Lcom/androidplot/xy/XYRegionFormatter;Ljava/lang/String;>;>;"
    .end local v15    # "urf":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/androidplot/xy/XYRegionFormatter;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 181
    .restart local v12    # "seriesCount":I
    .restart local v14    # "sortedRegions":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/util/Map$Entry<Lcom/androidplot/xy/XYRegionFormatter;Ljava/lang/String;>;>;"
    :cond_2
    :try_start_2
    invoke-virtual {v14}, Ljava/util/TreeSet;->size()I

    move-result v2

    add-int/2addr v12, v2

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYLegendWidget;->tableModel:Lcom/androidplot/ui/TableModel;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v12}, Lcom/androidplot/ui/TableModel;->getIterator(Landroid/graphics/RectF;I)Ljava/util/Iterator;

    move-result-object v10

    .line 189
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/graphics/RectF;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYLegendWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYSeriesRegistry;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYSeriesRegistry;->getLegendEnabledItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/androidplot/ui/SeriesBundle;

    .line 191
    .local v13, "sfPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeriesFormatter;>;"
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    .line 192
    .local v6, "cellRect":Landroid/graphics/RectF;
    invoke-virtual {v13}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v5

    check-cast v5, Lcom/androidplot/xy/XYSeriesFormatter;

    .line 193
    .local v5, "format":Lcom/androidplot/xy/XYSeriesFormatter;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidplot/xy/XYLegendWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v13}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYSeriesFormatter;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYSeriesFormatter;->getRendererClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/androidplot/xy/XYPlot;->getRenderer(Ljava/lang/Class;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object v4

    check-cast v4, Lcom/androidplot/xy/XYSeriesRenderer;

    .line 194
    invoke-virtual {v13}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYSeries;

    invoke-interface {v2}, Lcom/androidplot/xy/XYSeries;->getTitle()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 193
    invoke-direct/range {v2 .. v7}, Lcom/androidplot/xy/XYLegendWidget;->drawSeriesLegendCell(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYSeriesRenderer;Lcom/androidplot/xy/XYSeriesFormatter;Landroid/graphics/RectF;Ljava/lang/String;)V

    goto :goto_1

    .line 198
    .end local v5    # "format":Lcom/androidplot/xy/XYSeriesFormatter;
    .end local v6    # "cellRect":Landroid/graphics/RectF;
    .end local v13    # "sfPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeriesFormatter;>;"
    :cond_3
    invoke-virtual {v14}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 199
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/androidplot/xy/XYRegionFormatter;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    .line 203
    .restart local v6    # "cellRect":Landroid/graphics/RectF;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/androidplot/xy/XYRegionFormatter;

    .line 204
    .local v9, "formatter":Lcom/androidplot/xy/XYRegionFormatter;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v6, v2}, Lcom/androidplot/xy/XYLegendWidget;->drawRegionLegendCell(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYRegionFormatter;Landroid/graphics/RectF;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method protected drawRegionLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYRegionFormatter;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "formatter"    # Lcom/androidplot/xy/XYRegionFormatter;

    .prologue
    .line 126
    invoke-virtual {p3}, Lcom/androidplot/xy/XYRegionFormatter;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 127
    return-void
.end method

.method public getIconSize()Lcom/androidplot/ui/Size;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/androidplot/xy/XYLegendWidget;->iconSize:Lcom/androidplot/ui/Size;

    return-object v0
.end method

.method public getTableModel()Lcom/androidplot/ui/TableModel;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/androidplot/xy/XYLegendWidget;->tableModel:Lcom/androidplot/ui/TableModel;

    return-object v0
.end method

.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/androidplot/xy/XYLegendWidget;->textPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public isDrawIconBackgroundEnabled()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/androidplot/xy/XYLegendWidget;->drawIconBackgroundEnabled:Z

    return v0
.end method

.method public isDrawIconBorderEnabled()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/androidplot/xy/XYLegendWidget;->drawIconBorderEnabled:Z

    return v0
.end method

.method public setDrawIconBackgroundEnabled(Z)V
    .locals 0
    .param p1, "drawIconBackgroundEnabled"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/androidplot/xy/XYLegendWidget;->drawIconBackgroundEnabled:Z

    .line 223
    return-void
.end method

.method public setDrawIconBorderEnabled(Z)V
    .locals 0
    .param p1, "drawIconBorderEnabled"    # Z

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/androidplot/xy/XYLegendWidget;->drawIconBorderEnabled:Z

    .line 231
    return-void
.end method

.method public setIconSize(Lcom/androidplot/ui/Size;)V
    .locals 0
    .param p1, "iconSize"    # Lcom/androidplot/ui/Size;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/androidplot/xy/XYLegendWidget;->iconSize:Lcom/androidplot/ui/Size;

    .line 248
    return-void
.end method

.method public declared-synchronized setTableModel(Lcom/androidplot/ui/TableModel;)V
    .locals 1
    .param p1, "tableModel"    # Lcom/androidplot/ui/TableModel;

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYLegendWidget;->tableModel:Lcom/androidplot/ui/TableModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "textPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/androidplot/xy/XYLegendWidget;->textPaint:Landroid/graphics/Paint;

    .line 215
    return-void
.end method
