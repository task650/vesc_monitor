.class public Lcom/androidplot/ui/widget/EmptyWidget;
.super Lcom/androidplot/ui/widget/Widget;
.source "EmptyWidget.java"


# direct methods
.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;)V
    .locals 0
    .param p1, "layoutManager"    # Lcom/androidplot/ui/LayoutManager;
    .param p2, "size"    # Lcom/androidplot/ui/Size;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/androidplot/ui/widget/Widget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected doOnDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "widgetRect"    # Landroid/graphics/RectF;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 33
    return-void
.end method
