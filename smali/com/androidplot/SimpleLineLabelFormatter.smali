.class public Lcom/androidplot/SimpleLineLabelFormatter;
.super Ljava/lang/Object;
.source "SimpleLineLabelFormatter.java"

# interfaces
.implements Lcom/androidplot/LineLabelFormatter;


# static fields
.field private static final DEFAULT_STROKE_SIZE_DP:I = 0x2

.field private static final DEFAULT_TEXT_SIZE_SP:I = 0xc


# instance fields
.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-direct {p0, v0}, Lcom/androidplot/SimpleLineLabelFormatter;-><init>(Landroid/graphics/Paint;)V

    .line 34
    invoke-virtual {p0}, Lcom/androidplot/SimpleLineLabelFormatter;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    invoke-virtual {p0}, Lcom/androidplot/SimpleLineLabelFormatter;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->spToPix(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 36
    invoke-virtual {p0}, Lcom/androidplot/SimpleLineLabelFormatter;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/androidplot/SimpleLineLabelFormatter;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/androidplot/SimpleLineLabelFormatter;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/androidplot/SimpleLineLabelFormatter;->paint:Landroid/graphics/Paint;

    .line 46
    return-void
.end method


# virtual methods
.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/androidplot/SimpleLineLabelFormatter;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaint(Ljava/lang/Number;)Landroid/graphics/Paint;
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/androidplot/SimpleLineLabelFormatter;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/androidplot/SimpleLineLabelFormatter;->paint:Landroid/graphics/Paint;

    .line 54
    return-void
.end method
