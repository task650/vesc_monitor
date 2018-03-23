.class public Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;
.super Lcom/androidplot/xy/LineAndPointFormatter;
.source "FastLineAndPointRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/FastLineAndPointRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Formatter"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/androidplot/xy/PointLabelFormatter;)V
    .locals 1
    .param p1, "lineColor"    # Ljava/lang/Integer;
    .param p2, "vertexColor"    # Ljava/lang/Integer;
    .param p3, "plf"    # Lcom/androidplot/xy/PointLabelFormatter;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/androidplot/xy/PointLabelFormatter;)V

    .line 134
    return-void
.end method


# virtual methods
.method public bridge synthetic doGetRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1

    .prologue
    .line 130
    check-cast p1, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p0, p1}, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->doGetRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object v0

    return-object v0
.end method

.method public doGetRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1
    .param p1, "plot"    # Lcom/androidplot/xy/XYPlot;

    .prologue
    .line 151
    new-instance v0, Lcom/androidplot/xy/FastLineAndPointRenderer;

    invoke-direct {v0, p1}, Lcom/androidplot/xy/FastLineAndPointRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

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
    .line 146
    const-class v0, Lcom/androidplot/xy/FastLineAndPointRenderer;

    return-object v0
.end method

.method protected initLinePaint(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "lineColor"    # Ljava/lang/Integer;

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/androidplot/xy/LineAndPointFormatter;->initLinePaint(Ljava/lang/Integer;)V

    .line 141
    invoke-virtual {p0}, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    return-void
.end method
