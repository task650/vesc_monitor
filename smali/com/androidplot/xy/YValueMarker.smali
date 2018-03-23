.class public Lcom/androidplot/xy/YValueMarker;
.super Lcom/androidplot/xy/ValueMarker;
.source "YValueMarker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/xy/ValueMarker",
        "<",
        "Lcom/androidplot/ui/HorizontalPosition;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Number;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Lcom/androidplot/ui/HorizontalPosition;

    const/high16 v1, 0x40400000    # 3.0f

    sget-object v2, Lcom/androidplot/ui/HorizontalPositioning;->ABSOLUTE_FROM_LEFT:Lcom/androidplot/ui/HorizontalPositioning;

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/HorizontalPosition;-><init>(FLcom/androidplot/ui/HorizontalPositioning;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/HorizontalPosition;II)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Number;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textPosition"    # Lcom/androidplot/ui/HorizontalPosition;
    .param p4, "linePaint"    # I
    .param p5, "textPaint"    # I

    .prologue
    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/HorizontalPosition;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Number;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textPosition"    # Lcom/androidplot/ui/HorizontalPosition;
    .param p4, "linePaint"    # Landroid/graphics/Paint;
    .param p5, "textPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 45
    return-void
.end method
