.class public Lcom/androidplot/xy/BarFormatter;
.super Lcom/androidplot/xy/LineAndPointFormatter;
.source "BarFormatter.java"


# instance fields
.field private borderPaint:Landroid/graphics/Paint;

.field private fillPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 46
    invoke-direct {p0}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>()V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/BarFormatter;->fillPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->fillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/BarFormatter;->borderPaint:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 53
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "fillColor"    # I
    .param p2, "borderColor"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/androidplot/xy/BarFormatter;-><init>()V

    .line 57
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlCfgId"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/androidplot/xy/BarFormatter;-><init>()V

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/BarFormatter;->configure(Landroid/content/Context;I)V

    .line 64
    return-void
.end method


# virtual methods
.method public bridge synthetic doGetRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p0, p1}, Lcom/androidplot/xy/BarFormatter;->doGetRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object v0

    return-object v0
.end method

.method public doGetRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1
    .param p1, "plot"    # Lcom/androidplot/xy/XYPlot;

    .prologue
    .line 73
    new-instance v0, Lcom/androidplot/xy/BarRenderer;

    invoke-direct {v0, p1}, Lcom/androidplot/xy/BarRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    return-object v0
.end method

.method public getBorderPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->borderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getFillPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->fillPaint:Landroid/graphics/Paint;

    return-object v0
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
    .line 68
    const-class v0, Lcom/androidplot/xy/BarRenderer;

    return-object v0
.end method

.method public setBorderPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "borderPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/androidplot/xy/BarFormatter;->borderPaint:Landroid/graphics/Paint;

    .line 38
    return-void
.end method

.method public setFillPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "fillPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/androidplot/xy/BarFormatter;->fillPaint:Landroid/graphics/Paint;

    .line 30
    return-void
.end method
