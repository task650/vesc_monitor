.class public Lcom/androidplot/xy/XValueMarker;
.super Lcom/androidplot/xy/ValueMarker;
.source "XValueMarker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/xy/ValueMarker",
        "<",
        "Lcom/androidplot/ui/VerticalPosition;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Number;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Lcom/androidplot/ui/VerticalPosition;

    const/high16 v1, 0x40400000    # 3.0f

    sget-object v2, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_TOP:Lcom/androidplot/ui/VerticalPositioning;

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/VerticalPosition;-><init>(FLcom/androidplot/ui/VerticalPositioning;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/VerticalPosition;II)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Number;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textPosition"    # Lcom/androidplot/ui/VerticalPosition;
    .param p4, "linePaint"    # I
    .param p5, "textPaint"    # I

    .prologue
    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/VerticalPosition;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Number;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textPosition"    # Lcom/androidplot/ui/VerticalPosition;
    .param p4, "linePaint"    # Landroid/graphics/Paint;
    .param p5, "textPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 44
    return-void
.end method
