.class public Lcom/androidplot/ui/LayoutManager;
.super Lcom/androidplot/util/LinkedLayerList;
.source "LayoutManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/androidplot/ui/Resizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/util/LinkedLayerList",
        "<",
        "Lcom/androidplot/ui/widget/Widget;",
        ">;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/androidplot/ui/Resizable;"
    }
.end annotation


# instance fields
.field private anchorPaint:Landroid/graphics/Paint;

.field private displayDims:Lcom/androidplot/util/DisplayDimensions;

.field private drawAnchorsEnabled:Z

.field private drawMarginsEnabled:Z

.field private drawOutlineShadowsEnabled:Z

.field private drawOutlinesEnabled:Z

.field private drawPaddingEnabled:Z

.field private marginPaint:Landroid/graphics/Paint;

.field private outlinePaint:Landroid/graphics/Paint;

.field private outlineShadowPaint:Landroid/graphics/Paint;

.field private paddingPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    const v2, -0xff0100

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/androidplot/util/LinkedLayerList;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->drawAnchorsEnabled:Z

    .line 31
    iput-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->drawOutlinesEnabled:Z

    .line 33
    iput-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->drawOutlineShadowsEnabled:Z

    .line 35
    iput-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->drawMarginsEnabled:Z

    .line 37
    iput-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->drawPaddingEnabled:Z

    .line 39
    new-instance v0, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v0}, Lcom/androidplot/util/DisplayDimensions;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/LayoutManager;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/LayoutManager;->anchorPaint:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->anchorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->anchorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/LayoutManager;->outlinePaint:Landroid/graphics/Paint;

    .line 46
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->outlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->outlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->outlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/LayoutManager;->marginPaint:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->marginPaint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->marginPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->marginPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/LayoutManager;->paddingPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->paddingPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->paddingPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->paddingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 70
    return-void
.end method

.method private drawSpacing(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "outer"    # Landroid/graphics/RectF;
    .param p3, "inner"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 137
    const/16 v0, 0x1f

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 138
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 139
    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 143
    return-void

    .line 141
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->isDrawMarginsEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 82
    iget-object v7, p0, Lcom/androidplot/ui/LayoutManager;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    iget-object v7, v7, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/androidplot/ui/LayoutManager;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    iget-object v8, v8, Lcom/androidplot/util/DisplayDimensions;->marginatedRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/androidplot/ui/LayoutManager;->marginPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/androidplot/ui/LayoutManager;->drawSpacing(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->isDrawPaddingEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 85
    iget-object v7, p0, Lcom/androidplot/ui/LayoutManager;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    iget-object v7, v7, Lcom/androidplot/util/DisplayDimensions;->marginatedRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/androidplot/ui/LayoutManager;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    iget-object v8, v8, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/androidplot/ui/LayoutManager;->paddingPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/androidplot/ui/LayoutManager;->drawSpacing(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->elements()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/androidplot/ui/widget/Widget;

    .line 89
    .local v6, "widget":Lcom/androidplot/ui/widget/Widget;
    const/16 v8, 0x1f

    :try_start_0
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->save(I)I

    .line 90
    invoke-virtual {v6}, Lcom/androidplot/ui/widget/Widget;->getPositionMetrics()Lcom/androidplot/ui/PositionMetrics;

    move-result-object v5

    .line 91
    .local v5, "metrics":Lcom/androidplot/ui/PositionMetrics;
    iget-object v8, p0, Lcom/androidplot/ui/LayoutManager;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    iget-object v8, v8, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v6, v8}, Lcom/androidplot/ui/widget/Widget;->getWidthPix(F)F

    move-result v4

    .line 92
    .local v4, "elementWidth":F
    iget-object v8, p0, Lcom/androidplot/ui/LayoutManager;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    iget-object v8, v8, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v6, v8}, Lcom/androidplot/ui/widget/Widget;->getHeightPix(F)F

    move-result v3

    .line 93
    .local v3, "elementHeight":F
    iget-object v8, p0, Lcom/androidplot/ui/LayoutManager;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    iget-object v8, v8, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v3, v4, v8, v5}, Lcom/androidplot/ui/widget/Widget;->getElementCoordinates(FFLandroid/graphics/RectF;Lcom/androidplot/ui/PositionMetrics;)Landroid/graphics/PointF;

    move-result-object v1

    .line 96
    .local v1, "coords":Landroid/graphics/PointF;
    invoke-virtual {v6}, Lcom/androidplot/ui/widget/Widget;->getWidgetDimensions()Lcom/androidplot/util/DisplayDimensions;

    move-result-object v2

    .line 98
    .local v2, "dims":Lcom/androidplot/util/DisplayDimensions;
    iget-boolean v8, p0, Lcom/androidplot/ui/LayoutManager;->drawOutlineShadowsEnabled:Z

    if-eqz v8, :cond_2

    .line 99
    iget-object v8, v2, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/androidplot/ui/LayoutManager;->outlineShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 105
    :cond_2
    invoke-virtual {v6}, Lcom/androidplot/ui/widget/Widget;->isClippingEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 106
    iget-object v8, v2, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    sget-object v9, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 108
    :cond_3
    invoke-virtual {v6, p1}, Lcom/androidplot/ui/widget/Widget;->draw(Landroid/graphics/Canvas;)V

    .line 110
    iget-boolean v8, p0, Lcom/androidplot/ui/LayoutManager;->drawMarginsEnabled:Z

    if-eqz v8, :cond_4

    .line 111
    iget-object v8, v2, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    iget-object v9, v2, Lcom/androidplot/util/DisplayDimensions;->marginatedRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->getMarginPaint()Landroid/graphics/Paint;

    move-result-object v10

    invoke-direct {p0, p1, v8, v9, v10}, Lcom/androidplot/ui/LayoutManager;->drawSpacing(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 114
    :cond_4
    iget-boolean v8, p0, Lcom/androidplot/ui/LayoutManager;->drawPaddingEnabled:Z

    if-eqz v8, :cond_5

    .line 115
    iget-object v8, v2, Lcom/androidplot/util/DisplayDimensions;->marginatedRect:Landroid/graphics/RectF;

    iget-object v9, v2, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->getPaddingPaint()Landroid/graphics/Paint;

    move-result-object v10

    invoke-direct {p0, p1, v8, v9, v10}, Lcom/androidplot/ui/LayoutManager;->drawSpacing(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 118
    :cond_5
    iget-boolean v8, p0, Lcom/androidplot/ui/LayoutManager;->drawAnchorsEnabled:Z

    if-eqz v8, :cond_6

    .line 119
    iget v8, v1, Landroid/graphics/PointF;->x:F

    iget v9, v1, Landroid/graphics/PointF;->y:F

    .line 121
    invoke-virtual {v5}, Lcom/androidplot/ui/PositionMetrics;->getAnchor()Lcom/androidplot/ui/Anchor;

    move-result-object v10

    .line 120
    invoke-static {v8, v9, v4, v3, v10}, Lcom/androidplot/ui/widget/Widget;->getAnchorCoordinates(FFFFLcom/androidplot/ui/Anchor;)Landroid/graphics/PointF;

    move-result-object v0

    .line 122
    .local v0, "anchorCoords":Landroid/graphics/PointF;
    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/LayoutManager;->drawAnchor(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    .line 126
    .end local v0    # "anchorCoords":Landroid/graphics/PointF;
    :cond_6
    iget-boolean v8, p0, Lcom/androidplot/ui/LayoutManager;->drawOutlinesEnabled:Z

    if-eqz v8, :cond_7

    .line 127
    iget-object v8, v2, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/androidplot/ui/LayoutManager;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .end local v1    # "coords":Landroid/graphics/PointF;
    .end local v2    # "dims":Lcom/androidplot/util/DisplayDimensions;
    .end local v3    # "elementHeight":F
    .end local v4    # "elementWidth":F
    .end local v5    # "metrics":Lcom/androidplot/ui/PositionMetrics;
    :catchall_0
    move-exception v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v7

    .line 133
    .end local v6    # "widget":Lcom/androidplot/ui/widget/Widget;
    :cond_8
    return-void
.end method

.method protected drawAnchor(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "coords"    # Landroid/graphics/PointF;

    .prologue
    .line 146
    const/high16 v6, 0x40800000    # 4.0f

    .line 147
    .local v6, "anchorSize":F
    iget v0, p2, Landroid/graphics/PointF;->x:F

    sub-float v1, v0, v6

    iget v0, p2, Landroid/graphics/PointF;->y:F

    sub-float v2, v0, v6

    iget v0, p2, Landroid/graphics/PointF;->x:F

    add-float v3, v0, v6

    iget v0, p2, Landroid/graphics/PointF;->y:F

    add-float v4, v0, v6

    iget-object v5, p0, Lcom/androidplot/ui/LayoutManager;->anchorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 149
    return-void
.end method

.method public getMarginPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->marginPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getOutlinePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->outlinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getOutlineShadowPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->outlineShadowPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaddingPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->paddingPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public isDrawAnchorsEnabled()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->drawAnchorsEnabled:Z

    return v0
.end method

.method public isDrawMarginsEnabled()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->drawMarginsEnabled:Z

    return v0
.end method

.method public isDrawOutlineShadowsEnabled()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->drawOutlineShadowsEnabled:Z

    return v0
.end method

.method public isDrawOutlinesEnabled()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->drawOutlinesEnabled:Z

    return v0
.end method

.method public isDrawPaddingEnabled()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->drawPaddingEnabled:Z

    return v0
.end method

.method public layout(Lcom/androidplot/util/DisplayDimensions;)V
    .locals 0
    .param p1, "dims"    # Lcom/androidplot/util/DisplayDimensions;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/androidplot/ui/LayoutManager;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    .line 250
    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->refreshLayout()V

    .line 251
    return-void
.end method

.method public declared-synchronized onPostInit()V
    .locals 3

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->elements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/widget/Widget;

    .line 65
    .local v0, "w":Lcom/androidplot/ui/widget/Widget;
    invoke-virtual {v0}, Lcom/androidplot/ui/widget/Widget;->onPostInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 64
    .end local v0    # "w":Lcom/androidplot/ui/widget/Widget;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 67
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public refreshLayout()V
    .locals 3

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->elements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/widget/Widget;

    .line 242
    .local v0, "widget":Lcom/androidplot/ui/widget/Widget;
    iget-object v2, p0, Lcom/androidplot/ui/LayoutManager;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    invoke-virtual {v0, v2}, Lcom/androidplot/ui/widget/Widget;->layout(Lcom/androidplot/util/DisplayDimensions;)V

    goto :goto_0

    .line 244
    .end local v0    # "widget":Lcom/androidplot/ui/widget/Widget;
    :cond_0
    return-void
.end method

.method public setDrawAnchorsEnabled(Z)V
    .locals 0
    .param p1, "drawAnchorsEnabled"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/androidplot/ui/LayoutManager;->drawAnchorsEnabled:Z

    .line 173
    return-void
.end method

.method public setDrawMarginsEnabled(Z)V
    .locals 0
    .param p1, "drawMarginsEnabled"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/androidplot/ui/LayoutManager;->drawMarginsEnabled:Z

    .line 181
    return-void
.end method

.method public setDrawOutlineShadowsEnabled(Z)V
    .locals 4
    .param p1, "drawOutlineShadowsEnabled"    # Z

    .prologue
    const/high16 v3, 0x40a00000    # 5.0f

    .line 212
    iput-boolean p1, p0, Lcom/androidplot/ui/LayoutManager;->drawOutlineShadowsEnabled:Z

    .line 213
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->outlineShadowPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/LayoutManager;->outlineShadowPaint:Landroid/graphics/Paint;

    .line 216
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->outlineShadowPaint:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->outlineShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 218
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->outlineShadowPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 220
    :cond_0
    return-void
.end method

.method public setDrawOutlinesEnabled(Z)V
    .locals 0
    .param p1, "drawOutlinesEnabled"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/androidplot/ui/LayoutManager;->drawOutlinesEnabled:Z

    .line 157
    return-void
.end method

.method public setDrawPaddingEnabled(Z)V
    .locals 0
    .param p1, "drawPaddingEnabled"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/androidplot/ui/LayoutManager;->drawPaddingEnabled:Z

    .line 197
    return-void
.end method

.method public setMarginPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "marginPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/androidplot/ui/LayoutManager;->marginPaint:Landroid/graphics/Paint;

    .line 189
    return-void
.end method

.method public setMarkupEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/LayoutManager;->setDrawOutlinesEnabled(Z)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/LayoutManager;->setDrawAnchorsEnabled(Z)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/LayoutManager;->setDrawMarginsEnabled(Z)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/LayoutManager;->setDrawPaddingEnabled(Z)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/LayoutManager;->setDrawOutlineShadowsEnabled(Z)V

    .line 78
    return-void
.end method

.method public setOutlinePaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "outlinePaint"    # Landroid/graphics/Paint;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/androidplot/ui/LayoutManager;->outlinePaint:Landroid/graphics/Paint;

    .line 165
    return-void
.end method

.method public setOutlineShadowPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "outlineShadowPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/androidplot/ui/LayoutManager;->outlineShadowPaint:Landroid/graphics/Paint;

    .line 228
    return-void
.end method

.method public setPaddingPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "paddingPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/androidplot/ui/LayoutManager;->paddingPaint:Landroid/graphics/Paint;

    .line 205
    return-void
.end method
