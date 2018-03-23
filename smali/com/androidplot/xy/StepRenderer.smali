.class public Lcom/androidplot/xy/StepRenderer;
.super Lcom/androidplot/xy/LineAndPointRenderer;
.source "StepRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/xy/LineAndPointRenderer",
        "<",
        "Lcom/androidplot/xy/StepFormatter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYPlot;)V
    .locals 0
    .param p1, "plot"    # Lcom/androidplot/xy/XYPlot;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/androidplot/xy/LineAndPointRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected appendToPath(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "thisPoint"    # Landroid/graphics/PointF;
    .param p3, "lastPoint"    # Landroid/graphics/PointF;

    .prologue
    .line 35
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 36
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 37
    return-void
.end method
