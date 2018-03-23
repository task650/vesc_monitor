.class public Lcom/androidplot/pie/PieChart;
.super Lcom/androidplot/Plot;
.source "PieChart.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/Plot",
        "<",
        "Lcom/androidplot/pie/Segment;",
        "Lcom/androidplot/pie/SegmentFormatter;",
        "Lcom/androidplot/pie/PieRenderer;",
        "Lcom/androidplot/pie/SegmentBundle;",
        "Lcom/androidplot/pie/SegmentRegistry;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PADDING_DP:I = 0x5

.field private static final DEFAULT_PIE_WIDGET_H_DP:I = 0x12

.field private static final DEFAULT_PIE_WIDGET_W_DP:I = 0xa

.field private static final DEFAULT_PIE_WIDGET_X_OFFSET_DP:I

.field private static final DEFAULT_PIE_WIDGET_Y_OFFSET_DP:I


# instance fields
.field private pie:Lcom/androidplot/pie/PieWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/androidplot/Plot$RenderMode;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "mode"    # Lcom/androidplot/Plot$RenderMode;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/androidplot/Plot$RenderMode;)V

    .line 60
    return-void
.end method


# virtual methods
.method public addSegment(Lcom/androidplot/pie/Segment;Lcom/androidplot/pie/SegmentFormatter;)V
    .locals 0
    .param p1, "segment"    # Lcom/androidplot/pie/Segment;
    .param p2, "formatter"    # Lcom/androidplot/pie/SegmentFormatter;

    .prologue
    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/pie/PieChart;->addSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z

    .line 102
    return-void
.end method

.method public getPie()Lcom/androidplot/pie/PieWidget;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/androidplot/pie/PieChart;->pie:Lcom/androidplot/pie/PieWidget;

    return-object v0
.end method

.method protected bridge synthetic getRegistryInstance()Lcom/androidplot/SeriesRegistry;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/androidplot/pie/PieChart;->getRegistryInstance()Lcom/androidplot/pie/SegmentRegistry;

    move-result-object v0

    return-object v0
.end method

.method protected getRegistryInstance()Lcom/androidplot/pie/SegmentRegistry;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/androidplot/pie/SegmentRegistry;

    invoke-direct {v0}, Lcom/androidplot/pie/SegmentRegistry;-><init>()V

    return-object v0
.end method

.method protected onPreInit()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 68
    new-instance v0, Lcom/androidplot/pie/PieWidget;

    .line 69
    invoke-virtual {p0}, Lcom/androidplot/pie/PieChart;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v1

    new-instance v2, Lcom/androidplot/ui/Size;

    const/high16 v3, 0x41900000    # 18.0f

    .line 72
    invoke-static {v3}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/SizeMode;->FILL:Lcom/androidplot/ui/SizeMode;

    const/high16 v5, 0x41200000    # 10.0f

    .line 74
    invoke-static {v5}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v5

    sget-object v7, Lcom/androidplot/ui/SizeMode;->FILL:Lcom/androidplot/ui/SizeMode;

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/androidplot/pie/PieWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/pie/PieChart;Lcom/androidplot/ui/Size;)V

    iput-object v0, p0, Lcom/androidplot/pie/PieChart;->pie:Lcom/androidplot/pie/PieWidget;

    .line 77
    iget-object v0, p0, Lcom/androidplot/pie/PieChart;->pie:Lcom/androidplot/pie/PieWidget;

    .line 78
    invoke-static {v8}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    sget-object v2, Lcom/androidplot/ui/HorizontalPositioning;->ABSOLUTE_FROM_CENTER:Lcom/androidplot/ui/HorizontalPositioning;

    .line 80
    invoke-static {v8}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_CENTER:Lcom/androidplot/ui/VerticalPositioning;

    sget-object v5, Lcom/androidplot/ui/Anchor;->CENTER:Lcom/androidplot/ui/Anchor;

    .line 77
    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/pie/PieWidget;->position(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;Lcom/androidplot/ui/Anchor;)V

    .line 84
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v6

    .line 85
    .local v6, "padding":F
    iget-object v0, p0, Lcom/androidplot/pie/PieChart;->pie:Lcom/androidplot/pie/PieWidget;

    invoke-virtual {v0, v6, v6, v6, v6}, Lcom/androidplot/pie/PieWidget;->setPadding(FFFF)V

    .line 86
    return-void
.end method

.method protected processAttrs(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/androidplot/pie/PieChart;->getBorderPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->pie_PieChart_pieBorderColor:I

    sget v2, Lcom/androidplot/R$styleable;->pie_PieChart_pieBorderThickness:I

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/util/AttrUtils;->configureLinePaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;II)V

    .line 94
    return-void
.end method

.method public removeSegment(Lcom/androidplot/pie/Segment;)V
    .locals 0
    .param p1, "segment"    # Lcom/androidplot/pie/Segment;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/androidplot/pie/PieChart;->removeSeries(Lcom/androidplot/Series;)V

    .line 106
    return-void
.end method

.method public setPie(Lcom/androidplot/pie/PieWidget;)V
    .locals 0
    .param p1, "pie"    # Lcom/androidplot/pie/PieWidget;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/androidplot/pie/PieChart;->pie:Lcom/androidplot/pie/PieWidget;

    .line 44
    return-void
.end method
