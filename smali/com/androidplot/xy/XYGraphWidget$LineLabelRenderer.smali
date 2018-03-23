.class public Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;
.super Ljava/lang/Object;
.source "XYGraphWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/XYGraphWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineLabelRenderer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawLabel(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;Ljava/lang/Number;FFZ)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "style"    # Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;
    .param p3, "val"    # Ljava/lang/Number;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "isOrigin"    # Z

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 138
    .local v7, "canvasState":I
    :try_start_0
    invoke-static {p2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->access$000(Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;)Ljava/text/Format;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "txt":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->getRotation()F

    move-result v0

    invoke-virtual {p1, v0, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 140
    invoke-virtual {p2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint;FFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 144
    return-void

    .line 142
    .end local v2    # "txt":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0
.end method

.method protected drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint;FFZ)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "isOrigin"    # Z

    .prologue
    .line 147
    invoke-virtual {p1, p2, p4, p5, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 148
    return-void
.end method
