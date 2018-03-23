.class public Lcom/androidplot/xy/BarRenderer$Bar;
.super Ljava/lang/Object;
.source "BarRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/BarRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Bar"
.end annotation


# instance fields
.field protected barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/xy/BarRenderer",
            "<TFormatterType;>.BarGroup;"
        }
    .end annotation
.end field

.field private final formatter:Lcom/androidplot/xy/BarFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFormatterType;"
        }
    .end annotation
.end field

.field public final intX:I

.field public final intY:I

.field public final pixX:D

.field public final pixY:D

.field public final series:Lcom/androidplot/xy/XYSeries;

.field public final seriesIndex:I

.field final synthetic this$0:Lcom/androidplot/xy/BarRenderer;

.field public final xVal:D

.field public final yVal:D


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/BarRenderer;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/BarFormatter;ILandroid/graphics/RectF;)V
    .locals 9
    .param p1, "this$0"    # Lcom/androidplot/xy/BarRenderer;
    .param p2, "series"    # Lcom/androidplot/xy/XYSeries;
    .param p4, "seriesIndex"    # I
    .param p5, "plotArea"    # Landroid/graphics/RectF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/xy/XYSeries;",
            "TFormatterType;I",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "this":Lcom/androidplot/xy/BarRenderer$Bar;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.Bar;"
    .local p3, "formatter":Lcom/androidplot/xy/BarFormatter;, "TFormatterType;"
    iput-object p1, p0, Lcom/androidplot/xy/BarRenderer$Bar;->this$0:Lcom/androidplot/xy/BarRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-object p2, p0, Lcom/androidplot/xy/BarRenderer$Bar;->series:Lcom/androidplot/xy/XYSeries;

    .line 343
    iput-object p3, p0, Lcom/androidplot/xy/BarRenderer$Bar;->formatter:Lcom/androidplot/xy/BarFormatter;

    .line 344
    iput p4, p0, Lcom/androidplot/xy/BarRenderer$Bar;->seriesIndex:I

    .line 346
    invoke-interface {p2, p4}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/androidplot/xy/BarRenderer$Bar;->xVal:D

    .line 347
    invoke-virtual {p1}, Lcom/androidplot/xy/BarRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object v1

    iget-wide v2, p0, Lcom/androidplot/xy/BarRenderer$Bar;->xVal:D

    iget v0, p5, Landroid/graphics/RectF;->left:F

    float-to-double v4, v0

    iget v0, p5, Landroid/graphics/RectF;->right:F

    float-to-double v6, v0

    const/4 v8, 0x0

    .line 348
    invoke-virtual/range {v1 .. v8}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/androidplot/xy/BarRenderer$Bar;->pixX:D

    .line 349
    iget-wide v0, p0, Lcom/androidplot/xy/BarRenderer$Bar;->pixX:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/androidplot/xy/BarRenderer$Bar;->intX:I

    .line 351
    invoke-interface {p2, p4}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    invoke-interface {p2, p4}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/androidplot/xy/BarRenderer$Bar;->yVal:D

    .line 353
    invoke-virtual {p1}, Lcom/androidplot/xy/BarRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    iget-object v1, v0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    iget-wide v2, p0, Lcom/androidplot/xy/BarRenderer$Bar;->yVal:D

    iget v0, p5, Landroid/graphics/RectF;->top:F

    float-to-double v4, v0

    iget v0, p5, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v0

    const/4 v8, 0x1

    .line 354
    invoke-virtual/range {v1 .. v8}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/androidplot/xy/BarRenderer$Bar;->pixY:D

    .line 355
    iget-wide v0, p0, Lcom/androidplot/xy/BarRenderer$Bar;->pixY:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/androidplot/xy/BarRenderer$Bar;->intY:I

    .line 361
    :goto_0
    return-void

    .line 357
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/androidplot/xy/BarRenderer$Bar;->yVal:D

    .line 358
    iget v0, p5, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/androidplot/xy/BarRenderer$Bar;->pixY:D

    .line 359
    iget-wide v0, p0, Lcom/androidplot/xy/BarRenderer$Bar;->pixY:D

    double-to-int v0, v0

    iput v0, p0, Lcom/androidplot/xy/BarRenderer$Bar;->intY:I

    goto :goto_0
.end method


# virtual methods
.method public getFormatter()Lcom/androidplot/xy/BarFormatter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFormatterType;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lcom/androidplot/xy/BarRenderer$Bar;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.Bar;"
    iget-object v1, p0, Lcom/androidplot/xy/BarRenderer$Bar;->this$0:Lcom/androidplot/xy/BarRenderer;

    iget v2, p0, Lcom/androidplot/xy/BarRenderer$Bar;->seriesIndex:I

    iget-object v3, p0, Lcom/androidplot/xy/BarRenderer$Bar;->series:Lcom/androidplot/xy/XYSeries;

    invoke-virtual {v1, v2, v3}, Lcom/androidplot/xy/BarRenderer;->getFormatter(ILcom/androidplot/xy/XYSeries;)Lcom/androidplot/xy/BarFormatter;

    move-result-object v0

    .line 365
    .local v0, "f":Lcom/androidplot/xy/BarFormatter;, "TFormatterType;"
    if-eqz v0, :cond_0

    .end local v0    # "f":Lcom/androidplot/xy/BarFormatter;, "TFormatterType;"
    :goto_0
    return-object v0

    .restart local v0    # "f":Lcom/androidplot/xy/BarFormatter;, "TFormatterType;"
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/BarRenderer$Bar;->formatter:Lcom/androidplot/xy/BarFormatter;

    goto :goto_0
.end method
