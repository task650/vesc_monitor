.class public Lcom/androidplot/xy/StepFormatter;
.super Lcom/androidplot/xy/LineAndPointFormatter;
.source "StepFormatter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "lineColor"    # Ljava/lang/Integer;
    .param p2, "fillColor"    # Ljava/lang/Integer;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/StepFormatter;->initLinePaint(Ljava/lang/Integer;)V

    .line 30
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/StepFormatter;->initFillPaint(Ljava/lang/Integer;)V

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic doGetRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1

    .prologue
    .line 21
    check-cast p1, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p0, p1}, Lcom/androidplot/xy/StepFormatter;->doGetRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object v0

    return-object v0
.end method

.method public doGetRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1
    .param p1, "plot"    # Lcom/androidplot/xy/XYPlot;

    .prologue
    .line 40
    new-instance v0, Lcom/androidplot/xy/StepRenderer;

    invoke-direct {v0, p1}, Lcom/androidplot/xy/StepRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

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
    .line 35
    const-class v0, Lcom/androidplot/xy/StepRenderer;

    return-object v0
.end method
