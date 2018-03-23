.class public Lcom/androidplot/xy/XYPlot;
.super Lcom/androidplot/Plot;
.source "XYPlot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/XYPlot$PreviewMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/Plot",
        "<",
        "Lcom/androidplot/xy/XYSeries;",
        "Lcom/androidplot/xy/XYSeriesFormatter;",
        "Lcom/androidplot/xy/XYSeriesRenderer;",
        "Lcom/androidplot/xy/XYSeriesBundle;",
        "Lcom/androidplot/xy/XYSeriesRegistry;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DOMAIN_LABEL_WIDGET_H_DP:I = 0xa

.field private static final DEFAULT_DOMAIN_LABEL_WIDGET_W_DP:I = 0x50

.field private static final DEFAULT_DOMAIN_LABEL_WIDGET_X_OFFSET_DP:I = 0x14

.field private static final DEFAULT_DOMAIN_LABEL_WIDGET_Y_OFFSET_DP:I = 0x0

.field private static final DEFAULT_GRAPH_WIDGET_H_DP:I = 0x12

.field private static final DEFAULT_GRAPH_WIDGET_W_DP:I = 0xa

.field private static final DEFAULT_GRAPH_WIDGET_X_OFFSET_DP:I = 0x0

.field private static final DEFAULT_GRAPH_WIDGET_Y_OFFSET_DP:I = 0x0

.field private static final DEFAULT_LEGEND_WIDGET_H_DP:I = 0xa

.field private static final DEFAULT_LEGEND_WIDGET_ICON_SIZE_DP:I = 0x7

.field private static final DEFAULT_LEGEND_WIDGET_X_OFFSET_DP:I = 0x28

.field private static final DEFAULT_LEGEND_WIDGET_Y_OFFSET_DP:I = 0x0

.field private static final DEFAULT_PLOT_BOTTOM_MARGIN_DP:I = 0x1

.field private static final DEFAULT_PLOT_LEFT_MARGIN_DP:I = 0x1

.field private static final DEFAULT_PLOT_RIGHT_MARGIN_DP:I = 0x1

.field private static final DEFAULT_PLOT_TOP_MARGIN_DP:I = 0x1

.field private static final DEFAULT_RANGE_LABEL_WIDGET_H_DP:I = 0x32

.field private static final DEFAULT_RANGE_LABEL_WIDGET_W_DP:I = 0xa

.field private static final DEFAULT_RANGE_LABEL_WIDGET_X_OFFSET_DP:I

.field private static final DEFAULT_RANGE_LABEL_WIDGET_Y_OFFSET_DP:I


# instance fields
.field private bounds:Lcom/androidplot/xy/RectRegion;

.field private calculatedOrigin:Lcom/androidplot/xy/XYCoords;

.field private constraints:Lcom/androidplot/xy/XYConstraints;

.field private domainOriginBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

.field private domainOriginExtent:Ljava/lang/Number;

.field private domainStepModel:Lcom/androidplot/xy/StepModel;

.field private domainTitle:Lcom/androidplot/ui/widget/TextLabelWidget;

.field private graph:Lcom/androidplot/xy/XYGraphWidget;

.field private final innerLimits:Lcom/androidplot/xy/RectRegion;

.field private legend:Lcom/androidplot/xy/XYLegendWidget;

.field private final outerLimits:Lcom/androidplot/xy/RectRegion;

.field private prevMaxX:Ljava/lang/Number;

.field private prevMaxY:Ljava/lang/Number;

.field private prevMinX:Ljava/lang/Number;

.field private prevMinY:Ljava/lang/Number;

.field private previewMode:Lcom/androidplot/xy/XYPlot$PreviewMode;

.field private rangeOriginBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

.field private rangeOriginExtent:Ljava/lang/Number;

.field private rangeStepModel:Lcom/androidplot/xy/StepModel;

.field private rangeTitle:Lcom/androidplot/ui/widget/TextLabelWidget;

.field private userDomainOrigin:Ljava/lang/Number;

.field private userRangeOrigin:Ljava/lang/Number;

.field private xValueMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/androidplot/xy/XValueMarker;",
            ">;"
        }
    .end annotation
.end field

.field private yValueMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/androidplot/xy/YValueMarker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    new-instance v0, Lcom/androidplot/xy/XYConstraints;

    invoke-direct {v0}, Lcom/androidplot/xy/XYConstraints;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    .line 87
    new-instance v0, Lcom/androidplot/xy/RectRegion;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/androidplot/xy/RectRegion;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-static {v0}, Lcom/androidplot/xy/RectRegion;->withDefaults(Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    .line 102
    new-instance v0, Lcom/androidplot/xy/RectRegion;

    invoke-direct {v0}, Lcom/androidplot/xy/RectRegion;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->innerLimits:Lcom/androidplot/xy/RectRegion;

    .line 103
    new-instance v0, Lcom/androidplot/xy/RectRegion;

    invoke-direct {v0}, Lcom/androidplot/xy/RectRegion;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->outerLimits:Lcom/androidplot/xy/RectRegion;

    .line 108
    new-instance v0, Lcom/androidplot/xy/XYCoords;

    invoke-direct {v0}, Lcom/androidplot/xy/XYCoords;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->calculatedOrigin:Lcom/androidplot/xy/XYCoords;

    .line 110
    iput-object v5, p0, Lcom/androidplot/xy/XYPlot;->domainOriginExtent:Ljava/lang/Number;

    .line 113
    iput-object v5, p0, Lcom/androidplot/xy/XYPlot;->rangeOriginExtent:Ljava/lang/Number;

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    new-instance v0, Lcom/androidplot/xy/XYConstraints;

    invoke-direct {v0}, Lcom/androidplot/xy/XYConstraints;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    .line 87
    new-instance v0, Lcom/androidplot/xy/RectRegion;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/androidplot/xy/RectRegion;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-static {v0}, Lcom/androidplot/xy/RectRegion;->withDefaults(Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    .line 102
    new-instance v0, Lcom/androidplot/xy/RectRegion;

    invoke-direct {v0}, Lcom/androidplot/xy/RectRegion;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->innerLimits:Lcom/androidplot/xy/RectRegion;

    .line 103
    new-instance v0, Lcom/androidplot/xy/RectRegion;

    invoke-direct {v0}, Lcom/androidplot/xy/RectRegion;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->outerLimits:Lcom/androidplot/xy/RectRegion;

    .line 108
    new-instance v0, Lcom/androidplot/xy/XYCoords;

    invoke-direct {v0}, Lcom/androidplot/xy/XYCoords;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->calculatedOrigin:Lcom/androidplot/xy/XYCoords;

    .line 110
    iput-object v5, p0, Lcom/androidplot/xy/XYPlot;->domainOriginExtent:Ljava/lang/Number;

    .line 113
    iput-object v5, p0, Lcom/androidplot/xy/XYPlot;->rangeOriginExtent:Ljava/lang/Number;

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/androidplot/xy/XYConstraints;

    invoke-direct {v0}, Lcom/androidplot/xy/XYConstraints;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    .line 87
    new-instance v0, Lcom/androidplot/xy/RectRegion;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/androidplot/xy/RectRegion;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-static {v0}, Lcom/androidplot/xy/RectRegion;->withDefaults(Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    .line 102
    new-instance v0, Lcom/androidplot/xy/RectRegion;

    invoke-direct {v0}, Lcom/androidplot/xy/RectRegion;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->innerLimits:Lcom/androidplot/xy/RectRegion;

    .line 103
    new-instance v0, Lcom/androidplot/xy/RectRegion;

    invoke-direct {v0}, Lcom/androidplot/xy/RectRegion;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->outerLimits:Lcom/androidplot/xy/RectRegion;

    .line 108
    new-instance v0, Lcom/androidplot/xy/XYCoords;

    invoke-direct {v0}, Lcom/androidplot/xy/XYCoords;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->calculatedOrigin:Lcom/androidplot/xy/XYCoords;

    .line 110
    iput-object v5, p0, Lcom/androidplot/xy/XYPlot;->domainOriginExtent:Ljava/lang/Number;

    .line 113
    iput-object v5, p0, Lcom/androidplot/xy/XYPlot;->rangeOriginExtent:Ljava/lang/Number;

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/androidplot/Plot$RenderMode;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "mode"    # Lcom/androidplot/Plot$RenderMode;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/androidplot/Plot$RenderMode;)V

    .line 84
    new-instance v0, Lcom/androidplot/xy/XYConstraints;

    invoke-direct {v0}, Lcom/androidplot/xy/XYConstraints;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    .line 87
    new-instance v0, Lcom/androidplot/xy/RectRegion;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/androidplot/xy/RectRegion;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-static {v0}, Lcom/androidplot/xy/RectRegion;->withDefaults(Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    .line 102
    new-instance v0, Lcom/androidplot/xy/RectRegion;

    invoke-direct {v0}, Lcom/androidplot/xy/RectRegion;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->innerLimits:Lcom/androidplot/xy/RectRegion;

    .line 103
    new-instance v0, Lcom/androidplot/xy/RectRegion;

    invoke-direct {v0}, Lcom/androidplot/xy/RectRegion;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->outerLimits:Lcom/androidplot/xy/RectRegion;

    .line 108
    new-instance v0, Lcom/androidplot/xy/XYCoords;

    invoke-direct {v0}, Lcom/androidplot/xy/XYCoords;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->calculatedOrigin:Lcom/androidplot/xy/XYCoords;

    .line 110
    iput-object v5, p0, Lcom/androidplot/xy/XYPlot;->domainOriginExtent:Ljava/lang/Number;

    .line 113
    iput-object v5, p0, Lcom/androidplot/xy/XYPlot;->rangeOriginExtent:Ljava/lang/Number;

    .line 133
    return-void
.end method

.method private applyUserMinMax(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p1, "value"    # Ljava/lang/Number;
    .param p2, "min"    # Ljava/lang/Number;
    .param p3, "max"    # Ljava/lang/Number;

    .prologue
    .line 513
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 516
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    .line 519
    :cond_1
    :goto_1
    return-object p1

    :cond_2
    move-object p1, p2

    .line 513
    goto :goto_0

    :cond_3
    move-object p1, p3

    .line 516
    goto :goto_1
.end method

.method private distance(DD)D
    .locals 3
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 610
    cmpl-double v0, p1, p3

    if-lez v0, :cond_0

    .line 611
    sub-double v0, p1, p3

    .line 613
    :goto_0
    return-wide v0

    :cond_0
    sub-double v0, p3, p1

    goto :goto_0
.end method


# virtual methods
.method public addMarker(Lcom/androidplot/xy/XValueMarker;)Z
    .locals 1
    .param p1, "marker"    # Lcom/androidplot/xy/XValueMarker;

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->xValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->xValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addMarker(Lcom/androidplot/xy/YValueMarker;)Z
    .locals 1
    .param p1, "marker"    # Lcom/androidplot/xy/YValueMarker;

    .prologue
    .line 993
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->yValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    const/4 v0, 0x0

    .line 996
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->yValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public calculateMinMaxVals()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 382
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->isMinXSet()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->prevMinX:Ljava/lang/Number;

    .line 383
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->isMaxXSet()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->prevMaxX:Ljava/lang/Number;

    .line 384
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->isMinYSet()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->prevMinY:Ljava/lang/Number;

    .line 385
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->isMaxYSet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v2

    :cond_0
    iput-object v2, p0, Lcom/androidplot/xy/XYPlot;->prevMaxY:Ljava/lang/Number;

    .line 387
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYConstraints;->getMinX()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/RectRegion;->setMinX(Ljava/lang/Number;)V

    .line 388
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYConstraints;->getMaxX()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/RectRegion;->setMaxX(Ljava/lang/Number;)V

    .line 389
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYConstraints;->getMinY()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/RectRegion;->setMinY(Ljava/lang/Number;)V

    .line 390
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYConstraints;->getMaxY()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/RectRegion;->setMaxY(Ljava/lang/Number;)V

    .line 393
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->isFullyDefined()Z

    move-result v1

    if-nez v1, :cond_4

    .line 395
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/XYSeriesRegistry;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYSeriesRegistry;->getSeriesList()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/androidplot/util/SeriesUtils;->minMax(Lcom/androidplot/xy/XYConstraints;Ljava/util/List;)Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    .line 397
    .local v0, "b":Lcom/androidplot/xy/RectRegion;
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->isMinXSet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 398
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/RectRegion;->setMinX(Ljava/lang/Number;)V

    .line 400
    :cond_1
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->isMaxXSet()Z

    move-result v1

    if-nez v1, :cond_2

    .line 401
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/RectRegion;->setMaxX(Ljava/lang/Number;)V

    .line 404
    :cond_2
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->isMinYSet()Z

    move-result v1

    if-nez v1, :cond_3

    .line 405
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/RectRegion;->setMinY(Ljava/lang/Number;)V

    .line 407
    :cond_3
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->isMaxYSet()Z

    move-result v1

    if-nez v1, :cond_4

    .line 408
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/RectRegion;->setMaxY(Ljava/lang/Number;)V

    .line 415
    .end local v0    # "b":Lcom/androidplot/xy/RectRegion;
    :cond_4
    sget-object v1, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$XYFramingModel:[I

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYConstraints;->getDomainFramingModel()Lcom/androidplot/xy/XYFramingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/XYFramingModel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 429
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Domain Framing Model not yet supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    .line 430
    invoke-virtual {v3}, Lcom/androidplot/xy/XYConstraints;->getDomainFramingModel()Lcom/androidplot/xy/XYFramingModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move-object v1, v2

    .line 382
    goto/16 :goto_0

    :cond_6
    move-object v1, v2

    .line 383
    goto/16 :goto_1

    :cond_7
    move-object v1, v2

    .line 384
    goto/16 :goto_2

    .line 417
    :pswitch_0
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->updateDomainMinMaxForOriginModel()V

    .line 433
    :goto_3
    sget-object v1, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$XYFramingModel:[I

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYConstraints;->getRangeFramingModel()Lcom/androidplot/xy/XYFramingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/XYFramingModel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 448
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Range Framing Model not yet supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    .line 449
    invoke-virtual {v3}, Lcom/androidplot/xy/XYConstraints;->getRangeFramingModel()Lcom/androidplot/xy/XYFramingModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 420
    :pswitch_1
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    .line 421
    invoke-virtual {v2}, Lcom/androidplot/xy/XYConstraints;->getDomainUpperBoundaryMode()Lcom/androidplot/xy/BoundaryMode;

    move-result-object v2

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->prevMaxX:Ljava/lang/Number;

    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v4}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v4

    .line 420
    invoke-virtual {p0, v2, v3, v4}, Lcom/androidplot/xy/XYPlot;->getCalculatedUpperBoundary(Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->innerLimits:Lcom/androidplot/xy/RectRegion;

    .line 422
    invoke-virtual {v3}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v3

    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->outerLimits:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v4}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v4

    .line 420
    invoke-direct {p0, v2, v3, v4}, Lcom/androidplot/xy/XYPlot;->applyUserMinMax(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/RectRegion;->setMaxX(Ljava/lang/Number;)V

    .line 423
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    .line 424
    invoke-virtual {v2}, Lcom/androidplot/xy/XYConstraints;->getDomainLowerBoundaryMode()Lcom/androidplot/xy/BoundaryMode;

    move-result-object v2

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->prevMinX:Ljava/lang/Number;

    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    .line 425
    invoke-virtual {v4}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v4

    .line 423
    invoke-virtual {p0, v2, v3, v4}, Lcom/androidplot/xy/XYPlot;->getCalculatedLowerBoundary(Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->outerLimits:Lcom/androidplot/xy/RectRegion;

    .line 426
    invoke-virtual {v3}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v3

    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->innerLimits:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v4}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v4

    .line 423
    invoke-direct {p0, v2, v3, v4}, Lcom/androidplot/xy/XYPlot;->applyUserMinMax(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/RectRegion;->setMinX(Ljava/lang/Number;)V

    goto :goto_3

    .line 435
    :pswitch_2
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->updateRangeMinMaxForOriginModel()V

    .line 453
    :cond_8
    :goto_4
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->calculatedOrigin:Lcom/androidplot/xy/XYCoords;

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->userDomainOrigin:Ljava/lang/Number;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->userDomainOrigin:Ljava/lang/Number;

    .line 454
    :goto_5
    iput-object v1, v2, Lcom/androidplot/xy/XYCoords;->x:Ljava/lang/Number;

    .line 456
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->calculatedOrigin:Lcom/androidplot/xy/XYCoords;

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->userRangeOrigin:Ljava/lang/Number;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->userRangeOrigin:Ljava/lang/Number;

    .line 457
    :goto_6
    iput-object v1, v2, Lcom/androidplot/xy/XYCoords;->y:Ljava/lang/Number;

    .line 458
    return-void

    .line 438
    :pswitch_3
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/XYSeriesRegistry;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYSeriesRegistry;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 439
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    .line 440
    invoke-virtual {v2}, Lcom/androidplot/xy/XYConstraints;->getRangeUpperBoundaryMode()Lcom/androidplot/xy/BoundaryMode;

    move-result-object v2

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->prevMaxY:Ljava/lang/Number;

    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    .line 441
    invoke-virtual {v4}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v4

    .line 439
    invoke-virtual {p0, v2, v3, v4}, Lcom/androidplot/xy/XYPlot;->getCalculatedUpperBoundary(Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->innerLimits:Lcom/androidplot/xy/RectRegion;

    .line 441
    invoke-virtual {v3}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v3

    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->outerLimits:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v4}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v4

    .line 439
    invoke-direct {p0, v2, v3, v4}, Lcom/androidplot/xy/XYPlot;->applyUserMinMax(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/RectRegion;->setMaxY(Ljava/lang/Number;)V

    .line 442
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    .line 443
    invoke-virtual {v2}, Lcom/androidplot/xy/XYConstraints;->getRangeLowerBoundaryMode()Lcom/androidplot/xy/BoundaryMode;

    move-result-object v2

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->prevMinY:Ljava/lang/Number;

    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    .line 444
    invoke-virtual {v4}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v4

    .line 442
    invoke-virtual {p0, v2, v3, v4}, Lcom/androidplot/xy/XYPlot;->getCalculatedLowerBoundary(Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->outerLimits:Lcom/androidplot/xy/RectRegion;

    .line 444
    invoke-virtual {v3}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v3

    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->innerLimits:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v4}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v4

    .line 442
    invoke-direct {p0, v2, v3, v4}, Lcom/androidplot/xy/XYPlot;->applyUserMinMax(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/RectRegion;->setMinY(Ljava/lang/Number;)V

    goto :goto_4

    .line 453
    :cond_9
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    .line 454
    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v1

    goto :goto_5

    .line 456
    :cond_a
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    .line 457
    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v1

    goto :goto_6

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 433
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public centerOnDomainOrigin(Ljava/lang/Number;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/Number;

    .prologue
    .line 528
    const/4 v0, 0x0

    sget-object v1, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {p0, p1, v0, v1}, Lcom/androidplot/xy/XYPlot;->centerOnDomainOrigin(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 529
    return-void
.end method

.method public centerOnDomainOrigin(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 4
    .param p1, "origin"    # Ljava/lang/Number;
    .param p2, "extent"    # Ljava/lang/Number;
    .param p3, "mode"    # Lcom/androidplot/xy/BoundaryMode;

    .prologue
    .line 540
    if-nez p1, :cond_0

    .line 541
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Origin param cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 543
    :cond_0
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    sget-object v2, Lcom/androidplot/xy/XYFramingModel;->ORIGIN:Lcom/androidplot/xy/XYFramingModel;

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/XYConstraints;->setDomainFramingModel(Lcom/androidplot/xy/XYFramingModel;)V

    .line 544
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setUserDomainOrigin(Ljava/lang/Number;)V

    .line 545
    iput-object p2, p0, Lcom/androidplot/xy/XYPlot;->domainOriginExtent:Ljava/lang/Number;

    .line 546
    iput-object p3, p0, Lcom/androidplot/xy/XYPlot;->domainOriginBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    .line 548
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->domainOriginBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->userDomainOrigin:Ljava/lang/Number;

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->domainOriginExtent:Ljava/lang/Number;

    invoke-virtual {p0, v1, v2, v3}, Lcom/androidplot/xy/XYPlot;->getOriginMinMax(Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Ljava/lang/Number;)[Ljava/lang/Number;

    move-result-object v0

    .line 549
    .local v0, "minMax":[Ljava/lang/Number;
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/XYConstraints;->setMinX(Ljava/lang/Number;)V

    .line 550
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/XYConstraints;->setMaxX(Ljava/lang/Number;)V

    .line 551
    return-void
.end method

.method public centerOnRangeOrigin(Ljava/lang/Number;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/Number;

    .prologue
    .line 559
    const/4 v0, 0x0

    sget-object v1, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {p0, p1, v0, v1}, Lcom/androidplot/xy/XYPlot;->centerOnRangeOrigin(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 560
    return-void
.end method

.method public centerOnRangeOrigin(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 4
    .param p1, "origin"    # Ljava/lang/Number;
    .param p2, "extent"    # Ljava/lang/Number;
    .param p3, "mode"    # Lcom/androidplot/xy/BoundaryMode;

    .prologue
    .line 572
    if-nez p1, :cond_0

    .line 573
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Origin param cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    sget-object v2, Lcom/androidplot/xy/XYFramingModel;->ORIGIN:Lcom/androidplot/xy/XYFramingModel;

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/XYConstraints;->setRangeFramingModel(Lcom/androidplot/xy/XYFramingModel;)V

    .line 576
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setUserRangeOrigin(Ljava/lang/Number;)V

    .line 577
    iput-object p2, p0, Lcom/androidplot/xy/XYPlot;->rangeOriginExtent:Ljava/lang/Number;

    .line 578
    iput-object p3, p0, Lcom/androidplot/xy/XYPlot;->rangeOriginBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    .line 580
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->rangeOriginBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->userRangeOrigin:Ljava/lang/Number;

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->rangeOriginExtent:Ljava/lang/Number;

    invoke-virtual {p0, v1, v2, v3}, Lcom/androidplot/xy/XYPlot;->getOriginMinMax(Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Ljava/lang/Number;)[Ljava/lang/Number;

    move-result-object v0

    .line 581
    .local v0, "minMax":[Ljava/lang/Number;
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/XYConstraints;->setMinY(Ljava/lang/Number;)V

    .line 582
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/XYConstraints;->setMaxY(Ljava/lang/Number;)V

    .line 583
    return-void
.end method

.method public containsPoint(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/xy/XYGraphWidget;->containsPoint(FF)Z

    move-result v0

    return v0
.end method

.method public containsPoint(Landroid/graphics/PointF;)Z
    .locals 2
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 354
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/androidplot/xy/XYPlot;->containsPoint(FF)Z

    move-result v0

    return v0
.end method

.method public getBounds()Lcom/androidplot/xy/RectRegion;
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    return-object v0
.end method

.method protected getCalculatedLowerBoundary(Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p1, "mode"    # Lcom/androidplot/xy/BoundaryMode;
    .param p2, "previousMin"    # Ljava/lang/Number;
    .param p3, "calculatedMin"    # Ljava/lang/Number;

    .prologue
    .line 483
    sget-object v0, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$BoundaryMode:[I

    invoke-virtual {p1}, Lcom/androidplot/xy/BoundaryMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 499
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoundaryMode not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :pswitch_0
    if-eqz p2, :cond_1

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 502
    .end local p2    # "previousMin":Ljava/lang/Number;
    :cond_0
    :goto_0
    return-object p2

    .line 494
    .restart local p2    # "previousMin":Ljava/lang/Number;
    :pswitch_1
    if-eqz p2, :cond_1

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    :cond_1
    :pswitch_2
    move-object p2, p3

    .line 502
    goto :goto_0

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getCalculatedUpperBoundary(Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p1, "mode"    # Lcom/androidplot/xy/BoundaryMode;
    .param p2, "previousMax"    # Ljava/lang/Number;
    .param p3, "calculatedMax"    # Ljava/lang/Number;

    .prologue
    .line 461
    sget-object v0, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$BoundaryMode:[I

    invoke-virtual {p1}, Lcom/androidplot/xy/BoundaryMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 477
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoundaryMode not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :pswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 468
    move-object p3, p2

    .line 479
    :cond_0
    :goto_0
    :pswitch_1
    return-object p3

    .line 472
    :pswitch_2
    if-eqz p2, :cond_0

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 473
    move-object p3, p2

    goto :goto_0

    .line 461
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getDomainOrigin()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->calculatedOrigin:Lcom/androidplot/xy/XYCoords;

    iget-object v0, v0, Lcom/androidplot/xy/XYCoords;->x:Ljava/lang/Number;

    return-object v0
.end method

.method public getDomainStepMode()Lcom/androidplot/xy/StepMode;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->domainStepModel:Lcom/androidplot/xy/StepModel;

    invoke-virtual {v0}, Lcom/androidplot/xy/StepModel;->getMode()Lcom/androidplot/xy/StepMode;

    move-result-object v0

    return-object v0
.end method

.method public getDomainStepModel()Lcom/androidplot/xy/StepModel;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->domainStepModel:Lcom/androidplot/xy/StepModel;

    return-object v0
.end method

.method public getDomainStepValue()D
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->domainStepModel:Lcom/androidplot/xy/StepModel;

    invoke-virtual {v0}, Lcom/androidplot/xy/StepModel;->getValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDomainTitle()Lcom/androidplot/ui/widget/TextLabelWidget;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->domainTitle:Lcom/androidplot/ui/widget/TextLabelWidget;

    return-object v0
.end method

.method public getGraph()Lcom/androidplot/xy/XYGraphWidget;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->graph:Lcom/androidplot/xy/XYGraphWidget;

    return-object v0
.end method

.method public getInnerLimits()Lcom/androidplot/xy/RectRegion;
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->innerLimits:Lcom/androidplot/xy/RectRegion;

    return-object v0
.end method

.method public getLegend()Lcom/androidplot/xy/XYLegendWidget;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->legend:Lcom/androidplot/xy/XYLegendWidget;

    return-object v0
.end method

.method public getLinesPerDomainLabel()I
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->graph:Lcom/androidplot/xy/XYGraphWidget;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYGraphWidget;->getLinesPerDomainLabel()I

    move-result v0

    return v0
.end method

.method public getLinesPerRangeLabel()I
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->graph:Lcom/androidplot/xy/XYGraphWidget;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYGraphWidget;->getLinesPerRangeLabel()I

    move-result v0

    return v0
.end method

.method public getOrigin()Lcom/androidplot/xy/XYCoords;
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->calculatedOrigin:Lcom/androidplot/xy/XYCoords;

    return-object v0
.end method

.method protected getOriginMinMax(Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Ljava/lang/Number;)[Ljava/lang/Number;
    .locals 10
    .param p1, "mode"    # Lcom/androidplot/xy/BoundaryMode;
    .param p2, "origin"    # Ljava/lang/Number;
    .param p3, "extent"    # Ljava/lang/Number;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 593
    sget-object v4, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    if-ne p1, v4, :cond_0

    .line 594
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 595
    .local v2, "o":D
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 596
    .local v0, "e":D
    new-array v4, v5, [Ljava/lang/Number;

    sub-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    add-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v9

    .line 598
    .end local v0    # "e":D
    .end local v2    # "o":D
    :goto_0
    return-object v4

    :cond_0
    new-array v4, v5, [Ljava/lang/Number;

    aput-object v6, v4, v8

    aput-object v6, v4, v9

    goto :goto_0
.end method

.method public getOuterLimits()Lcom/androidplot/xy/RectRegion;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->outerLimits:Lcom/androidplot/xy/RectRegion;

    return-object v0
.end method

.method public getRangeOrigin()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->calculatedOrigin:Lcom/androidplot/xy/XYCoords;

    iget-object v0, v0, Lcom/androidplot/xy/XYCoords;->y:Ljava/lang/Number;

    return-object v0
.end method

.method public getRangeStepMode()Lcom/androidplot/xy/StepMode;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->rangeStepModel:Lcom/androidplot/xy/StepModel;

    invoke-virtual {v0}, Lcom/androidplot/xy/StepModel;->getMode()Lcom/androidplot/xy/StepMode;

    move-result-object v0

    return-object v0
.end method

.method public getRangeStepModel()Lcom/androidplot/xy/StepModel;
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->rangeStepModel:Lcom/androidplot/xy/StepModel;

    return-object v0
.end method

.method public getRangeStepValue()D
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->rangeStepModel:Lcom/androidplot/xy/StepModel;

    invoke-virtual {v0}, Lcom/androidplot/xy/StepModel;->getValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRangeTitle()Lcom/androidplot/ui/widget/TextLabelWidget;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->rangeTitle:Lcom/androidplot/ui/widget/TextLabelWidget;

    return-object v0
.end method

.method protected bridge synthetic getRegistryInstance()Lcom/androidplot/SeriesRegistry;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRegistryInstance()Lcom/androidplot/xy/XYSeriesRegistry;

    move-result-object v0

    return-object v0
.end method

.method protected getRegistryInstance()Lcom/androidplot/xy/XYSeriesRegistry;
    .locals 1

    .prologue
    .line 1107
    new-instance v0, Lcom/androidplot/xy/XYSeriesRegistry;

    invoke-direct {v0}, Lcom/androidplot/xy/XYSeriesRegistry;-><init>()V

    .line 1108
    .local v0, "registry":Lcom/androidplot/xy/XYSeriesRegistry;
    return-object v0
.end method

.method public getXVal(F)Ljava/lang/Number;
    .locals 1
    .param p1, "xPix"    # F

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->getXVal(F)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getXVal(Landroid/graphics/PointF;)Ljava/lang/Number;
    .locals 1
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->getXVal(Landroid/graphics/PointF;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method protected getXValueMarkers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/xy/XValueMarker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->xValueMarkers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getYVal(F)Ljava/lang/Number;
    .locals 1
    .param p1, "yPix"    # F

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->getYVal(F)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getYVal(Landroid/graphics/PointF;)Ljava/lang/Number;
    .locals 1
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->getYVal(Landroid/graphics/PointF;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method protected getYValueMarkers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/xy/YValueMarker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->yValueMarkers:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected notifyListenersBeforeDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 326
    invoke-super {p0, p1}, Lcom/androidplot/Plot;->notifyListenersBeforeDraw(Landroid/graphics/Canvas;)V

    .line 328
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->calculateMinMaxVals()V

    .line 333
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYSeriesRegistry;

    invoke-virtual {v0, p0}, Lcom/androidplot/xy/XYSeriesRegistry;->estimate(Lcom/androidplot/xy/XYPlot;)V

    .line 334
    return-void
.end method

.method protected onAfterConfig()V
    .locals 12

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    sget-object v1, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$XYPlot$PreviewMode:[I

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->previewMode:Lcom/androidplot/xy/XYPlot$PreviewMode;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot$PreviewMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 269
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected preview mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->previewMode:Lcom/androidplot/xy/XYPlot$PreviewMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :pswitch_0
    new-instance v1, Lcom/androidplot/xy/SimpleXYSeries;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->Y_VALS_ONLY:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    const-string v4, "Red"

    invoke-direct {v1, v2, v3, v4}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/util/List;Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;Ljava/lang/String;)V

    new-instance v2, Lcom/androidplot/xy/LineAndPointFormatter;

    const/high16 v3, -0x10000

    .line 245
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/androidplot/xy/PointLabelFormatter;)V

    .line 243
    invoke-virtual {p0, v1, v2}, Lcom/androidplot/xy/XYPlot;->addSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z

    .line 246
    new-instance v1, Lcom/androidplot/xy/SimpleXYSeries;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->Y_VALS_ONLY:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    const-string v4, "Green"

    invoke-direct {v1, v2, v3, v4}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/util/List;Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;Ljava/lang/String;)V

    new-instance v2, Lcom/androidplot/xy/LineAndPointFormatter;

    const v3, -0xff0100

    .line 248
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/androidplot/xy/PointLabelFormatter;)V

    .line 246
    invoke-virtual {p0, v1, v2}, Lcom/androidplot/xy/XYPlot;->addSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z

    .line 249
    new-instance v1, Lcom/androidplot/xy/SimpleXYSeries;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->Y_VALS_ONLY:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    const-string v4, "Blue"

    invoke-direct {v1, v2, v3, v4}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/util/List;Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;Ljava/lang/String;)V

    new-instance v2, Lcom/androidplot/xy/LineAndPointFormatter;

    const v3, -0xffff01

    .line 251
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/androidplot/xy/PointLabelFormatter;)V

    .line 249
    invoke-virtual {p0, v1, v2}, Lcom/androidplot/xy/XYPlot;->addSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 255
    :pswitch_1
    new-instance v0, Lcom/androidplot/xy/CandlestickSeries;

    const/4 v1, 0x6

    new-array v10, v1, [Lcom/androidplot/xy/CandlestickSeries$Item;

    const/4 v11, 0x0

    new-instance v1, Lcom/androidplot/xy/CandlestickSeries$Item;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    invoke-direct/range {v1 .. v9}, Lcom/androidplot/xy/CandlestickSeries$Item;-><init>(DDDD)V

    aput-object v1, v10, v11

    const/4 v11, 0x1

    new-instance v1, Lcom/androidplot/xy/CandlestickSeries$Item;

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    invoke-direct/range {v1 .. v9}, Lcom/androidplot/xy/CandlestickSeries$Item;-><init>(DDDD)V

    aput-object v1, v10, v11

    const/4 v11, 0x2

    new-instance v1, Lcom/androidplot/xy/CandlestickSeries$Item;

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    const-wide/high16 v4, 0x4026000000000000L    # 11.0

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-direct/range {v1 .. v9}, Lcom/androidplot/xy/CandlestickSeries$Item;-><init>(DDDD)V

    aput-object v1, v10, v11

    const/4 v11, 0x3

    new-instance v1, Lcom/androidplot/xy/CandlestickSeries$Item;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x4031000000000000L    # 17.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x402e000000000000L    # 15.0

    invoke-direct/range {v1 .. v9}, Lcom/androidplot/xy/CandlestickSeries$Item;-><init>(DDDD)V

    aput-object v1, v10, v11

    const/4 v11, 0x4

    new-instance v1, Lcom/androidplot/xy/CandlestickSeries$Item;

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    const-wide/high16 v4, 0x4026000000000000L    # 11.0

    const-wide/high16 v6, 0x4026000000000000L    # 11.0

    const-wide/high16 v8, 0x401c000000000000L    # 7.0

    invoke-direct/range {v1 .. v9}, Lcom/androidplot/xy/CandlestickSeries$Item;-><init>(DDDD)V

    aput-object v1, v10, v11

    const/4 v11, 0x5

    new-instance v1, Lcom/androidplot/xy/CandlestickSeries$Item;

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, 0x402e000000000000L    # 15.0

    invoke-direct/range {v1 .. v9}, Lcom/androidplot/xy/CandlestickSeries$Item;-><init>(DDDD)V

    aput-object v1, v10, v11

    invoke-direct {v0, v10}, Lcom/androidplot/xy/CandlestickSeries;-><init>([Lcom/androidplot/xy/CandlestickSeries$Item;)V

    .line 262
    .local v0, "candlestickSeries":Lcom/androidplot/xy/CandlestickSeries;
    new-instance v1, Lcom/androidplot/xy/CandlestickFormatter;

    invoke-direct {v1}, Lcom/androidplot/xy/CandlestickFormatter;-><init>()V

    invoke-static {p0, v1, v0}, Lcom/androidplot/xy/CandlestickMaker;->make(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/CandlestickFormatter;Lcom/androidplot/xy/CandlestickSeries;)V

    goto :goto_0

    .line 266
    .end local v0    # "candlestickSeries":Lcom/androidplot/xy/CandlestickSeries;
    :pswitch_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Not yet implemented."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPreInit()V
    .locals 10

    .prologue
    .line 146
    new-instance v0, Lcom/androidplot/xy/XYLegendWidget;

    .line 147
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v1

    new-instance v3, Lcom/androidplot/ui/Size;

    const/high16 v2, 0x41200000    # 10.0f

    .line 150
    invoke-static {v2}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v2

    sget-object v4, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    const/high16 v5, 0x3f000000    # 0.5f

    sget-object v7, Lcom/androidplot/ui/SizeMode;->RELATIVE:Lcom/androidplot/ui/SizeMode;

    invoke-direct {v3, v2, v4, v5, v7}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    new-instance v4, Lcom/androidplot/ui/DynamicTableModel;

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Lcom/androidplot/ui/DynamicTableModel;-><init>(II)V

    new-instance v5, Lcom/androidplot/ui/Size;

    const/high16 v2, 0x40e00000    # 7.0f

    .line 154
    invoke-static {v2}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v2

    sget-object v7, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    const/high16 v8, 0x40e00000    # 7.0f

    .line 156
    invoke-static {v8}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v8

    sget-object v9, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    invoke-direct {v5, v2, v7, v8, v9}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/androidplot/xy/XYLegendWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/xy/XYPlot;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/TableModel;Lcom/androidplot/ui/Size;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->legend:Lcom/androidplot/xy/XYLegendWidget;

    .line 159
    new-instance v0, Lcom/androidplot/xy/XYGraphWidget;

    .line 160
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v1

    new-instance v2, Lcom/androidplot/ui/Size;

    const/high16 v3, 0x41900000    # 18.0f

    .line 163
    invoke-static {v3}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/SizeMode;->FILL:Lcom/androidplot/ui/SizeMode;

    const/high16 v5, 0x41200000    # 10.0f

    .line 165
    invoke-static {v5}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v5

    sget-object v7, Lcom/androidplot/ui/SizeMode;->FILL:Lcom/androidplot/ui/SizeMode;

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/androidplot/xy/XYGraphWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/xy/XYPlot;Lcom/androidplot/ui/Size;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->graph:Lcom/androidplot/xy/XYGraphWidget;

    .line 168
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 169
    .local v6, "backgroundPaint":Landroid/graphics/Paint;
    const v0, -0xbbbbbc

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 171
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->graph:Lcom/androidplot/xy/XYGraphWidget;

    invoke-virtual {v0, v6}, Lcom/androidplot/xy/XYGraphWidget;->setBackgroundPaint(Landroid/graphics/Paint;)V

    .line 174
    new-instance v0, Lcom/androidplot/ui/widget/TextLabelWidget;

    .line 175
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v1

    new-instance v2, Lcom/androidplot/ui/Size;

    const/high16 v3, 0x41200000    # 10.0f

    .line 177
    invoke-static {v3}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    const/high16 v5, 0x42a00000    # 80.0f

    .line 179
    invoke-static {v5}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v5

    sget-object v7, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    sget-object v3, Lcom/androidplot/ui/TextOrientation;->HORIZONTAL:Lcom/androidplot/ui/TextOrientation;

    invoke-direct {v0, v1, v2, v3}, Lcom/androidplot/ui/widget/TextLabelWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/TextOrientation;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->domainTitle:Lcom/androidplot/ui/widget/TextLabelWidget;

    .line 182
    new-instance v0, Lcom/androidplot/ui/widget/TextLabelWidget;

    .line 183
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v1

    new-instance v2, Lcom/androidplot/ui/Size;

    const/high16 v3, 0x42480000    # 50.0f

    .line 185
    invoke-static {v3}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    const/high16 v5, 0x41200000    # 10.0f

    .line 187
    invoke-static {v5}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v5

    sget-object v7, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    sget-object v3, Lcom/androidplot/ui/TextOrientation;->VERTICAL_ASCENDING:Lcom/androidplot/ui/TextOrientation;

    invoke-direct {v0, v1, v2, v3}, Lcom/androidplot/ui/widget/TextLabelWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/TextOrientation;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->rangeTitle:Lcom/androidplot/ui/widget/TextLabelWidget;

    .line 191
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->legend:Lcom/androidplot/xy/XYLegendWidget;

    const/high16 v1, 0x42200000    # 40.0f

    .line 192
    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    sget-object v2, Lcom/androidplot/ui/HorizontalPositioning;->ABSOLUTE_FROM_RIGHT:Lcom/androidplot/ui/HorizontalPositioning;

    const/4 v3, 0x0

    .line 194
    invoke-static {v3}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_BOTTOM:Lcom/androidplot/ui/VerticalPositioning;

    sget-object v5, Lcom/androidplot/ui/Anchor;->RIGHT_BOTTOM:Lcom/androidplot/ui/Anchor;

    .line 191
    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/XYLegendWidget;->position(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;Lcom/androidplot/ui/Anchor;)V

    .line 198
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->graph:Lcom/androidplot/xy/XYGraphWidget;

    const/4 v1, 0x0

    .line 199
    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    sget-object v2, Lcom/androidplot/ui/HorizontalPositioning;->ABSOLUTE_FROM_RIGHT:Lcom/androidplot/ui/HorizontalPositioning;

    const/4 v3, 0x0

    .line 201
    invoke-static {v3}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_CENTER:Lcom/androidplot/ui/VerticalPositioning;

    sget-object v5, Lcom/androidplot/ui/Anchor;->RIGHT_MIDDLE:Lcom/androidplot/ui/Anchor;

    .line 198
    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/XYGraphWidget;->position(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;Lcom/androidplot/ui/Anchor;)V

    .line 205
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->domainTitle:Lcom/androidplot/ui/widget/TextLabelWidget;

    const/high16 v1, 0x41a00000    # 20.0f

    .line 206
    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    sget-object v2, Lcom/androidplot/ui/HorizontalPositioning;->ABSOLUTE_FROM_LEFT:Lcom/androidplot/ui/HorizontalPositioning;

    const/4 v3, 0x0

    .line 208
    invoke-static {v3}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_BOTTOM:Lcom/androidplot/ui/VerticalPositioning;

    sget-object v5, Lcom/androidplot/ui/Anchor;->LEFT_BOTTOM:Lcom/androidplot/ui/Anchor;

    .line 205
    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/ui/widget/TextLabelWidget;->position(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;Lcom/androidplot/ui/Anchor;)V

    .line 212
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->rangeTitle:Lcom/androidplot/ui/widget/TextLabelWidget;

    const/4 v1, 0x0

    .line 213
    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    sget-object v2, Lcom/androidplot/ui/HorizontalPositioning;->ABSOLUTE_FROM_LEFT:Lcom/androidplot/ui/HorizontalPositioning;

    const/4 v3, 0x0

    .line 215
    invoke-static {v3}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_CENTER:Lcom/androidplot/ui/VerticalPositioning;

    sget-object v5, Lcom/androidplot/ui/Anchor;->LEFT_MIDDLE:Lcom/androidplot/ui/Anchor;

    .line 212
    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/ui/widget/TextLabelWidget;->position(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;Lcom/androidplot/ui/Anchor;)V

    .line 219
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/ui/LayoutManager;->moveToTop(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLegend()Lcom/androidplot/xy/XYLegendWidget;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/ui/LayoutManager;->moveToTop(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDomainTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 223
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRangeTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 224
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYPlot;->setPlotMarginLeft(F)V

    .line 225
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYPlot;->setPlotMarginRight(F)V

    .line 226
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYPlot;->setPlotMarginTop(F)V

    .line 227
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYPlot;->setPlotMarginBottom(F)V

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->xValueMarkers:Ljava/util/ArrayList;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->yValueMarkers:Ljava/util/ArrayList;

    .line 232
    new-instance v0, Lcom/androidplot/xy/StepModel;

    sget-object v1, Lcom/androidplot/xy/StepMode;->SUBDIVIDE:Lcom/androidplot/xy/StepMode;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-direct {v0, v1, v2, v3}, Lcom/androidplot/xy/StepModel;-><init>(Lcom/androidplot/xy/StepMode;D)V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->domainStepModel:Lcom/androidplot/xy/StepModel;

    .line 233
    new-instance v0, Lcom/androidplot/xy/StepModel;

    sget-object v1, Lcom/androidplot/xy/StepMode;->SUBDIVIDE:Lcom/androidplot/xy/StepMode;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-direct {v0, v1, v2, v3}, Lcom/androidplot/xy/StepModel;-><init>(Lcom/androidplot/xy/StepMode;D)V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->rangeStepModel:Lcom/androidplot/xy/StepModel;

    .line 234
    return-void
.end method

.method protected processAttrs(Landroid/content/res/TypedArray;)V
    .locals 14
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 276
    invoke-static {}, Lcom/androidplot/xy/XYPlot$PreviewMode;->values()[Lcom/androidplot/xy/XYPlot$PreviewMode;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->xy_XYPlot_previewMode:I

    sget-object v2, Lcom/androidplot/xy/XYPlot$PreviewMode;->LineAndPoint:Lcom/androidplot/xy/XYPlot$PreviewMode;

    .line 277
    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot$PreviewMode;->ordinal()I

    move-result v2

    .line 276
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->previewMode:Lcom/androidplot/xy/XYPlot$PreviewMode;

    .line 279
    sget v0, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitle:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 280
    .local v12, "domainLabelAttr":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDomainTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/androidplot/ui/widget/TextLabelWidget;->setText(Ljava/lang/String;)V

    .line 284
    :cond_0
    sget v0, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitle:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 285
    .local v13, "rangeLabelAttr":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRangeTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/androidplot/ui/widget/TextLabelWidget;->setText(Ljava/lang/String;)V

    .line 289
    :cond_1
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDomainStepModel()Lcom/androidplot/xy/StepModel;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->xy_XYPlot_domainStepMode:I

    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_domainStep:I

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/util/AttrUtils;->configureStep(Landroid/content/res/TypedArray;Lcom/androidplot/xy/StepModel;II)V

    .line 292
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRangeStepModel()Lcom/androidplot/xy/StepModel;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeStepMode:I

    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeStep:I

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/util/AttrUtils;->configureStep(Landroid/content/res/TypedArray;Lcom/androidplot/xy/StepModel;II)V

    .line 296
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDomainTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/widget/TextLabelWidget;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleTextColor:I

    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleTextSize:I

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/util/AttrUtils;->configureTextPaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;II)V

    .line 300
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRangeTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/widget/TextLabelWidget;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleTextColor:I

    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleTextSize:I

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/util/AttrUtils;->configureTextPaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;II)V

    .line 304
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLegend()Lcom/androidplot/xy/XYLegendWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/XYLegendWidget;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->xy_XYPlot_legendTextColor:I

    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_legendTextSize:I

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/util/AttrUtils;->configureTextPaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;II)V

    .line 309
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLegend()Lcom/androidplot/xy/XYLegendWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/XYLegendWidget;->getIconSize()Lcom/androidplot/ui/Size;

    move-result-object v1

    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_legendIconHeightMode:I

    sget v3, Lcom/androidplot/R$styleable;->xy_XYPlot_legendIconHeight:I

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_legendIconWidthMode:I

    sget v5, Lcom/androidplot/R$styleable;->xy_XYPlot_legendIconWidth:I

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/androidplot/util/AttrUtils;->configureSize(Landroid/content/res/TypedArray;Lcom/androidplot/ui/Size;IIII)V

    .line 314
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLegend()Lcom/androidplot/xy/XYLegendWidget;

    move-result-object v1

    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_legendHeightMode:I

    sget v3, Lcom/androidplot/R$styleable;->xy_XYPlot_legendHeight:I

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_legendWidthMode:I

    sget v5, Lcom/androidplot/R$styleable;->xy_XYPlot_legendWidth:I

    sget v6, Lcom/androidplot/R$styleable;->xy_XYPlot_legendHorizontalPositioning:I

    sget v7, Lcom/androidplot/R$styleable;->xy_XYPlot_legendHorizontalPosition:I

    sget v8, Lcom/androidplot/R$styleable;->xy_XYPlot_legendVerticalPositioning:I

    sget v9, Lcom/androidplot/R$styleable;->xy_XYPlot_legendVerticalPosition:I

    sget v10, Lcom/androidplot/R$styleable;->xy_XYPlot_legendAnchor:I

    sget v11, Lcom/androidplot/R$styleable;->xy_XYPlot_legendVisible:I

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/androidplot/util/AttrUtils;->configureWidget(Landroid/content/res/TypedArray;Lcom/androidplot/ui/widget/Widget;IIIIIIIIII)V

    .line 321
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->processAttrs(Landroid/content/res/TypedArray;)V

    .line 322
    return-void
.end method

.method public removeMarker(Lcom/androidplot/xy/XValueMarker;)Lcom/androidplot/xy/XValueMarker;
    .locals 2
    .param p1, "marker"    # Lcom/androidplot/xy/XValueMarker;

    .prologue
    .line 1054
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->xValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1055
    .local v0, "markerIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1056
    const/4 v1, 0x0

    .line 1058
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->xValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/XValueMarker;

    goto :goto_0
.end method

.method public removeMarker(Lcom/androidplot/xy/YValueMarker;)Lcom/androidplot/xy/YValueMarker;
    .locals 2
    .param p1, "marker"    # Lcom/androidplot/xy/YValueMarker;

    .prologue
    .line 1007
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->yValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1008
    .local v0, "markerIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1009
    const/4 v1, 0x0

    .line 1011
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->yValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/YValueMarker;

    goto :goto_0
.end method

.method public removeMarkers()I
    .locals 2

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->removeXMarkers()I

    move-result v0

    .line 1022
    .local v0, "removed":I
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->removeYMarkers()I

    move-result v1

    add-int/2addr v0, v1

    .line 1023
    return v0
.end method

.method public removeXMarkers()I
    .locals 2

    .prologue
    .line 1068
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->xValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1069
    .local v0, "numMarkersRemoved":I
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->xValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1070
    return v0
.end method

.method public removeYMarkers()I
    .locals 2

    .prologue
    .line 1032
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->yValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1033
    .local v0, "numMarkersRemoved":I
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->yValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1034
    return v0
.end method

.method public setCursorPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/xy/XYGraphWidget;->setCursorPosition(FF)V

    .line 363
    return-void
.end method

.method public setCursorPosition(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->setCursorPosition(Landroid/graphics/PointF;)V

    .line 359
    return-void
.end method

.method public declared-synchronized setDomainBoundaries(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1
    .param p1, "lowerBoundary"    # Ljava/lang/Number;
    .param p2, "lowerBoundaryMode"    # Lcom/androidplot/xy/BoundaryMode;
    .param p3, "upperBoundary"    # Ljava/lang/Number;
    .param p4, "upperBoundaryMode"    # Lcom/androidplot/xy/BoundaryMode;

    .prologue
    .line 832
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/XYPlot;->setDomainLowerBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 833
    invoke-virtual {p0, p3, p4}, Lcom/androidplot/xy/XYPlot;->setDomainUpperBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    monitor-exit p0

    return-void

    .line 832
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDomainBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1
    .param p1, "lowerBoundary"    # Ljava/lang/Number;
    .param p2, "upperBoundary"    # Ljava/lang/Number;
    .param p3, "mode"    # Lcom/androidplot/xy/BoundaryMode;

    .prologue
    .line 819
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p3, p2, p3}, Lcom/androidplot/xy/XYPlot;->setDomainBoundaries(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    monitor-exit p0

    return-void

    .line 819
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setDomainFramingModel(Lcom/androidplot/xy/XYFramingModel;)V
    .locals 1
    .param p1, "model"    # Lcom/androidplot/xy/XYFramingModel;

    .prologue
    .line 969
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYConstraints;->setDomainFramingModel(Lcom/androidplot/xy/XYFramingModel;)V

    .line 970
    return-void
.end method

.method public setDomainLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "domainLabel"    # Ljava/lang/String;

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDomainTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/widget/TextLabelWidget;->setText(Ljava/lang/String;)V

    .line 797
    return-void
.end method

.method public declared-synchronized setDomainLowerBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1
    .param p1, "boundary"    # Ljava/lang/Number;
    .param p2, "mode"    # Lcom/androidplot/xy/BoundaryMode;

    .prologue
    .line 896
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    if-ne p2, v0, :cond_0

    .end local p1    # "boundary":Ljava/lang/Number;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setUserMinX(Ljava/lang/Number;)V

    .line 897
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYPlot;->setDomainLowerBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V

    .line 898
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYPlot;->setDomainFramingModel(Lcom/androidplot/xy/XYFramingModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 899
    monitor-exit p0

    return-void

    .line 896
    .restart local p1    # "boundary":Ljava/lang/Number;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .end local p1    # "boundary":Ljava/lang/Number;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setDomainLowerBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/androidplot/xy/BoundaryMode;

    .prologue
    .line 882
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYConstraints;->setDomainLowerBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 883
    monitor-exit p0

    return-void

    .line 882
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDomainStep(Lcom/androidplot/xy/StepMode;D)V
    .locals 0
    .param p1, "mode"    # Lcom/androidplot/xy/StepMode;
    .param p2, "value"    # D

    .prologue
    .line 746
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setDomainStepMode(Lcom/androidplot/xy/StepMode;)V

    .line 747
    invoke-virtual {p0, p2, p3}, Lcom/androidplot/xy/XYPlot;->setDomainStepValue(D)V

    .line 748
    return-void
.end method

.method public setDomainStepMode(Lcom/androidplot/xy/StepMode;)V
    .locals 1
    .param p1, "domainStepMode"    # Lcom/androidplot/xy/StepMode;

    .prologue
    .line 734
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->domainStepModel:Lcom/androidplot/xy/StepModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/StepModel;->setMode(Lcom/androidplot/xy/StepMode;)V

    .line 735
    return-void
.end method

.method public setDomainStepModel(Lcom/androidplot/xy/StepModel;)V
    .locals 0
    .param p1, "domainStepModel"    # Lcom/androidplot/xy/StepModel;

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->domainStepModel:Lcom/androidplot/xy/StepModel;

    .line 1095
    return-void
.end method

.method public setDomainStepValue(D)V
    .locals 1
    .param p1, "domainStepValue"    # D

    .prologue
    .line 742
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->domainStepModel:Lcom/androidplot/xy/StepModel;

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/xy/StepModel;->setValue(D)V

    .line 743
    return-void
.end method

.method public setDomainTitle(Lcom/androidplot/ui/widget/TextLabelWidget;)V
    .locals 0
    .param p1, "domainTitle"    # Lcom/androidplot/ui/widget/TextLabelWidget;

    .prologue
    .line 792
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->domainTitle:Lcom/androidplot/ui/widget/TextLabelWidget;

    .line 793
    return-void
.end method

.method public declared-synchronized setDomainUpperBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1
    .param p1, "boundary"    # Ljava/lang/Number;
    .param p2, "mode"    # Lcom/androidplot/xy/BoundaryMode;

    .prologue
    .line 876
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    if-ne p2, v0, :cond_0

    .end local p1    # "boundary":Ljava/lang/Number;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setUserMaxX(Ljava/lang/Number;)V

    .line 877
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYPlot;->setDomainUpperBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V

    .line 878
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYPlot;->setDomainFramingModel(Lcom/androidplot/xy/XYFramingModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    monitor-exit p0

    return-void

    .line 876
    .restart local p1    # "boundary":Ljava/lang/Number;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .end local p1    # "boundary":Ljava/lang/Number;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setDomainUpperBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/androidplot/xy/BoundaryMode;

    .prologue
    .line 862
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYConstraints;->setDomainUpperBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    monitor-exit p0

    return-void

    .line 862
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setGraph(Lcom/androidplot/xy/XYGraphWidget;)V
    .locals 0
    .param p1, "graph"    # Lcom/androidplot/xy/XYGraphWidget;

    .prologue
    .line 784
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->graph:Lcom/androidplot/xy/XYGraphWidget;

    .line 785
    return-void
.end method

.method public setLegend(Lcom/androidplot/xy/XYLegendWidget;)V
    .locals 0
    .param p1, "legend"    # Lcom/androidplot/xy/XYLegendWidget;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->legend:Lcom/androidplot/xy/XYLegendWidget;

    .line 777
    return-void
.end method

.method public setLinesPerDomainLabel(I)V
    .locals 1
    .param p1, "linesPerDomainLabel"    # I

    .prologue
    .line 726
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->graph:Lcom/androidplot/xy/XYGraphWidget;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->setLinesPerDomainLabel(I)V

    .line 727
    return-void
.end method

.method public setLinesPerRangeLabel(I)V
    .locals 1
    .param p1, "linesPerLabel"    # I

    .prologue
    .line 706
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->graph:Lcom/androidplot/xy/XYGraphWidget;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->setLinesPerRangeLabel(I)V

    .line 707
    return-void
.end method

.method public declared-synchronized setRangeBoundaries(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1
    .param p1, "lowerBoundary"    # Ljava/lang/Number;
    .param p2, "lowerBoundaryMode"    # Lcom/androidplot/xy/BoundaryMode;
    .param p3, "upperBoundary"    # Ljava/lang/Number;
    .param p4, "upperBoundaryMode"    # Lcom/androidplot/xy/BoundaryMode;

    .prologue
    .line 857
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/XYPlot;->setRangeLowerBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 858
    invoke-virtual {p0, p3, p4}, Lcom/androidplot/xy/XYPlot;->setRangeUpperBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 859
    monitor-exit p0

    return-void

    .line 857
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRangeBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1
    .param p1, "lowerBoundary"    # Ljava/lang/Number;
    .param p2, "upperBoundary"    # Ljava/lang/Number;
    .param p3, "mode"    # Lcom/androidplot/xy/BoundaryMode;

    .prologue
    .line 844
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p3, p2, p3}, Lcom/androidplot/xy/XYPlot;->setRangeBoundaries(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    monitor-exit p0

    return-void

    .line 844
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setRangeFramingModel(Lcom/androidplot/xy/XYFramingModel;)V
    .locals 1
    .param p1, "model"    # Lcom/androidplot/xy/XYFramingModel;

    .prologue
    .line 974
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYConstraints;->setRangeFramingModel(Lcom/androidplot/xy/XYFramingModel;)V

    .line 975
    return-void
.end method

.method public setRangeLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "rangeLabel"    # Ljava/lang/String;

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRangeTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/widget/TextLabelWidget;->setText(Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method public declared-synchronized setRangeLowerBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1
    .param p1, "boundary"    # Ljava/lang/Number;
    .param p2, "mode"    # Lcom/androidplot/xy/BoundaryMode;

    .prologue
    .line 936
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    if-ne p2, v0, :cond_0

    .end local p1    # "boundary":Ljava/lang/Number;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setUserMinY(Ljava/lang/Number;)V

    .line 937
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYPlot;->setRangeLowerBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V

    .line 938
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYPlot;->setRangeFramingModel(Lcom/androidplot/xy/XYFramingModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    monitor-exit p0

    return-void

    .line 936
    .restart local p1    # "boundary":Ljava/lang/Number;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .end local p1    # "boundary":Ljava/lang/Number;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setRangeLowerBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/androidplot/xy/BoundaryMode;

    .prologue
    .line 922
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYConstraints;->setRangeLowerBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    monitor-exit p0

    return-void

    .line 922
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRangeStep(Lcom/androidplot/xy/StepMode;D)V
    .locals 0
    .param p1, "mode"    # Lcom/androidplot/xy/StepMode;
    .param p2, "value"    # D

    .prologue
    .line 767
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setRangeStepMode(Lcom/androidplot/xy/StepMode;)V

    .line 768
    invoke-virtual {p0, p2, p3}, Lcom/androidplot/xy/XYPlot;->setRangeStepValue(D)V

    .line 769
    return-void
.end method

.method public setRangeStepMode(Lcom/androidplot/xy/StepMode;)V
    .locals 1
    .param p1, "rangeStepMode"    # Lcom/androidplot/xy/StepMode;

    .prologue
    .line 755
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->rangeStepModel:Lcom/androidplot/xy/StepModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/StepModel;->setMode(Lcom/androidplot/xy/StepMode;)V

    .line 756
    return-void
.end method

.method public setRangeStepModel(Lcom/androidplot/xy/StepModel;)V
    .locals 0
    .param p1, "rangeStepModel"    # Lcom/androidplot/xy/StepModel;

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->rangeStepModel:Lcom/androidplot/xy/StepModel;

    .line 1103
    return-void
.end method

.method public setRangeStepValue(D)V
    .locals 1
    .param p1, "rangeStepValue"    # D

    .prologue
    .line 763
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->rangeStepModel:Lcom/androidplot/xy/StepModel;

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/xy/StepModel;->setValue(D)V

    .line 764
    return-void
.end method

.method public setRangeTitle(Lcom/androidplot/ui/widget/TextLabelWidget;)V
    .locals 0
    .param p1, "rangeTitle"    # Lcom/androidplot/ui/widget/TextLabelWidget;

    .prologue
    .line 804
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->rangeTitle:Lcom/androidplot/ui/widget/TextLabelWidget;

    .line 805
    return-void
.end method

.method public declared-synchronized setRangeUpperBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1
    .param p1, "boundary"    # Ljava/lang/Number;
    .param p2, "mode"    # Lcom/androidplot/xy/BoundaryMode;

    .prologue
    .line 916
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    if-ne p2, v0, :cond_0

    .end local p1    # "boundary":Ljava/lang/Number;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setUserMaxY(Ljava/lang/Number;)V

    .line 917
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYPlot;->setRangeUpperBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V

    .line 918
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYPlot;->setRangeFramingModel(Lcom/androidplot/xy/XYFramingModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    monitor-exit p0

    return-void

    .line 916
    .restart local p1    # "boundary":Ljava/lang/Number;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .end local p1    # "boundary":Ljava/lang/Number;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setRangeUpperBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/androidplot/xy/BoundaryMode;

    .prologue
    .line 902
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYConstraints;->setRangeUpperBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    monitor-exit p0

    return-void

    .line 902
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserDomainOrigin(Ljava/lang/Number;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/Number;

    .prologue
    .line 954
    monitor-enter p0

    if-nez p1, :cond_0

    .line 955
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Origin value cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 957
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->userDomainOrigin:Ljava/lang/Number;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 958
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized setUserMaxX(Ljava/lang/Number;)V
    .locals 1
    .param p1, "maxX"    # Ljava/lang/Number;

    .prologue
    .line 866
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYConstraints;->setMaxX(Ljava/lang/Number;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    monitor-exit p0

    return-void

    .line 866
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setUserMaxY(Ljava/lang/Number;)V
    .locals 1
    .param p1, "maxY"    # Ljava/lang/Number;

    .prologue
    .line 906
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYConstraints;->setMaxY(Ljava/lang/Number;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    monitor-exit p0

    return-void

    .line 906
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setUserMinX(Ljava/lang/Number;)V
    .locals 1
    .param p1, "minX"    # Ljava/lang/Number;

    .prologue
    .line 886
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYConstraints;->setMinX(Ljava/lang/Number;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    monitor-exit p0

    return-void

    .line 886
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setUserMinY(Ljava/lang/Number;)V
    .locals 1
    .param p1, "minY"    # Ljava/lang/Number;

    .prologue
    .line 926
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYConstraints;->setMinY(Ljava/lang/Number;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    monitor-exit p0

    return-void

    .line 926
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserRangeOrigin(Ljava/lang/Number;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/Number;

    .prologue
    .line 961
    monitor-enter p0

    if-nez p1, :cond_0

    .line 962
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Origin value cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 964
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->userRangeOrigin:Ljava/lang/Number;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 965
    monitor-exit p0

    return-void
.end method

.method public updateDomainMinMaxForOriginModel()V
    .locals 15

    .prologue
    .line 618
    iget-object v12, p0, Lcom/androidplot/xy/XYPlot;->userDomainOrigin:Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    .line 619
    .local v10, "origin":D
    iget-object v12, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v12}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    invoke-direct {p0, v12, v13, v10, v11}, Lcom/androidplot/xy/XYPlot;->distance(DD)D

    move-result-wide v6

    .line 620
    .local v6, "maxXDelta":D
    iget-object v12, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v12}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    invoke-direct {p0, v12, v13, v10, v11}, Lcom/androidplot/xy/XYPlot;->distance(DD)D

    move-result-wide v8

    .line 621
    .local v8, "minXDelta":D
    cmpl-double v12, v6, v8

    if-lez v12, :cond_0

    move-wide v0, v6

    .line 622
    .local v0, "delta":D
    :goto_0
    sub-double v2, v10, v0

    .line 623
    .local v2, "dlb":D
    add-double v4, v10, v0

    .line 624
    .local v4, "dub":D
    sget-object v12, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$BoundaryMode:[I

    iget-object v13, p0, Lcom/androidplot/xy/XYPlot;->domainOriginBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v13}, Lcom/androidplot/xy/BoundaryMode;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 662
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Domain Origin Boundary Mode not yet supported: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/androidplot/xy/XYPlot;->domainOriginBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    .end local v0    # "delta":D
    .end local v2    # "dlb":D
    .end local v4    # "dub":D
    :cond_0
    move-wide v0, v8

    .line 621
    goto :goto_0

    .line 626
    .restart local v0    # "delta":D
    .restart local v2    # "dlb":D
    .restart local v4    # "dub":D
    :pswitch_0
    iget-object v12, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/androidplot/xy/RectRegion;->setMinX(Ljava/lang/Number;)V

    .line 627
    iget-object v12, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/androidplot/xy/RectRegion;->setMaxX(Ljava/lang/Number;)V

    .line 664
    :goto_1
    :pswitch_1
    return-void

    .line 635
    :pswitch_2
    iget-object v12, p0, Lcom/androidplot/xy/XYPlot;->prevMinX:Ljava/lang/Number;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/androidplot/xy/XYPlot;->prevMinX:Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    cmpg-double v12, v2, v12

    if-gez v12, :cond_3

    .line 636
    :cond_1
    iget-object v12, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/androidplot/xy/RectRegion;->setMinX(Ljava/lang/Number;)V

    .line 641
    :goto_2
    iget-object v12, p0, Lcom/androidplot/xy/XYPlot;->prevMaxX:Ljava/lang/Number;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/androidplot/xy/XYPlot;->prevMaxX:Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    cmpl-double v12, v4, v12

    if-lez v12, :cond_4

    .line 642
    :cond_2
    iget-object v12, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/androidplot/xy/RectRegion;->setMaxX(Ljava/lang/Number;)V

    goto :goto_1

    .line 638
    :cond_3
    iget-object v12, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v13, p0, Lcom/androidplot/xy/XYPlot;->prevMinX:Ljava/lang/Number;

    invoke-virtual {v12, v13}, Lcom/androidplot/xy/RectRegion;->setMinX(Ljava/lang/Number;)V

    goto :goto_2

    .line 644
    :cond_4
    iget-object v12, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v13, p0, Lcom/androidplot/xy/XYPlot;->prevMaxX:Ljava/lang/Number;

    invoke-virtual {v12, v13}, Lcom/androidplot/xy/RectRegion;->setMaxX(Ljava/lang/Number;)V

    goto :goto_1

    .line 649
    :pswitch_3
    iget-object v12, p0, Lcom/androidplot/xy/XYPlot;->prevMinX:Ljava/lang/Number;

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/androidplot/xy/XYPlot;->prevMinX:Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    cmpl-double v12, v2, v12

    if-lez v12, :cond_7

    .line 650
    :cond_5
    iget-object v12, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/androidplot/xy/RectRegion;->setMinX(Ljava/lang/Number;)V

    .line 655
    :goto_3
    iget-object v12, p0, Lcom/androidplot/xy/XYPlot;->prevMaxX:Ljava/lang/Number;

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/androidplot/xy/XYPlot;->prevMaxX:Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    cmpg-double v12, v4, v12

    if-gez v12, :cond_8

    .line 656
    :cond_6
    iget-object v12, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/androidplot/xy/RectRegion;->setMaxX(Ljava/lang/Number;)V

    goto :goto_1

    .line 652
    :cond_7
    iget-object v12, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v13, p0, Lcom/androidplot/xy/XYPlot;->prevMinX:Ljava/lang/Number;

    invoke-virtual {v12, v13}, Lcom/androidplot/xy/RectRegion;->setMinX(Ljava/lang/Number;)V

    goto :goto_3

    .line 658
    :cond_8
    iget-object v12, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v13, p0, Lcom/androidplot/xy/XYPlot;->prevMaxX:Ljava/lang/Number;

    invoke-virtual {v12, v13}, Lcom/androidplot/xy/RectRegion;->setMaxX(Ljava/lang/Number;)V

    goto :goto_1

    .line 624
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateRangeMinMaxForOriginModel()V
    .locals 10

    .prologue
    .line 667
    sget-object v6, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$BoundaryMode:[I

    iget-object v7, p0, Lcom/androidplot/xy/XYPlot;->rangeOriginBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v7}, Lcom/androidplot/xy/BoundaryMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 684
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Range Origin Boundary Mode not yet supported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/androidplot/xy/XYPlot;->rangeOriginBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 669
    :pswitch_0
    iget-object v6, p0, Lcom/androidplot/xy/XYPlot;->userRangeOrigin:Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 670
    .local v4, "origin":D
    iget-object v6, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v6}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-direct {p0, v6, v7, v4, v5}, Lcom/androidplot/xy/XYPlot;->distance(DD)D

    move-result-wide v0

    .line 671
    .local v0, "maxYDelta":D
    iget-object v6, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v6}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-direct {p0, v6, v7, v4, v5}, Lcom/androidplot/xy/XYPlot;->distance(DD)D

    move-result-wide v2

    .line 672
    .local v2, "minYDelta":D
    cmpl-double v6, v0, v2

    if-lez v6, :cond_0

    .line 673
    iget-object v6, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    sub-double v8, v4, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/androidplot/xy/RectRegion;->setMinY(Ljava/lang/Number;)V

    .line 674
    iget-object v6, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    add-double v8, v4, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/androidplot/xy/RectRegion;->setMaxY(Ljava/lang/Number;)V

    .line 687
    :goto_0
    return-void

    .line 676
    :cond_0
    iget-object v6, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    sub-double v8, v4, v2

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/androidplot/xy/RectRegion;->setMinY(Ljava/lang/Number;)V

    .line 677
    iget-object v6, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    add-double v8, v4, v2

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/androidplot/xy/RectRegion;->setMaxY(Ljava/lang/Number;)V

    goto :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
