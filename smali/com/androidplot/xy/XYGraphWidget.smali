.class public Lcom/androidplot/xy/XYGraphWidget;
.super Lcom/androidplot/ui/widget/Widget;
.source "XYGraphWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/XYGraphWidget$Edge;,
        Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;,
        Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;,
        Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;
    }
.end annotation


# static fields
.field private static final DEFAULT_LINE_LABEL_TEXT_SIZE_PX:F

.field private static final FUDGE:F = 1.0E-5f

.field private static final MARKER_LABEL_SPACING:I = 0x2

.field private static final ONE:I = 0x1

.field private static final TWO:I = 0x2

.field private static final ZERO:I


# instance fields
.field private cursorLabelFormatter:Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;

.field private domainCursorPaint:Landroid/graphics/Paint;

.field private domainCursorPosition:F

.field private domainGridLinePaint:Landroid/graphics/Paint;

.field private domainOriginLinePaint:Landroid/graphics/Paint;

.field private domainSubGridLinePaint:Landroid/graphics/Paint;

.field private drawGridOnTop:Z

.field private drawMarkersEnabled:Z

.field private gridBackgroundPaint:Landroid/graphics/Paint;

.field private gridInsets:Lcom/androidplot/ui/Insets;

.field private gridRect:Landroid/graphics/RectF;

.field private isGridClippingEnabled:Z

.field private labelRect:Landroid/graphics/RectF;

.field private lineExtensionBottom:F

.field private lineExtensionLeft:F

.field private lineExtensionRight:F

.field private lineExtensionTop:F

.field private lineLabelEdges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/androidplot/xy/XYGraphWidget$Edge;",
            ">;"
        }
    .end annotation
.end field

.field private lineLabelInsets:Lcom/androidplot/ui/Insets;

.field private lineLabelRenderers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/androidplot/xy/XYGraphWidget$Edge;",
            "Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private lineLabelStyles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/androidplot/xy/XYGraphWidget$Edge;",
            "Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;",
            ">;"
        }
    .end annotation
.end field

.field private linesPerDomainLabel:I

.field private linesPerRangeLabel:I

.field private plot:Lcom/androidplot/xy/XYPlot;

.field private rangeCursorPaint:Landroid/graphics/Paint;

.field private rangeCursorPosition:F

.field private rangeGridLinePaint:Landroid/graphics/Paint;

.field private rangeOriginLinePaint:Landroid/graphics/Paint;

.field private rangeSubGridLinePaint:Landroid/graphics/Paint;

.field private renderStack:Lcom/androidplot/ui/RenderStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/ui/RenderStack",
            "<+",
            "Lcom/androidplot/xy/XYSeries;",
            "+",
            "Lcom/androidplot/xy/XYSeriesFormatter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->spToPix(F)F

    move-result v0

    sput v0, Lcom/androidplot/xy/XYGraphWidget;->DEFAULT_LINE_LABEL_TEXT_SIZE_PX:F

    return-void
.end method

.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/xy/XYPlot;Lcom/androidplot/ui/Size;)V
    .locals 7
    .param p1, "layoutManager"    # Lcom/androidplot/ui/LayoutManager;
    .param p2, "plot"    # Lcom/androidplot/xy/XYPlot;
    .param p3, "size"    # Lcom/androidplot/ui/Size;

    .prologue
    const/16 v6, -0x100

    const/high16 v5, 0x40800000    # 4.0f

    const/16 v4, 0xb4

    const/16 v2, 0x8c

    const/4 v3, 0x1

    .line 252
    invoke-direct {p0, p1, p3}, Lcom/androidplot/ui/widget/Widget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;)V

    .line 55
    iput v3, p0, Lcom/androidplot/xy/XYGraphWidget;->linesPerRangeLabel:I

    .line 60
    iput v3, p0, Lcom/androidplot/xy/XYGraphWidget;->linesPerDomainLabel:I

    .line 62
    new-instance v1, Lcom/androidplot/ui/Insets;

    invoke-direct {v1}, Lcom/androidplot/ui/Insets;-><init>()V

    iput-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridInsets:Lcom/androidplot/ui/Insets;

    .line 67
    new-instance v1, Lcom/androidplot/ui/Insets;

    invoke-direct {v1}, Lcom/androidplot/ui/Insets;-><init>()V

    iput-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelInsets:Lcom/androidplot/ui/Insets;

    .line 106
    iput-boolean v3, p0, Lcom/androidplot/xy/XYGraphWidget;->isGridClippingEnabled:Z

    .line 118
    iput-boolean v3, p0, Lcom/androidplot/xy/XYGraphWidget;->drawMarkersEnabled:Z

    .line 124
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelEdges:Ljava/util/Set;

    .line 130
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getDefaultLineLabelStyles()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelStyles:Ljava/util/HashMap;

    .line 131
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getDefaultLineLabelRenderers()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelRenderers:Ljava/util/HashMap;

    .line 223
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridBackgroundPaint:Landroid/graphics/Paint;

    .line 224
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 227
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 228
    .local v0, "defaultLinePaint":Landroid/graphics/Paint;
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 230
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 232
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeGridLinePaint:Landroid/graphics/Paint;

    .line 233
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->domainGridLinePaint:Landroid/graphics/Paint;

    .line 234
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->domainSubGridLinePaint:Landroid/graphics/Paint;

    .line 235
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeSubGridLinePaint:Landroid/graphics/Paint;

    .line 236
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->domainOriginLinePaint:Landroid/graphics/Paint;

    .line 237
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeOriginLinePaint:Landroid/graphics/Paint;

    .line 239
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPaint:Landroid/graphics/Paint;

    .line 240
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPaint:Landroid/graphics/Paint;

    .line 243
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {p0, v1}, Lcom/androidplot/xy/XYGraphWidget;->setMarginTop(F)V

    .line 246
    invoke-virtual {p0, v5}, Lcom/androidplot/xy/XYGraphWidget;->setMarginRight(F)V

    .line 247
    invoke-virtual {p0, v5}, Lcom/androidplot/xy/XYGraphWidget;->setMarginBottom(F)V

    .line 248
    invoke-virtual {p0, v3}, Lcom/androidplot/xy/XYGraphWidget;->setClippingEnabled(Z)V

    .line 253
    iput-object p2, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    .line 254
    new-instance v1, Lcom/androidplot/ui/RenderStack;

    invoke-direct {v1, p2}, Lcom/androidplot/ui/RenderStack;-><init>(Lcom/androidplot/Plot;)V

    iput-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->renderStack:Lcom/androidplot/ui/RenderStack;

    .line 255
    return-void
.end method

.method static synthetic access$100()F
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/androidplot/xy/XYGraphWidget;->DEFAULT_LINE_LABEL_TEXT_SIZE_PX:F

    return v0
.end method

.method private drawMarkerText(Landroid/graphics/Canvas;Ljava/lang/String;Lcom/androidplot/xy/ValueMarker;FF)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "marker"    # Lcom/androidplot/xy/ValueMarker;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 629
    add-float/2addr p4, v1

    .line 630
    sub-float/2addr p5, v1

    .line 631
    new-instance v0, Landroid/graphics/RectF;

    .line 632
    invoke-virtual {p3}, Lcom/androidplot/xy/ValueMarker;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 631
    invoke-static {p2, v1}, Lcom/androidplot/util/FontUtils;->getStringDimensions(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 633
    .local v0, "textRect":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float v1, p5, v1

    invoke-virtual {v0, p4, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 635
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 636
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 639
    :cond_0
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 640
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 643
    :cond_1
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 644
    invoke-virtual {p3}, Lcom/androidplot/xy/ValueMarker;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 643
    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 645
    return-void
.end method


# virtual methods
.method public containsPoint(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    .line 1122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected doOnDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "widgetRect"    # Landroid/graphics/RectF;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 445
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    if-nez v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridInsets:Lcom/androidplot/ui/Insets;

    invoke-static {p2, v1}, Lcom/androidplot/util/RectFUtils;->applyInsets(Landroid/graphics/RectF;Lcom/androidplot/ui/Insets;)Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->labelRect:Landroid/graphics/RectF;

    if-nez v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelInsets:Lcom/androidplot/ui/Insets;

    invoke-static {p2, v1}, Lcom/androidplot/util/RectFUtils;->applyInsets(Landroid/graphics/RectF;Lcom/androidplot/ui/Insets;)Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->labelRect:Landroid/graphics/RectF;

    .line 454
    :cond_1
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 455
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    .line 456
    .local v0, "bounds":Lcom/androidplot/xy/RectRegion;
    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 457
    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 458
    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 459
    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 460
    iget-boolean v1, p0, Lcom/androidplot/xy/XYGraphWidget;->drawGridOnTop:Z

    if-eqz v1, :cond_3

    .line 461
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->drawData(Landroid/graphics/Canvas;)V

    .line 462
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->drawGrid(Landroid/graphics/Canvas;)V

    .line 467
    :goto_0
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->drawCursors(Landroid/graphics/Canvas;)V

    .line 468
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->isDrawMarkersEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 469
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->drawMarkers(Landroid/graphics/Canvas;)V

    .line 473
    .end local v0    # "bounds":Lcom/androidplot/xy/RectRegion;
    :cond_2
    return-void

    .line 464
    .restart local v0    # "bounds":Lcom/androidplot/xy/RectRegion;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->drawGrid(Landroid/graphics/Canvas;)V

    .line 465
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->drawData(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawCursorLabel(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getCursorLabelFormatter()Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;

    move-result-object v2

    .line 715
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getDomainCursorVal()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getRangeCursorVal()Ljava/lang/Number;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;->getLabelText(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v1

    .line 718
    .local v1, "label":Ljava/lang/String;
    new-instance v0, Landroid/graphics/RectF;

    .line 719
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getCursorLabelFormatter()Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;

    move-result-object v2

    invoke-interface {v2}, Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 718
    invoke-static {v1, v2}, Lcom/androidplot/util/FontUtils;->getPackedStringDimensions(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 720
    .local v0, "cursorRect":Landroid/graphics/RectF;
    iget v2, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPosition:F

    iget v3, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPosition:F

    .line 721
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v3, v4

    .line 720
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 725
    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 726
    iget v2, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPosition:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 732
    :cond_0
    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 733
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPosition:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 736
    :cond_1
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getCursorLabelFormatter()Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;

    move-result-object v2

    invoke-interface {v2}, Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 737
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getCursorLabelFormatter()Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;

    move-result-object v2

    invoke-interface {v2}, Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 740
    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 741
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getCursorLabelFormatter()Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;

    move-result-object v4

    invoke-interface {v4}, Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v4

    .line 740
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 742
    return-void
.end method

.method protected drawCursors(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 687
    const/4 v6, 0x0

    .line 689
    .local v6, "hasDomainCursor":Z
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPosition:F

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPosition:F

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 692
    const/4 v6, 0x1

    .line 693
    iget v1, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPosition:F

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPosition:F

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 698
    :cond_0
    const/4 v7, 0x0

    .line 700
    .local v7, "hasRangeCursor":Z
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPosition:F

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPosition:F

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 703
    const/4 v7, 0x1

    .line 704
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPosition:F

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPosition:F

    iget-object v5, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 708
    :cond_1
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getCursorLabelFormatter()Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    .line 709
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->drawCursorLabel(Landroid/graphics/Canvas;)V

    .line 711
    :cond_2
    return-void
.end method

.method protected drawData(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 757
    iget-boolean v2, p0, Lcom/androidplot/xy/XYGraphWidget;->drawGridOnTop:Z

    if-eqz v2, :cond_0

    .line 758
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->drawGridBackground(Landroid/graphics/Canvas;)V

    .line 761
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/androidplot/xy/XYGraphWidget;->isGridClippingEnabled:Z

    if-eqz v2, :cond_1

    .line 762
    const/16 v2, 0x1f

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 763
    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 766
    :cond_1
    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->renderStack:Lcom/androidplot/ui/RenderStack;

    invoke-virtual {v2}, Lcom/androidplot/ui/RenderStack;->sync()V

    .line 768
    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->renderStack:Lcom/androidplot/ui/RenderStack;

    invoke-virtual {v2}, Lcom/androidplot/ui/RenderStack;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/ui/RenderStack$StackElement;

    .line 769
    .local v1, "thisElement":Lcom/androidplot/ui/RenderStack$StackElement;
    invoke-virtual {v1}, Lcom/androidplot/ui/RenderStack$StackElement;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 771
    invoke-virtual {v1}, Lcom/androidplot/ui/RenderStack$StackElement;->get()Lcom/androidplot/ui/SeriesBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/ui/Formatter;->getRendererClass()Ljava/lang/Class;

    move-result-object v0

    .line 772
    .local v0, "rendererClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/androidplot/xy/XYSeriesRenderer;>;"
    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2, v0}, Lcom/androidplot/xy/XYPlot;->getRenderer(Ljava/lang/Class;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYSeriesRenderer;

    iget-object v4, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    .line 773
    invoke-virtual {v1}, Lcom/androidplot/ui/RenderStack$StackElement;->get()Lcom/androidplot/ui/SeriesBundle;

    move-result-object v5

    iget-object v6, p0, Lcom/androidplot/xy/XYGraphWidget;->renderStack:Lcom/androidplot/ui/RenderStack;

    .line 772
    invoke-virtual {v2, p1, v4, v5, v6}, Lcom/androidplot/xy/XYSeriesRenderer;->render(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/SeriesBundle;Lcom/androidplot/ui/RenderStack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 778
    .end local v0    # "rendererClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/androidplot/xy/XYSeriesRenderer;>;"
    .end local v1    # "thisElement":Lcom/androidplot/ui/RenderStack$StackElement;
    :catchall_0
    move-exception v2

    iget-boolean v3, p0, Lcom/androidplot/xy/XYGraphWidget;->isGridClippingEnabled:Z

    if-eqz v3, :cond_3

    .line 779
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    throw v2

    .line 778
    :cond_4
    iget-boolean v2, p0, Lcom/androidplot/xy/XYGraphWidget;->isGridClippingEnabled:Z

    if-eqz v2, :cond_5

    .line 779
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 782
    :cond_5
    return-void
.end method

.method protected drawDomainLine(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Z)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "xPix"    # F
    .param p3, "xVal"    # Ljava/lang/Number;
    .param p4, "linePaint"    # Landroid/graphics/Paint;
    .param p5, "isOrigin"    # Z

    .prologue
    .line 479
    if-eqz p4, :cond_0

    .line 480
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionTop:F

    sub-float v2, v0, v1

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionBottom:F

    add-float v4, v0, v1

    move-object v0, p1

    move v1, p2

    move v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 485
    :cond_0
    sget-object v2, Lcom/androidplot/xy/XYGraphWidget$Edge;->TOP:Lcom/androidplot/xy/XYGraphWidget$Edge;

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->labelRect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p2

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/androidplot/xy/XYGraphWidget;->drawLineLabel(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYGraphWidget$Edge;Ljava/lang/Number;FFZ)V

    .line 486
    sget-object v2, Lcom/androidplot/xy/XYGraphWidget$Edge;->BOTTOM:Lcom/androidplot/xy/XYGraphWidget$Edge;

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->labelRect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p2

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/androidplot/xy/XYGraphWidget;->drawLineLabel(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYGraphWidget$Edge;Ljava/lang/Number;FFZ)V

    .line 487
    return-void
.end method

.method protected drawGrid(Landroid/graphics/Canvas;)V
    .locals 40
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 514
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/androidplot/xy/XYGraphWidget;->drawGridOnTop:Z

    if-nez v2, :cond_0

    .line 515
    invoke-virtual/range {p0 .. p1}, Lcom/androidplot/xy/XYGraphWidget;->drawGridBackground(Landroid/graphics/Canvas;)V

    .line 519
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getDomainOrigin()Ljava/lang/Number;

    move-result-object v19

    .line 521
    .local v19, "domainOrigin":Ljava/lang/Number;
    if-eqz v19, :cond_3

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    .line 523
    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getDomainOrigin()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-double v8, v2

    const/4 v10, 0x0

    .line 522
    invoke-virtual/range {v3 .. v10}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide v20

    .local v20, "domainOriginPix":D
    move-object/from16 v5, v19

    .line 530
    .end local v19    # "domainOrigin":Ljava/lang/Number;
    .local v5, "domainOrigin":Ljava/lang/Number;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    sget-object v3, Lcom/androidplot/xy/Axis;->DOMAIN:Lcom/androidplot/xy/Axis;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    invoke-static {v2, v3, v4}, Lcom/androidplot/xy/XYStepCalculator;->getStep(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/Axis;Landroid/graphics/RectF;)Lcom/androidplot/xy/Step;

    move-result-object v22

    .line 533
    .local v22, "domainStep":Lcom/androidplot/xy/Step;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    cmpl-double v2, v20, v2

    if-ltz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    cmpg-double v2, v20, v2

    if-gtz v2, :cond_1

    .line 535
    move-wide/from16 v0, v20

    double-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/androidplot/xy/XYGraphWidget;->domainOriginLinePaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/androidplot/xy/XYGraphWidget;->drawDomainLine(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Z)V

    .line 540
    :cond_1
    invoke-virtual/range {v22 .. v22}, Lcom/androidplot/xy/Step;->getStepPix()D

    move-result-wide v2

    sub-double v32, v20, v2

    .line 541
    .local v32, "xPix":D
    const/16 v23, 0x1

    .local v23, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const v3, 0x3727c5ac    # 1.0E-5f

    sub-float/2addr v2, v3

    float-to-double v2, v2

    cmpl-double v2, v32, v2

    if-ltz v2, :cond_6

    .line 543
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    move/from16 v0, v23

    int-to-double v6, v0

    .line 544
    invoke-virtual/range {v22 .. v22}, Lcom/androidplot/xy/Step;->getStepVal()D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double v34, v2, v6

    .line 546
    .local v34, "xVal":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    cmpg-double v2, v32, v2

    if-gtz v2, :cond_2

    .line 547
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYGraphWidget;->getLinesPerDomainLabel()I

    move-result v2

    rem-int v2, v23, v2

    if-nez v2, :cond_4

    const/16 v24, 0x1

    .line 548
    .local v24, "isDomainTick":Z
    :goto_2
    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/androidplot/xy/XYGraphWidget;->domainGridLinePaint:Landroid/graphics/Paint;

    .line 549
    .local v10, "lp":Landroid/graphics/Paint;
    :goto_3
    move-wide/from16 v0, v32

    double-to-float v8, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/androidplot/xy/XYGraphWidget;->drawDomainLine(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Z)V

    .line 551
    .end local v10    # "lp":Landroid/graphics/Paint;
    .end local v24    # "isDomainTick":Z
    :cond_2
    add-int/lit8 v23, v23, 0x1

    .line 541
    move/from16 v0, v23

    int-to-double v2, v0

    .line 542
    invoke-virtual/range {v22 .. v22}, Lcom/androidplot/xy/Step;->getStepPix()D

    move-result-wide v6

    mul-double/2addr v2, v6

    sub-double v32, v20, v2

    goto :goto_1

    .line 526
    .end local v5    # "domainOrigin":Ljava/lang/Number;
    .end local v20    # "domainOriginPix":D
    .end local v22    # "domainStep":Lcom/androidplot/xy/Step;
    .end local v23    # "i":I
    .end local v32    # "xPix":D
    .end local v34    # "xVal":D
    .restart local v19    # "domainOrigin":Ljava/lang/Number;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v0, v2

    move-wide/from16 v20, v0

    .line 527
    .restart local v20    # "domainOriginPix":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v5

    .end local v19    # "domainOrigin":Ljava/lang/Number;
    .restart local v5    # "domainOrigin":Ljava/lang/Number;
    goto/16 :goto_0

    .line 547
    .restart local v22    # "domainStep":Lcom/androidplot/xy/Step;
    .restart local v23    # "i":I
    .restart local v32    # "xPix":D
    .restart local v34    # "xVal":D
    :cond_4
    const/16 v24, 0x0

    goto :goto_2

    .line 548
    .restart local v24    # "isDomainTick":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/androidplot/xy/XYGraphWidget;->domainSubGridLinePaint:Landroid/graphics/Paint;

    goto :goto_3

    .line 555
    .end local v24    # "isDomainTick":Z
    .end local v34    # "xVal":D
    :cond_6
    invoke-virtual/range {v22 .. v22}, Lcom/androidplot/xy/Step;->getStepPix()D

    move-result-wide v2

    add-double v32, v20, v2

    .line 556
    const/16 v23, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    const v3, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v2, v3

    float-to-double v2, v2

    cmpg-double v2, v32, v2

    if-gtz v2, :cond_a

    .line 558
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    move/from16 v0, v23

    int-to-double v6, v0

    .line 559
    invoke-virtual/range {v22 .. v22}, Lcom/androidplot/xy/Step;->getStepVal()D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double v34, v2, v6

    .line 561
    .restart local v34    # "xVal":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    cmpl-double v2, v32, v2

    if-ltz v2, :cond_7

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYGraphWidget;->getLinesPerDomainLabel()I

    move-result v2

    rem-int v2, v23, v2

    if-nez v2, :cond_8

    const/16 v24, 0x1

    .line 563
    .restart local v24    # "isDomainTick":Z
    :goto_5
    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/androidplot/xy/XYGraphWidget;->domainGridLinePaint:Landroid/graphics/Paint;

    .line 564
    .restart local v10    # "lp":Landroid/graphics/Paint;
    :goto_6
    move-wide/from16 v0, v32

    double-to-float v8, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/androidplot/xy/XYGraphWidget;->drawDomainLine(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Z)V

    .line 566
    .end local v10    # "lp":Landroid/graphics/Paint;
    .end local v24    # "isDomainTick":Z
    :cond_7
    add-int/lit8 v23, v23, 0x1

    .line 556
    move/from16 v0, v23

    int-to-double v2, v0

    .line 557
    invoke-virtual/range {v22 .. v22}, Lcom/androidplot/xy/Step;->getStepPix()D

    move-result-wide v6

    mul-double/2addr v2, v6

    add-double v32, v20, v2

    goto :goto_4

    .line 562
    :cond_8
    const/16 v24, 0x0

    goto :goto_5

    .line 563
    .restart local v24    # "isDomainTick":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/androidplot/xy/XYGraphWidget;->domainSubGridLinePaint:Landroid/graphics/Paint;

    goto :goto_6

    .line 569
    .end local v24    # "isDomainTick":Z
    .end local v34    # "xVal":D
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getRangeOrigin()Ljava/lang/Number;

    move-result-object v26

    .line 571
    .local v26, "rangeOrigin":Ljava/lang/Number;
    if-eqz v26, :cond_d

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getyRegion()Lcom/androidplot/Region;

    move-result-object v11

    .line 573
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-double v14, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v2

    move-wide/from16 v16, v0

    const/16 v18, 0x1

    .line 572
    invoke-virtual/range {v11 .. v18}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide v28

    .local v28, "rangeOriginPix":D
    move-object/from16 v14, v26

    .line 580
    .end local v26    # "rangeOrigin":Ljava/lang/Number;
    .local v14, "rangeOrigin":Ljava/lang/Number;
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    sget-object v3, Lcom/androidplot/xy/Axis;->RANGE:Lcom/androidplot/xy/Axis;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    invoke-static {v2, v3, v4}, Lcom/androidplot/xy/XYStepCalculator;->getStep(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/Axis;Landroid/graphics/RectF;)Lcom/androidplot/xy/Step;

    move-result-object v27

    .line 583
    .local v27, "rangeStep":Lcom/androidplot/xy/Step;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    cmpl-double v2, v28, v2

    if-ltz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v2, v2

    cmpg-double v2, v28, v2

    if-gtz v2, :cond_b

    .line 584
    move-wide/from16 v0, v28

    double-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androidplot/xy/XYGraphWidget;->rangeOriginLinePaint:Landroid/graphics/Paint;

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v16}, Lcom/androidplot/xy/XYGraphWidget;->drawRangeLine(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Z)V

    .line 588
    :cond_b
    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/Step;->getStepPix()D

    move-result-wide v30

    .line 591
    .local v30, "rangeStepPix":D
    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/Step;->getStepPix()D

    move-result-wide v2

    sub-double v36, v28, v2

    .line 592
    .local v36, "yPix":D
    const/16 v23, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const v3, 0x3727c5ac    # 1.0E-5f

    sub-float/2addr v2, v3

    float-to-double v2, v2

    cmpl-double v2, v36, v2

    if-ltz v2, :cond_10

    .line 593
    invoke-virtual {v14}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    move/from16 v0, v23

    int-to-double v6, v0

    .line 594
    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/Step;->getStepVal()D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double v38, v2, v6

    .line 596
    .local v38, "yVal":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v2, v2

    cmpg-double v2, v36, v2

    if-gtz v2, :cond_c

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYGraphWidget;->getLinesPerRangeLabel()I

    move-result v2

    rem-int v2, v23, v2

    if-nez v2, :cond_e

    const/16 v25, 0x1

    .line 598
    .local v25, "isRangeTick":Z
    :goto_9
    if-eqz v25, :cond_f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/androidplot/xy/XYGraphWidget;->rangeGridLinePaint:Landroid/graphics/Paint;

    .line 599
    .restart local v10    # "lp":Landroid/graphics/Paint;
    :goto_a
    move-wide/from16 v0, v36

    double-to-float v8, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/androidplot/xy/XYGraphWidget;->drawRangeLine(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Z)V

    .line 601
    .end local v10    # "lp":Landroid/graphics/Paint;
    .end local v25    # "isRangeTick":Z
    :cond_c
    add-int/lit8 v23, v23, 0x1

    .line 592
    move/from16 v0, v23

    int-to-double v2, v0

    mul-double v2, v2, v30

    sub-double v36, v28, v2

    goto :goto_8

    .line 576
    .end local v14    # "rangeOrigin":Ljava/lang/Number;
    .end local v27    # "rangeStep":Lcom/androidplot/xy/Step;
    .end local v28    # "rangeOriginPix":D
    .end local v30    # "rangeStepPix":D
    .end local v36    # "yPix":D
    .end local v38    # "yVal":D
    .restart local v26    # "rangeOrigin":Ljava/lang/Number;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v2

    move-wide/from16 v28, v0

    .line 577
    .restart local v28    # "rangeOriginPix":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v14

    .end local v26    # "rangeOrigin":Ljava/lang/Number;
    .restart local v14    # "rangeOrigin":Ljava/lang/Number;
    goto/16 :goto_7

    .line 597
    .restart local v27    # "rangeStep":Lcom/androidplot/xy/Step;
    .restart local v30    # "rangeStepPix":D
    .restart local v36    # "yPix":D
    .restart local v38    # "yVal":D
    :cond_e
    const/16 v25, 0x0

    goto :goto_9

    .line 598
    .restart local v25    # "isRangeTick":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/androidplot/xy/XYGraphWidget;->rangeSubGridLinePaint:Landroid/graphics/Paint;

    goto :goto_a

    .line 605
    .end local v25    # "isRangeTick":Z
    .end local v38    # "yVal":D
    :cond_10
    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/Step;->getStepPix()D

    move-result-wide v2

    add-double v36, v28, v2

    .line 606
    const/16 v23, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    const v3, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v2, v3

    float-to-double v2, v2

    cmpg-double v2, v36, v2

    if-gtz v2, :cond_14

    .line 607
    invoke-virtual {v14}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    move/from16 v0, v23

    int-to-double v6, v0

    .line 608
    invoke-virtual/range {v27 .. v27}, Lcom/androidplot/xy/Step;->getStepVal()D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double v38, v2, v6

    .line 609
    .restart local v38    # "yVal":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    cmpl-double v2, v36, v2

    if-ltz v2, :cond_11

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYGraphWidget;->getLinesPerRangeLabel()I

    move-result v2

    rem-int v2, v23, v2

    if-nez v2, :cond_12

    const/16 v25, 0x1

    .line 611
    .restart local v25    # "isRangeTick":Z
    :goto_c
    if-eqz v25, :cond_13

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/androidplot/xy/XYGraphWidget;->rangeGridLinePaint:Landroid/graphics/Paint;

    .line 612
    .restart local v10    # "lp":Landroid/graphics/Paint;
    :goto_d
    move-wide/from16 v0, v36

    double-to-float v8, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/androidplot/xy/XYGraphWidget;->drawRangeLine(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Z)V

    .line 614
    .end local v10    # "lp":Landroid/graphics/Paint;
    .end local v25    # "isRangeTick":Z
    :cond_11
    add-int/lit8 v23, v23, 0x1

    .line 606
    move/from16 v0, v23

    int-to-double v2, v0

    mul-double v2, v2, v30

    add-double v36, v28, v2

    goto :goto_b

    .line 610
    :cond_12
    const/16 v25, 0x0

    goto :goto_c

    .line 611
    .restart local v25    # "isRangeTick":Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/androidplot/xy/XYGraphWidget;->rangeSubGridLinePaint:Landroid/graphics/Paint;

    goto :goto_d

    .line 616
    .end local v25    # "isRangeTick":Z
    .end local v38    # "yVal":D
    :cond_14
    return-void
.end method

.method protected drawGridBackground(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 745
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 748
    :cond_0
    return-void
.end method

.method protected drawLineLabel(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYGraphWidget$Edge;Ljava/lang/Number;FFZ)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "edge"    # Lcom/androidplot/xy/XYGraphWidget$Edge;
    .param p3, "val"    # Ljava/lang/Number;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "isOrigin"    # Z

    .prologue
    .line 503
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYGraphWidget;->isLineLabelEnabled(Lcom/androidplot/xy/XYGraphWidget$Edge;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYGraphWidget;->getLineLabelRenderer(Lcom/androidplot/xy/XYGraphWidget$Edge;)Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYGraphWidget;->getLineLabelStyle(Lcom/androidplot/xy/XYGraphWidget$Edge;)Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;

    move-result-object v2

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;->drawLabel(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;Ljava/lang/Number;FFZ)V

    .line 506
    :cond_0
    return-void
.end method

.method protected drawMarkers(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getYValueMarkers()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getYValueMarkers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getYValueMarkers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/androidplot/xy/YValueMarker;

    .line 650
    .local v19, "marker":Lcom/androidplot/xy/YValueMarker;
    invoke-virtual/range {v19 .. v19}, Lcom/androidplot/xy/YValueMarker;->getValue()Ljava/lang/Number;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v2

    iget-object v3, v2, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    .line 652
    invoke-virtual/range {v19 .. v19}, Lcom/androidplot/xy/YValueMarker;->getValue()Ljava/lang/Number;

    move-result-object v2

    .line 653
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-double v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v8, v2

    const/4 v10, 0x1

    .line 652
    invoke-virtual/range {v3 .. v10}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide v2

    double-to-float v4, v2

    .line 654
    .local v4, "yPix":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->right:F

    .line 655
    invoke-virtual/range {v19 .. v19}, Lcom/androidplot/xy/YValueMarker;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v7

    move-object/from16 v2, p1

    move v6, v4

    .line 654
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 657
    invoke-virtual/range {v19 .. v19}, Lcom/androidplot/xy/YValueMarker;->getTextPosition()Lcom/androidplot/ui/PositionMetric;

    move-result-object v2

    check-cast v2, Lcom/androidplot/ui/HorizontalPosition;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    .line 658
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 657
    invoke-virtual {v2, v3}, Lcom/androidplot/ui/HorizontalPosition;->getPixelValue(F)F

    move-result v9

    .line 659
    .local v9, "xPix":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v2

    .line 661
    invoke-virtual/range {v19 .. v19}, Lcom/androidplot/xy/YValueMarker;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 662
    invoke-virtual/range {v19 .. v19}, Lcom/androidplot/xy/YValueMarker;->getText()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v8, v19

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/androidplot/xy/XYGraphWidget;->drawMarkerText(Landroid/graphics/Canvas;Ljava/lang/String;Lcom/androidplot/xy/ValueMarker;FF)V

    goto :goto_0

    .line 668
    .end local v4    # "yPix":F
    .end local v9    # "xPix":F
    .end local v19    # "marker":Lcom/androidplot/xy/YValueMarker;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getXValueMarkers()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getXValueMarkers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getXValueMarkers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/androidplot/xy/XValueMarker;

    .line 670
    .local v19, "marker":Lcom/androidplot/xy/XValueMarker;
    invoke-virtual/range {v19 .. v19}, Lcom/androidplot/xy/XValueMarker;->getValue()Ljava/lang/Number;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v2

    iget-object v11, v2, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    .line 672
    invoke-virtual/range {v19 .. v19}, Lcom/androidplot/xy/XValueMarker;->getValue()Ljava/lang/Number;

    move-result-object v2

    .line 673
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v14, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-double v0, v2

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    .line 672
    invoke-virtual/range {v11 .. v18}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide v6

    double-to-float v9, v6

    .line 674
    .restart local v9    # "xPix":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v10, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v12, v2, Landroid/graphics/RectF;->bottom:F

    .line 675
    invoke-virtual/range {v19 .. v19}, Lcom/androidplot/xy/XValueMarker;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v13

    move-object/from16 v8, p1

    move v11, v9

    .line 674
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 676
    invoke-virtual/range {v19 .. v19}, Lcom/androidplot/xy/XValueMarker;->getTextPosition()Lcom/androidplot/ui/PositionMetric;

    move-result-object v2

    check-cast v2, Lcom/androidplot/ui/VerticalPosition;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v2, v5}, Lcom/androidplot/ui/VerticalPosition;->getPixelValue(F)F

    move-result v4

    .line 677
    .restart local v4    # "yPix":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v2

    .line 678
    invoke-virtual/range {v19 .. v19}, Lcom/androidplot/xy/XValueMarker;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 679
    invoke-virtual/range {v19 .. v19}, Lcom/androidplot/xy/XValueMarker;->getText()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v8, v19

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/androidplot/xy/XYGraphWidget;->drawMarkerText(Landroid/graphics/Canvas;Ljava/lang/String;Lcom/androidplot/xy/ValueMarker;FF)V

    goto :goto_1

    .line 684
    .end local v4    # "yPix":F
    .end local v9    # "xPix":F
    .end local v19    # "marker":Lcom/androidplot/xy/XValueMarker;
    :cond_3
    return-void
.end method

.method protected drawPoint(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "point"    # Landroid/graphics/PointF;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 785
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1, p3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 786
    return-void
.end method

.method protected drawRangeLine(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Z)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "yPix"    # F
    .param p3, "yVal"    # Ljava/lang/Number;
    .param p4, "linePaint"    # Landroid/graphics/Paint;
    .param p5, "isOrigin"    # Z

    .prologue
    .line 492
    if-eqz p4, :cond_0

    .line 493
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionLeft:F

    sub-float v1, v0, v1

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionRight:F

    add-float v3, v0, v2

    move-object v0, p1

    move v2, p2

    move v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 498
    :cond_0
    sget-object v2, Lcom/androidplot/xy/XYGraphWidget$Edge;->LEFT:Lcom/androidplot/xy/XYGraphWidget$Edge;

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->labelRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v5, p2

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/androidplot/xy/XYGraphWidget;->drawLineLabel(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYGraphWidget$Edge;Ljava/lang/Number;FFZ)V

    .line 499
    sget-object v2, Lcom/androidplot/xy/XYGraphWidget$Edge;->RIGHT:Lcom/androidplot/xy/XYGraphWidget$Edge;

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->labelRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v5, p2

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/androidplot/xy/XYGraphWidget;->drawLineLabel(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYGraphWidget$Edge;Ljava/lang/Number;FFZ)V

    .line 500
    return-void
.end method

.method public getCursorLabelFormatter()Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->cursorLabelFormatter:Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;

    return-object v0
.end method

.method protected getDefaultLineLabelRenderers()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/androidplot/xy/XYGraphWidget$Edge;",
            "Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1005
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1006
    .local v0, "defaults":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/androidplot/xy/XYGraphWidget$Edge;Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;>;"
    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->TOP:Lcom/androidplot/xy/XYGraphWidget$Edge;

    new-instance v2, Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;

    invoke-direct {v2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->BOTTOM:Lcom/androidplot/xy/XYGraphWidget$Edge;

    new-instance v2, Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;

    invoke-direct {v2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->LEFT:Lcom/androidplot/xy/XYGraphWidget$Edge;

    new-instance v2, Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;

    invoke-direct {v2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->RIGHT:Lcom/androidplot/xy/XYGraphWidget$Edge;

    new-instance v2, Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;

    invoke-direct {v2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    return-object v0
.end method

.method protected getDefaultLineLabelStyles()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/androidplot/xy/XYGraphWidget$Edge;",
            "Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 996
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 997
    .local v0, "defaults":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/androidplot/xy/XYGraphWidget$Edge;Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;>;"
    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->TOP:Lcom/androidplot/xy/XYGraphWidget$Edge;

    new-instance v2, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;

    invoke-direct {v2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->BOTTOM:Lcom/androidplot/xy/XYGraphWidget$Edge;

    new-instance v2, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;

    invoke-direct {v2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->LEFT:Lcom/androidplot/xy/XYGraphWidget$Edge;

    new-instance v2, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;

    invoke-direct {v2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->RIGHT:Lcom/androidplot/xy/XYGraphWidget$Edge;

    new-instance v2, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;

    invoke-direct {v2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    return-object v0
.end method

.method public getDomainCursorPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getDomainCursorPosition()F
    .locals 1

    .prologue
    .line 898
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPosition:F

    return v0
.end method

.method public getDomainCursorVal()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 902
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getDomainCursorPosition()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->getXVal(F)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getDomainGridLinePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->domainGridLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getDomainOriginLinePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->domainOriginLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getDomainSubGridLinePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->domainSubGridLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getGridBackgroundPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridBackgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getGridInsets()Lcom/androidplot/ui/Insets;
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridInsets:Lcom/androidplot/ui/Insets;

    return-object v0
.end method

.method public getGridRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getLabelRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->labelRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getLineExtensionBottom()F
    .locals 1

    .prologue
    .line 972
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionBottom:F

    return v0
.end method

.method public getLineExtensionLeft()F
    .locals 1

    .prologue
    .line 980
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionLeft:F

    return v0
.end method

.method public getLineExtensionRight()F
    .locals 1

    .prologue
    .line 988
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionRight:F

    return v0
.end method

.method public getLineExtensionTop()F
    .locals 1

    .prologue
    .line 964
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionTop:F

    return v0
.end method

.method public getLineLabelInsets()Lcom/androidplot/ui/Insets;
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelInsets:Lcom/androidplot/ui/Insets;

    return-object v0
.end method

.method public getLineLabelRenderer(Lcom/androidplot/xy/XYGraphWidget$Edge;)Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;
    .locals 1
    .param p1, "edge"    # Lcom/androidplot/xy/XYGraphWidget$Edge;

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelRenderers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;

    return-object v0
.end method

.method public getLineLabelStyle(Lcom/androidplot/xy/XYGraphWidget$Edge;)Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;
    .locals 1
    .param p1, "edge"    # Lcom/androidplot/xy/XYGraphWidget$Edge;

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelStyles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;

    return-object v0
.end method

.method public getLinesPerDomainLabel()I
    .locals 1

    .prologue
    .line 865
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->linesPerDomainLabel:I

    return v0
.end method

.method public getLinesPerRangeLabel()I
    .locals 1

    .prologue
    .line 857
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->linesPerRangeLabel:I

    return v0
.end method

.method public getRangeCursorPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRangeCursorPosition()F
    .locals 1

    .prologue
    .line 910
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPosition:F

    return v0
.end method

.method public getRangeCursorVal()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getRangeCursorPosition()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->getYVal(F)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getRangeGridLinePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeGridLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRangeOriginLinePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeOriginLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRangeSubGridLinePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeSubGridLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getXVal(F)Ljava/lang/Number;
    .locals 4
    .param p1, "xPix"    # F

    .prologue
    .line 434
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    iget-object v0, v0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->isDefined()Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    const/4 v0, 0x0

    .line 437
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/androidplot/Region;

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/androidplot/Region;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    float-to-double v2, p1

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    .line 438
    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/androidplot/Region;->transform(DLcom/androidplot/Region;)Ljava/lang/Number;

    move-result-object v0

    goto :goto_0
.end method

.method public getXVal(Landroid/graphics/PointF;)Ljava/lang/Number;
    .locals 1
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 424
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->getXVal(F)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getYVal(F)Ljava/lang/Number;
    .locals 5
    .param p1, "yPix"    # F

    .prologue
    .line 410
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getyRegion()Lcom/androidplot/Region;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/Region;->isDefined()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    const/4 v0, 0x0

    .line 413
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/androidplot/Region;

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/androidplot/Region;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    float-to-double v2, p1

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    .line 414
    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->getyRegion()Lcom/androidplot/Region;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/androidplot/Region;->transform(DLcom/androidplot/Region;Z)Ljava/lang/Number;

    move-result-object v0

    goto :goto_0
.end method

.method public getYVal(Landroid/graphics/PointF;)Ljava/lang/Number;
    .locals 1
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 400
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->getYVal(F)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public isDrawGridOnTop()Z
    .locals 1

    .prologue
    .line 922
    iget-boolean v0, p0, Lcom/androidplot/xy/XYGraphWidget;->drawGridOnTop:Z

    return v0
.end method

.method public isDrawMarkersEnabled()Z
    .locals 1

    .prologue
    .line 930
    iget-boolean v0, p0, Lcom/androidplot/xy/XYGraphWidget;->drawMarkersEnabled:Z

    return v0
.end method

.method public isGridClippingEnabled()Z
    .locals 1

    .prologue
    .line 1077
    iget-boolean v0, p0, Lcom/androidplot/xy/XYGraphWidget;->isGridClippingEnabled:Z

    return v0
.end method

.method public isLineLabelEnabled(Lcom/androidplot/xy/XYGraphWidget$Edge;)Z
    .locals 1
    .param p1, "position"    # Lcom/androidplot/xy/XYGraphWidget$Edge;

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelEdges:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public processAttrs(Landroid/content/res/TypedArray;)V
    .locals 19
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 263
    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_drawGridOnTop:I

    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYGraphWidget;->isDrawGridOnTop()Z

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/androidplot/xy/XYGraphWidget;->setDrawGridOnTop(Z)V

    .line 264
    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabels:I

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .line 265
    .local v18, "tlp":I
    if-eqz v18, :cond_0

    .line 266
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/XYGraphWidget;->setLineLabelEdges(I)V

    .line 269
    :cond_0
    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_gridClippingEnabled:I

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYGraphWidget;->isGridClippingEnabled()Z

    move-result v3

    .line 269
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/androidplot/xy/XYGraphWidget;->setGridClippingEnabled(Z)V

    .line 272
    sget-object v2, Lcom/androidplot/xy/XYGraphWidget$Edge;->TOP:Lcom/androidplot/xy/XYGraphWidget$Edge;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/androidplot/xy/XYGraphWidget;->getLineLabelStyle(Lcom/androidplot/xy/XYGraphWidget$Edge;)Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;

    move-result-object v17

    .line 273
    .local v17, "lineLabelStyleTop":Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;
    sget-object v2, Lcom/androidplot/xy/XYGraphWidget$Edge;->BOTTOM:Lcom/androidplot/xy/XYGraphWidget$Edge;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/androidplot/xy/XYGraphWidget;->getLineLabelStyle(Lcom/androidplot/xy/XYGraphWidget$Edge;)Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;

    move-result-object v14

    .line 274
    .local v14, "lineLabelStyleBottom":Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;
    sget-object v2, Lcom/androidplot/xy/XYGraphWidget$Edge;->LEFT:Lcom/androidplot/xy/XYGraphWidget$Edge;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/androidplot/xy/XYGraphWidget;->getLineLabelStyle(Lcom/androidplot/xy/XYGraphWidget$Edge;)Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;

    move-result-object v15

    .line 275
    .local v15, "lineLabelStyleLeft":Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;
    sget-object v2, Lcom/androidplot/xy/XYGraphWidget$Edge;->RIGHT:Lcom/androidplot/xy/XYGraphWidget$Edge;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/androidplot/xy/XYGraphWidget;->getLineLabelStyle(Lcom/androidplot/xy/XYGraphWidget$Edge;)Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;

    move-result-object v16

    .line 277
    .local v16, "lineLabelStyleRight":Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;
    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelRotationTop:I

    .line 279
    invoke-virtual/range {v17 .. v17}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->getRotation()F

    move-result v3

    .line 277
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->setRotation(F)V

    .line 281
    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelRotationBottom:I

    .line 283
    invoke-virtual {v14}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->getRotation()F

    move-result v3

    .line 281
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v14, v2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->setRotation(F)V

    .line 285
    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelRotationLeft:I

    .line 287
    invoke-virtual {v15}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->getRotation()F

    move-result v3

    .line 285
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v15, v2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->setRotation(F)V

    .line 289
    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelRotationRight:I

    .line 291
    invoke-virtual/range {v16 .. v16}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->getRotation()F

    move-result v3

    .line 289
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->setRotation(F)V

    .line 293
    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_lineExtensionTop:I

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYGraphWidget;->getLineExtensionTop()F

    move-result v3

    .line 293
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/androidplot/xy/XYGraphWidget;->setLineExtensionTop(F)V

    .line 295
    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_lineExtensionBottom:I

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYGraphWidget;->getLineExtensionBottom()F

    move-result v3

    .line 295
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/androidplot/xy/XYGraphWidget;->setLineExtensionBottom(F)V

    .line 297
    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_lineExtensionLeft:I

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYGraphWidget;->getLineExtensionLeft()F

    move-result v3

    .line 297
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/androidplot/xy/XYGraphWidget;->setLineExtensionLeft(F)V

    .line 299
    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_lineExtensionRight:I

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYGraphWidget;->getLineExtensionRight()F

    move-result v3

    .line 299
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/androidplot/xy/XYGraphWidget;->setLineExtensionRight(F)V

    .line 302
    invoke-virtual/range {v17 .. v17}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget v3, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelTextColorTop:I

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelTextSizeTop:I

    sget v5, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelAlignTop:I

    .line 305
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 302
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v5}, Lcom/androidplot/util/AttrUtils;->configureTextPaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;IILjava/lang/Integer;)V

    .line 307
    invoke-virtual {v14}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget v3, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelTextColorBottom:I

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelTextSizeBottom:I

    sget v5, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelAlignBottom:I

    .line 310
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 307
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v5}, Lcom/androidplot/util/AttrUtils;->configureTextPaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;IILjava/lang/Integer;)V

    .line 312
    invoke-virtual {v15}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget v3, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelTextColorLeft:I

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelTextSizeLeft:I

    sget v5, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelAlignLeft:I

    .line 315
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 312
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v5}, Lcom/androidplot/util/AttrUtils;->configureTextPaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;IILjava/lang/Integer;)V

    .line 317
    invoke-virtual/range {v16 .. v16}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget v3, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelTextColorRight:I

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelTextSizeRight:I

    sget v5, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelAlignRight:I

    .line 320
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 317
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v5}, Lcom/androidplot/util/AttrUtils;->configureTextPaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;IILjava/lang/Integer;)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYGraphWidget;->getGridInsets()Lcom/androidplot/ui/Insets;

    move-result-object v3

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_gridInsetTop:I

    sget v5, Lcom/androidplot/R$styleable;->xy_XYPlot_gridInsetBottom:I

    sget v6, Lcom/androidplot/R$styleable;->xy_XYPlot_gridInsetLeft:I

    sget v7, Lcom/androidplot/R$styleable;->xy_XYPlot_gridInsetRight:I

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/androidplot/util/AttrUtils;->configureInsets(Landroid/content/res/TypedArray;Lcom/androidplot/ui/Insets;IIII)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYGraphWidget;->getLineLabelInsets()Lcom/androidplot/ui/Insets;

    move-result-object v3

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelInsetTop:I

    sget v5, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelInsetBottom:I

    sget v6, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelInsetLeft:I

    sget v7, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelInsetRight:I

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/androidplot/util/AttrUtils;->configureInsets(Landroid/content/res/TypedArray;Lcom/androidplot/ui/Insets;IIII)V

    .line 335
    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_graphHeightMode:I

    sget v5, Lcom/androidplot/R$styleable;->xy_XYPlot_graphHeight:I

    sget v6, Lcom/androidplot/R$styleable;->xy_XYPlot_graphWidthMode:I

    sget v7, Lcom/androidplot/R$styleable;->xy_XYPlot_graphWidth:I

    sget v8, Lcom/androidplot/R$styleable;->xy_XYPlot_graphHorizontalPositioning:I

    sget v9, Lcom/androidplot/R$styleable;->xy_XYPlot_graphHorizontalPosition:I

    sget v10, Lcom/androidplot/R$styleable;->xy_XYPlot_graphVerticalPositioning:I

    sget v11, Lcom/androidplot/R$styleable;->xy_XYPlot_graphVerticalPosition:I

    sget v12, Lcom/androidplot/R$styleable;->xy_XYPlot_graphAnchor:I

    sget v13, Lcom/androidplot/R$styleable;->xy_XYPlot_graphVisible:I

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v13}, Lcom/androidplot/util/AttrUtils;->configureWidget(Landroid/content/res/TypedArray;Lcom/androidplot/ui/widget/Widget;IIIIIIIIII)V

    .line 343
    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleHeightMode:I

    sget v5, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleHeight:I

    sget v6, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleWidthMode:I

    sget v7, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleWidth:I

    sget v8, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleHorizontalPositioning:I

    sget v9, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleHorizontalPosition:I

    sget v10, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleVerticalPositioning:I

    sget v11, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleVerticalPosition:I

    sget v12, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleAnchor:I

    sget v13, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleVisible:I

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v13}, Lcom/androidplot/util/AttrUtils;->configureWidget(Landroid/content/res/TypedArray;Lcom/androidplot/ui/widget/Widget;IIIIIIIIII)V

    .line 351
    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleHeightMode:I

    sget v5, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleHeight:I

    sget v6, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleWidthMode:I

    sget v7, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleWidth:I

    sget v8, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleHorizontalPositioning:I

    sget v9, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleHorizontalPosition:I

    sget v10, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleVerticalPositioning:I

    sget v11, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleVerticalPosition:I

    sget v12, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleAnchor:I

    sget v13, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleVisible:I

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v13}, Lcom/androidplot/util/AttrUtils;->configureWidget(Landroid/content/res/TypedArray;Lcom/androidplot/ui/widget/Widget;IIIIIIIIII)V

    .line 359
    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_graphRotation:I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1, v2}, Lcom/androidplot/util/AttrUtils;->configureWidgetRotation(Landroid/content/res/TypedArray;Lcom/androidplot/ui/widget/Widget;I)V

    .line 362
    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_graphMarginTop:I

    sget v5, Lcom/androidplot/R$styleable;->xy_XYPlot_graphMarginBottom:I

    sget v6, Lcom/androidplot/R$styleable;->xy_XYPlot_graphMarginLeft:I

    sget v7, Lcom/androidplot/R$styleable;->xy_XYPlot_graphMarginRight:I

    sget v8, Lcom/androidplot/R$styleable;->xy_XYPlot_graphPaddingTop:I

    sget v9, Lcom/androidplot/R$styleable;->xy_XYPlot_graphPaddingBottom:I

    sget v10, Lcom/androidplot/R$styleable;->xy_XYPlot_graphPaddingLeft:I

    sget v11, Lcom/androidplot/R$styleable;->xy_XYPlot_graphPaddingRight:I

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v11}, Lcom/androidplot/util/AttrUtils;->configureBoxModelable(Landroid/content/res/TypedArray;Lcom/androidplot/ui/BoxModelable;IIIIIIII)V

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYGraphWidget;->getDomainOriginLinePaint()Landroid/graphics/Paint;

    move-result-object v2

    sget v3, Lcom/androidplot/R$styleable;->xy_XYPlot_domainOriginLineColor:I

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_domainOriginLineThickness:I

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4}, Lcom/androidplot/util/AttrUtils;->configureLinePaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;II)V

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYGraphWidget;->getRangeOriginLinePaint()Landroid/graphics/Paint;

    move-result-object v2

    sget v3, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeOriginLineColor:I

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeOriginLineThickness:I

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4}, Lcom/androidplot/util/AttrUtils;->configureLinePaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;II)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYGraphWidget;->getDomainGridLinePaint()Landroid/graphics/Paint;

    move-result-object v2

    sget v3, Lcom/androidplot/R$styleable;->xy_XYPlot_domainLineColor:I

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_domainLineThickness:I

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4}, Lcom/androidplot/util/AttrUtils;->configureLinePaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;II)V

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYGraphWidget;->getRangeGridLinePaint()Landroid/graphics/Paint;

    move-result-object v2

    sget v3, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeLineColor:I

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeLineThickness:I

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4}, Lcom/androidplot/util/AttrUtils;->configureLinePaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;II)V

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYGraphWidget;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget v3, Lcom/androidplot/R$styleable;->xy_XYPlot_graphBackgroundColor:I

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/androidplot/util/AttrUtils;->setColor(Landroid/content/res/TypedArray;Landroid/graphics/Paint;I)V

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYGraphWidget;->getGridBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget v3, Lcom/androidplot/R$styleable;->xy_XYPlot_gridBackgroundColor:I

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/androidplot/util/AttrUtils;->setColor(Landroid/content/res/TypedArray;Landroid/graphics/Paint;I)V

    .line 391
    return-void
.end method

.method public setCursorLabelFormatter(Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;)V
    .locals 0
    .param p1, "cursorLabelFormatter"    # Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->cursorLabelFormatter:Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;

    .line 1036
    return-void
.end method

.method public setCursorPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 889
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->setDomainCursorPosition(F)V

    .line 890
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYGraphWidget;->setRangeCursorPosition(F)V

    .line 891
    return-void
.end method

.method public setCursorPosition(Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 894
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/androidplot/xy/XYGraphWidget;->setCursorPosition(FF)V

    .line 895
    return-void
.end method

.method public setDomainCursorPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "domainCursorPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 947
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPaint:Landroid/graphics/Paint;

    .line 948
    return-void
.end method

.method public setDomainCursorPosition(F)V
    .locals 0
    .param p1, "domainCursorPosition"    # F

    .prologue
    .line 906
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPosition:F

    .line 907
    return-void
.end method

.method public setDomainGridLinePaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "gridLinePaint"    # Landroid/graphics/Paint;

    .prologue
    .line 808
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->domainGridLinePaint:Landroid/graphics/Paint;

    .line 809
    return-void
.end method

.method public setDomainOriginLinePaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "domainOriginLinePaint"    # Landroid/graphics/Paint;

    .prologue
    .line 877
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->domainOriginLinePaint:Landroid/graphics/Paint;

    .line 878
    return-void
.end method

.method public setDomainSubGridLinePaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "gridLinePaint"    # Landroid/graphics/Paint;

    .prologue
    .line 830
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->domainSubGridLinePaint:Landroid/graphics/Paint;

    .line 831
    return-void
.end method

.method public setDrawGridOnTop(Z)V
    .locals 0
    .param p1, "drawGridOnTop"    # Z

    .prologue
    .line 926
    iput-boolean p1, p0, Lcom/androidplot/xy/XYGraphWidget;->drawGridOnTop:Z

    .line 927
    return-void
.end method

.method public setDrawMarkersEnabled(Z)V
    .locals 0
    .param p1, "drawMarkersEnabled"    # Z

    .prologue
    .line 934
    iput-boolean p1, p0, Lcom/androidplot/xy/XYGraphWidget;->drawMarkersEnabled:Z

    .line 935
    return-void
.end method

.method public setGridBackgroundPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "gridBackgroundPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 793
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridBackgroundPaint:Landroid/graphics/Paint;

    .line 794
    return-void
.end method

.method public setGridClippingEnabled(Z)V
    .locals 0
    .param p1, "gridClippingEnabled"    # Z

    .prologue
    .line 1081
    iput-boolean p1, p0, Lcom/androidplot/xy/XYGraphWidget;->isGridClippingEnabled:Z

    .line 1082
    return-void
.end method

.method public setGridInsets(Lcom/androidplot/ui/Insets;)V
    .locals 0
    .param p1, "gridInsets"    # Lcom/androidplot/ui/Insets;

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridInsets:Lcom/androidplot/ui/Insets;

    .line 1047
    return-void
.end method

.method public setGridRect(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "gridRect"    # Landroid/graphics/RectF;

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    .line 1066
    return-void
.end method

.method public setLabelRect(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "labelRect"    # Landroid/graphics/RectF;

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->labelRect:Landroid/graphics/RectF;

    .line 1074
    return-void
.end method

.method public setLineExtensionBottom(F)V
    .locals 0
    .param p1, "lineExtensionBottom"    # F

    .prologue
    .line 976
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionBottom:F

    .line 977
    return-void
.end method

.method public setLineExtensionLeft(F)V
    .locals 0
    .param p1, "lineExtensionLeft"    # F

    .prologue
    .line 984
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionLeft:F

    .line 985
    return-void
.end method

.method public setLineExtensionRight(F)V
    .locals 0
    .param p1, "lineExtensionRight"    # F

    .prologue
    .line 992
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionRight:F

    .line 993
    return-void
.end method

.method public setLineExtensionTop(F)V
    .locals 0
    .param p1, "lineExtensionTop"    # F

    .prologue
    .line 968
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionTop:F

    .line 969
    return-void
.end method

.method protected setLineLabelEdges(I)V
    .locals 6
    .param p1, "bitfield"    # I

    .prologue
    .line 1103
    invoke-static {}, Lcom/androidplot/xy/XYGraphWidget$Edge;->values()[Lcom/androidplot/xy/XYGraphWidget$Edge;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 1104
    .local v0, "tp":Lcom/androidplot/xy/XYGraphWidget$Edge;
    invoke-static {v0}, Lcom/androidplot/xy/XYGraphWidget$Edge;->access$200(Lcom/androidplot/xy/XYGraphWidget$Edge;)I

    move-result v4

    and-int/2addr v4, p1

    invoke-static {v0}, Lcom/androidplot/xy/XYGraphWidget$Edge;->access$200(Lcom/androidplot/xy/XYGraphWidget$Edge;)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1105
    iget-object v4, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelEdges:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1103
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1108
    .end local v0    # "tp":Lcom/androidplot/xy/XYGraphWidget$Edge;
    :cond_1
    return-void
.end method

.method public setLineLabelEdges(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/androidplot/xy/XYGraphWidget$Edge;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1099
    .local p1, "positions":Ljava/util/Set;, "Ljava/util/Set<Lcom/androidplot/xy/XYGraphWidget$Edge;>;"
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelEdges:Ljava/util/Set;

    .line 1100
    return-void
.end method

.method public varargs setLineLabelEdges([Lcom/androidplot/xy/XYGraphWidget$Edge;)V
    .locals 4
    .param p1, "positions"    # [Lcom/androidplot/xy/XYGraphWidget$Edge;

    .prologue
    .line 1089
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1090
    .local v1, "positionSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/androidplot/xy/XYGraphWidget$Edge;>;"
    if-eqz p1, :cond_0

    .line 1091
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 1092
    .local v0, "position":Lcom/androidplot/xy/XYGraphWidget$Edge;
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1091
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1095
    .end local v0    # "position":Lcom/androidplot/xy/XYGraphWidget$Edge;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/androidplot/xy/XYGraphWidget;->setLineLabelEdges(Ljava/util/Set;)V

    .line 1096
    return-void
.end method

.method public setLineLabelInsets(Lcom/androidplot/ui/Insets;)V
    .locals 0
    .param p1, "lineLabelInsets"    # Lcom/androidplot/ui/Insets;

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelInsets:Lcom/androidplot/ui/Insets;

    .line 1058
    return-void
.end method

.method public setLineLabelRenderer(Lcom/androidplot/xy/XYGraphWidget$Edge;Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;)V
    .locals 1
    .param p1, "edge"    # Lcom/androidplot/xy/XYGraphWidget$Edge;
    .param p2, "renderer"    # Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelRenderers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    return-void
.end method

.method public setLineLabelStyle(Lcom/androidplot/xy/XYGraphWidget$Edge;Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;)V
    .locals 1
    .param p1, "edge"    # Lcom/androidplot/xy/XYGraphWidget$Edge;
    .param p2, "style"    # Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelStyles:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    return-void
.end method

.method public setLinesPerDomainLabel(I)V
    .locals 0
    .param p1, "linesPerDomainLabel"    # I

    .prologue
    .line 869
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->linesPerDomainLabel:I

    .line 870
    return-void
.end method

.method public setLinesPerRangeLabel(I)V
    .locals 0
    .param p1, "linesPerRangeLabel"    # I

    .prologue
    .line 861
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->linesPerRangeLabel:I

    .line 862
    return-void
.end method

.method public setRangeCursorPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "rangeCursorPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 960
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPaint:Landroid/graphics/Paint;

    .line 961
    return-void
.end method

.method public setRangeCursorPosition(F)V
    .locals 0
    .param p1, "rangeCursorPosition"    # F

    .prologue
    .line 918
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPosition:F

    .line 919
    return-void
.end method

.method public setRangeGridLinePaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "gridLinePaint"    # Landroid/graphics/Paint;

    .prologue
    .line 838
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeGridLinePaint:Landroid/graphics/Paint;

    .line 839
    return-void
.end method

.method public setRangeOriginLinePaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "rangeOriginLinePaint"    # Landroid/graphics/Paint;

    .prologue
    .line 885
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeOriginLinePaint:Landroid/graphics/Paint;

    .line 886
    return-void
.end method

.method public setRangeSubGridLinePaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "gridLinePaint"    # Landroid/graphics/Paint;

    .prologue
    .line 853
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeSubGridLinePaint:Landroid/graphics/Paint;

    .line 854
    return-void
.end method
