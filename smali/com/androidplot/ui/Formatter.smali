.class public abstract Lcom/androidplot/ui/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PlotType:",
        "Lcom/androidplot/Plot;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private isLegendIconEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/androidplot/ui/Formatter;, "Lcom/androidplot/ui/Formatter<TPlotType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidplot/ui/Formatter;->isLegendIconEnabled:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "xmlCfgId"    # I

    .prologue
    .line 46
    .local p0, "this":Lcom/androidplot/ui/Formatter;, "Lcom/androidplot/ui/Formatter<TPlotType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidplot/ui/Formatter;->isLegendIconEnabled:Z

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/ui/Formatter;->configure(Landroid/content/Context;I)V

    .line 48
    return-void
.end method


# virtual methods
.method public configure(Landroid/content/Context;I)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "xmlCfgId"    # I

    .prologue
    .line 51
    .local p0, "this":Lcom/androidplot/ui/Formatter;, "Lcom/androidplot/ui/Formatter<TPlotType;>;"
    invoke-static {p1, p0, p2}, Lcom/halfhp/fig/Fig;->configure(Landroid/content/Context;Ljava/lang/Object;I)V

    .line 52
    return-void
.end method

.method protected abstract doGetRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPlotType;)",
            "Lcom/androidplot/ui/SeriesRenderer;"
        }
    .end annotation
.end method

.method public abstract getRendererClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/androidplot/ui/SeriesRenderer;",
            ">;"
        }
    .end annotation
.end method

.method public getRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/androidplot/ui/SeriesRenderer;",
            ">(TPlotType;)TT;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/androidplot/ui/Formatter;, "Lcom/androidplot/ui/Formatter<TPlotType;>;"
    .local p1, "plot":Lcom/androidplot/Plot;, "TPlotType;"
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/Formatter;->doGetRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object v0

    return-object v0
.end method

.method public isLegendIconEnabled()Z
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lcom/androidplot/ui/Formatter;, "Lcom/androidplot/ui/Formatter<TPlotType;>;"
    iget-boolean v0, p0, Lcom/androidplot/ui/Formatter;->isLegendIconEnabled:Z

    return v0
.end method

.method public setLegendIconEnabled(Z)V
    .locals 0
    .param p1, "legendIconEnabled"    # Z

    .prologue
    .line 86
    .local p0, "this":Lcom/androidplot/ui/Formatter;, "Lcom/androidplot/ui/Formatter<TPlotType;>;"
    iput-boolean p1, p0, Lcom/androidplot/ui/Formatter;->isLegendIconEnabled:Z

    .line 87
    return-void
.end method
