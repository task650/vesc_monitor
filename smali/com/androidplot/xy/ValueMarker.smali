.class public abstract Lcom/androidplot/xy/ValueMarker;
.super Ljava/lang/Object;
.source "ValueMarker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PositionMetricType:",
        "Lcom/androidplot/ui/PositionMetric;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private linePaint:Landroid/graphics/Paint;

.field private text:Ljava/lang/String;

.field private textMargin:I

.field private textOrientation:Lcom/androidplot/ui/TextOrientation;

.field private textPaint:Landroid/graphics/Paint;

.field private textPosition:Lcom/androidplot/ui/PositionMetric;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPositionMetricType;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Number;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Ljava/lang/String;",
            "TPositionMetricType;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/androidplot/xy/ValueMarker;, "Lcom/androidplot/xy/ValueMarker<TPositionMetricType;>;"
    .local p3, "textPosition":Lcom/androidplot/ui/PositionMetric;, "TPositionMetricType;"
    const/4 v3, 0x1

    const/high16 v2, -0x10000

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/androidplot/xy/ValueMarker;->textMargin:I

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/ValueMarker;->linePaint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/ValueMarker;->textPaint:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iput-object p1, p0, Lcom/androidplot/xy/ValueMarker;->value:Ljava/lang/Number;

    .line 58
    iput-object p3, p0, Lcom/androidplot/xy/ValueMarker;->textPosition:Lcom/androidplot/ui/PositionMetric;

    .line 59
    iput-object p2, p0, Lcom/androidplot/xy/ValueMarker;->text:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;II)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;
    .param p2, "text"    # Ljava/lang/String;
    .param p4, "linePaint"    # I
    .param p5, "textPaint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Ljava/lang/String;",
            "TPositionMetricType;II)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/androidplot/xy/ValueMarker;, "Lcom/androidplot/xy/ValueMarker<TPositionMetricType;>;"
    .local p3, "textPosition":Lcom/androidplot/ui/PositionMetric;, "TPositionMetricType;"
    invoke-direct {p0, p1, p2, p3}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;)V

    .line 78
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Number;
    .param p2, "text"    # Ljava/lang/String;
    .param p4, "linePaint"    # Landroid/graphics/Paint;
    .param p5, "textPaint"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Ljava/lang/String;",
            "TPositionMetricType;",
            "Landroid/graphics/Paint;",
            "Landroid/graphics/Paint;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/androidplot/xy/ValueMarker;, "Lcom/androidplot/xy/ValueMarker<TPositionMetricType;>;"
    .local p3, "textPosition":Lcom/androidplot/ui/PositionMetric;, "TPositionMetricType;"
    invoke-direct {p0, p1, p2, p3}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;)V

    .line 72
    iput-object p4, p0, Lcom/androidplot/xy/ValueMarker;->linePaint:Landroid/graphics/Paint;

    .line 73
    iput-object p5, p0, Lcom/androidplot/xy/ValueMarker;->textPaint:Landroid/graphics/Paint;

    .line 74
    return-void
.end method


# virtual methods
.method public getLinePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lcom/androidplot/xy/ValueMarker;, "Lcom/androidplot/xy/ValueMarker<TPositionMetricType;>;"
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->linePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/androidplot/xy/ValueMarker;, "Lcom/androidplot/xy/ValueMarker<TPositionMetricType;>;"
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextMargin()I
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lcom/androidplot/xy/ValueMarker;, "Lcom/androidplot/xy/ValueMarker<TPositionMetricType;>;"
    iget v0, p0, Lcom/androidplot/xy/ValueMarker;->textMargin:I

    return v0
.end method

.method public getTextOrientation()Lcom/androidplot/ui/TextOrientation;
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lcom/androidplot/xy/ValueMarker;, "Lcom/androidplot/xy/ValueMarker<TPositionMetricType;>;"
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->textOrientation:Lcom/androidplot/ui/TextOrientation;

    return-object v0
.end method

.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lcom/androidplot/xy/ValueMarker;, "Lcom/androidplot/xy/ValueMarker<TPositionMetricType;>;"
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->textPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTextPosition()Lcom/androidplot/ui/PositionMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPositionMetricType;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lcom/androidplot/xy/ValueMarker;, "Lcom/androidplot/xy/ValueMarker<TPositionMetricType;>;"
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->textPosition:Lcom/androidplot/ui/PositionMetric;

    return-object v0
.end method

.method public getValue()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lcom/androidplot/xy/ValueMarker;, "Lcom/androidplot/xy/ValueMarker<TPositionMetricType;>;"
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->value:Ljava/lang/Number;

    return-object v0
.end method

.method public setLinePaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "linePaint"    # Landroid/graphics/Paint;

    .prologue
    .line 95
    .local p0, "this":Lcom/androidplot/xy/ValueMarker;, "Lcom/androidplot/xy/ValueMarker<TPositionMetricType;>;"
    iput-object p1, p0, Lcom/androidplot/xy/ValueMarker;->linePaint:Landroid/graphics/Paint;

    .line 96
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 35
    .local p0, "this":Lcom/androidplot/xy/ValueMarker;, "Lcom/androidplot/xy/ValueMarker<TPositionMetricType;>;"
    iput-object p1, p0, Lcom/androidplot/xy/ValueMarker;->text:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTextMargin(I)V
    .locals 0
    .param p1, "textMargin"    # I

    .prologue
    .line 128
    .local p0, "this":Lcom/androidplot/xy/ValueMarker;, "Lcom/androidplot/xy/ValueMarker<TPositionMetricType;>;"
    iput p1, p0, Lcom/androidplot/xy/ValueMarker;->textMargin:I

    .line 129
    return-void
.end method

.method public setTextOrientation(Lcom/androidplot/ui/TextOrientation;)V
    .locals 0
    .param p1, "textOrientation"    # Lcom/androidplot/ui/TextOrientation;

    .prologue
    .line 116
    .local p0, "this":Lcom/androidplot/xy/ValueMarker;, "Lcom/androidplot/xy/ValueMarker<TPositionMetricType;>;"
    iput-object p1, p0, Lcom/androidplot/xy/ValueMarker;->textOrientation:Lcom/androidplot/ui/TextOrientation;

    .line 117
    return-void
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "textPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 103
    .local p0, "this":Lcom/androidplot/xy/ValueMarker;, "Lcom/androidplot/xy/ValueMarker<TPositionMetricType;>;"
    iput-object p1, p0, Lcom/androidplot/xy/ValueMarker;->textPaint:Landroid/graphics/Paint;

    .line 104
    return-void
.end method

.method public setTextPosition(Lcom/androidplot/ui/PositionMetric;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPositionMetricType;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lcom/androidplot/xy/ValueMarker;, "Lcom/androidplot/xy/ValueMarker<TPositionMetricType;>;"
    .local p1, "textPosition":Lcom/androidplot/ui/PositionMetric;, "TPositionMetricType;"
    iput-object p1, p0, Lcom/androidplot/xy/ValueMarker;->textPosition:Lcom/androidplot/ui/PositionMetric;

    .line 137
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    .line 87
    .local p0, "this":Lcom/androidplot/xy/ValueMarker;, "Lcom/androidplot/xy/ValueMarker<TPositionMetricType;>;"
    iput-object p1, p0, Lcom/androidplot/xy/ValueMarker;->value:Ljava/lang/Number;

    .line 88
    return-void
.end method
