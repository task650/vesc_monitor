.class public Lcom/androidplot/ui/SeriesBundle;
.super Ljava/lang/Object;
.source "SeriesBundle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SeriesType::",
        "Lcom/androidplot/Series;",
        "FormatterType:",
        "Lcom/androidplot/ui/Formatter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final formatter:Lcom/androidplot/ui/Formatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFormatterType;"
        }
    .end annotation
.end field

.field private final series:Lcom/androidplot/Series;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSeriesType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;TFormatterType;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<TSeriesType;TFormatterType;>;"
    .local p1, "series":Lcom/androidplot/Series;, "TSeriesType;"
    .local p2, "formatter":Lcom/androidplot/ui/Formatter;, "TFormatterType;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/androidplot/ui/SeriesBundle;->series:Lcom/androidplot/Series;

    .line 32
    iput-object p2, p0, Lcom/androidplot/ui/SeriesBundle;->formatter:Lcom/androidplot/ui/Formatter;

    .line 33
    return-void
.end method


# virtual methods
.method public getFormatter()Lcom/androidplot/ui/Formatter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFormatterType;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<TSeriesType;TFormatterType;>;"
    iget-object v0, p0, Lcom/androidplot/ui/SeriesBundle;->formatter:Lcom/androidplot/ui/Formatter;

    return-object v0
.end method

.method public getSeries()Lcom/androidplot/Series;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSeriesType;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<TSeriesType;TFormatterType;>;"
    iget-object v0, p0, Lcom/androidplot/ui/SeriesBundle;->series:Lcom/androidplot/Series;

    return-object v0
.end method

.method public rendersWith(Lcom/androidplot/ui/SeriesRenderer;)Z
    .locals 2
    .param p1, "renderer"    # Lcom/androidplot/ui/SeriesRenderer;

    .prologue
    .line 44
    .local p0, "this":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<TSeriesType;TFormatterType;>;"
    invoke-virtual {p0}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/Formatter;->getRendererClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
