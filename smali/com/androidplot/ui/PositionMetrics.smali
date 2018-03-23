.class public Lcom/androidplot/ui/PositionMetrics;
.super Ljava/lang/Object;
.source "PositionMetrics.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/androidplot/ui/PositionMetrics;",
        ">;"
    }
.end annotation


# instance fields
.field private anchor:Lcom/androidplot/ui/Anchor;

.field private horizontalPosition:Lcom/androidplot/ui/HorizontalPosition;

.field private layerDepth:F

.field private verticalPosition:Lcom/androidplot/ui/VerticalPosition;


# direct methods
.method public constructor <init>(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;Lcom/androidplot/ui/Anchor;)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "horizontalPositioning"    # Lcom/androidplot/ui/HorizontalPositioning;
    .param p3, "y"    # F
    .param p4, "verticalPositioning"    # Lcom/androidplot/ui/VerticalPositioning;
    .param p5, "anchor"    # Lcom/androidplot/ui/Anchor;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/androidplot/ui/HorizontalPosition;

    invoke-direct {v0, p1, p2}, Lcom/androidplot/ui/HorizontalPosition;-><init>(FLcom/androidplot/ui/HorizontalPositioning;)V

    invoke-virtual {p0, v0}, Lcom/androidplot/ui/PositionMetrics;->setXPositionMetric(Lcom/androidplot/ui/HorizontalPosition;)V

    .line 28
    new-instance v0, Lcom/androidplot/ui/VerticalPosition;

    invoke-direct {v0, p3, p4}, Lcom/androidplot/ui/VerticalPosition;-><init>(FLcom/androidplot/ui/VerticalPositioning;)V

    invoke-virtual {p0, v0}, Lcom/androidplot/ui/PositionMetrics;->setYPositionMetric(Lcom/androidplot/ui/VerticalPosition;)V

    .line 29
    invoke-virtual {p0, p5}, Lcom/androidplot/ui/PositionMetrics;->setAnchor(Lcom/androidplot/ui/Anchor;)V

    .line 31
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/androidplot/ui/PositionMetrics;)I
    .locals 2
    .param p1, "o"    # Lcom/androidplot/ui/PositionMetrics;

    .prologue
    .line 51
    iget v0, p0, Lcom/androidplot/ui/PositionMetrics;->layerDepth:F

    iget v1, p1, Lcom/androidplot/ui/PositionMetrics;->layerDepth:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 52
    const/4 v0, -0x1

    .line 56
    :goto_0
    return v0

    .line 53
    :cond_0
    iget v0, p0, Lcom/androidplot/ui/PositionMetrics;->layerDepth:F

    iget v1, p1, Lcom/androidplot/ui/PositionMetrics;->layerDepth:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 54
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/androidplot/ui/PositionMetrics;

    invoke-virtual {p0, p1}, Lcom/androidplot/ui/PositionMetrics;->compareTo(Lcom/androidplot/ui/PositionMetrics;)I

    move-result v0

    return v0
.end method

.method public getAnchor()Lcom/androidplot/ui/Anchor;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/androidplot/ui/PositionMetrics;->anchor:Lcom/androidplot/ui/Anchor;

    return-object v0
.end method

.method public getXPositionMetric()Lcom/androidplot/ui/HorizontalPosition;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/androidplot/ui/PositionMetrics;->horizontalPosition:Lcom/androidplot/ui/HorizontalPosition;

    return-object v0
.end method

.method public getYPositionMetric()Lcom/androidplot/ui/VerticalPosition;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/androidplot/ui/PositionMetrics;->verticalPosition:Lcom/androidplot/ui/VerticalPosition;

    return-object v0
.end method

.method public setAnchor(Lcom/androidplot/ui/Anchor;)V
    .locals 0
    .param p1, "anchor"    # Lcom/androidplot/ui/Anchor;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/androidplot/ui/PositionMetrics;->anchor:Lcom/androidplot/ui/Anchor;

    .line 47
    return-void
.end method

.method public setXPositionMetric(Lcom/androidplot/ui/HorizontalPosition;)V
    .locals 0
    .param p1, "horizontalPosition"    # Lcom/androidplot/ui/HorizontalPosition;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/androidplot/ui/PositionMetrics;->horizontalPosition:Lcom/androidplot/ui/HorizontalPosition;

    .line 66
    return-void
.end method

.method public setYPositionMetric(Lcom/androidplot/ui/VerticalPosition;)V
    .locals 0
    .param p1, "verticalPosition"    # Lcom/androidplot/ui/VerticalPosition;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/androidplot/ui/PositionMetrics;->verticalPosition:Lcom/androidplot/ui/VerticalPosition;

    .line 39
    return-void
.end method
