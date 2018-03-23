.class public Lcom/androidplot/pie/PieWidget;
.super Lcom/androidplot/ui/widget/Widget;
.source "PieWidget.java"


# instance fields
.field private pieChart:Lcom/androidplot/pie/PieChart;

.field private renderStack:Lcom/androidplot/ui/RenderStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/ui/RenderStack",
            "<+",
            "Lcom/androidplot/pie/Segment;",
            "+",
            "Lcom/androidplot/pie/SegmentFormatter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/pie/PieChart;Lcom/androidplot/ui/Size;)V
    .locals 1
    .param p1, "layoutManager"    # Lcom/androidplot/ui/LayoutManager;
    .param p2, "pieChart"    # Lcom/androidplot/pie/PieChart;
    .param p3, "metrics"    # Lcom/androidplot/ui/Size;

    .prologue
    .line 35
    invoke-direct {p0, p1, p3}, Lcom/androidplot/ui/widget/Widget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;)V

    .line 36
    iput-object p2, p0, Lcom/androidplot/pie/PieWidget;->pieChart:Lcom/androidplot/pie/PieChart;

    .line 37
    new-instance v0, Lcom/androidplot/ui/RenderStack;

    invoke-direct {v0, p2}, Lcom/androidplot/ui/RenderStack;-><init>(Lcom/androidplot/Plot;)V

    iput-object v0, p0, Lcom/androidplot/pie/PieWidget;->renderStack:Lcom/androidplot/ui/RenderStack;

    .line 38
    return-void
.end method


# virtual methods
.method protected doOnDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "widgetRect"    # Landroid/graphics/RectF;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v1, p0, Lcom/androidplot/pie/PieWidget;->renderStack:Lcom/androidplot/ui/RenderStack;

    invoke-virtual {v1}, Lcom/androidplot/ui/RenderStack;->sync()V

    .line 43
    iget-object v1, p0, Lcom/androidplot/pie/PieWidget;->renderStack:Lcom/androidplot/ui/RenderStack;

    invoke-virtual {v1}, Lcom/androidplot/ui/RenderStack;->getElements()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/RenderStack$StackElement;

    .line 44
    .local v0, "thisElement":Lcom/androidplot/ui/RenderStack$StackElement;
    invoke-virtual {v0}, Lcom/androidplot/ui/RenderStack$StackElement;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/androidplot/pie/PieWidget;->pieChart:Lcom/androidplot/pie/PieChart;

    invoke-virtual {v0}, Lcom/androidplot/ui/RenderStack$StackElement;->get()Lcom/androidplot/ui/SeriesBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidplot/ui/Formatter;->getRendererClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/androidplot/pie/PieChart;->getRenderer(Ljava/lang/Class;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object v1

    check-cast v1, Lcom/androidplot/pie/PieRenderer;

    .line 46
    invoke-virtual {v0}, Lcom/androidplot/ui/RenderStack$StackElement;->get()Lcom/androidplot/ui/SeriesBundle;

    move-result-object v3

    iget-object v4, p0, Lcom/androidplot/pie/PieWidget;->renderStack:Lcom/androidplot/ui/RenderStack;

    invoke-virtual {v1, p1, p2, v3, v4}, Lcom/androidplot/pie/PieRenderer;->render(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/SeriesBundle;Lcom/androidplot/ui/RenderStack;)V

    goto :goto_0

    .line 49
    .end local v0    # "thisElement":Lcom/androidplot/ui/RenderStack$StackElement;
    :cond_1
    return-void
.end method
